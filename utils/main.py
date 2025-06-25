import numpy as np
import librosa
import matplotlib.pyplot as plt
from scipy.fftpack import dct

##################################################################
# First step: load the audio file and visualize the waveform

# Load the audio file
# audio_path = librosa.example('trumpet')
audio_path = 'samples/dump.wav'  # Replace with your audio file path
y, sr = librosa.load(audio_path) # sr is the sampling rate

# Plot the waveform
plt.figure(figsize=(14, 5))
plt.plot(y)
plt.title('Waveform of the Audio Signal')
plt.xlabel('Time')
plt.ylabel('Amplitude')
plt.show()


######################################################################
# Second step: pre-emphasize the signal to boost high frequencies

# Apply pre-emphasis filter
pre_emphasis = 0.97
y_preemphasized = np.append(y[0], y[1:] - pre_emphasis * y[:-1]) # Y[n] = X[n] - pre_emphasis * X[n-1] 

# Plot the pre-emphasized signal
plt.figure(figsize=(14, 5))
plt.plot(y_preemphasized)
plt.title('Pre-emphasized Signal')
plt.xlabel('Time')
plt.ylabel('Amplitude')
plt.show()

######################################################################
# Third step: frame the signal into overlapping segments

frame_size = 0.025  # 25 ms
frame_stride = 0.01  # 10 ms - overlap of 15 ms
frame_length, frame_step = frame_size * sr, frame_stride * sr  # Convert from seconds to samples
signal_length = len(y_preemphasized)
frame_length = int(round(frame_length))
print(f"Frame length in samples: {frame_length}, sr: {sr}")
frame_step = int(round(frame_step))
num_frames = int(np.ceil(float(np.abs(signal_length - frame_length)) / frame_step))

# Pad signal to ensure all frames have equal number of samples
pad_signal_length = num_frames * frame_step + frame_length
z = np.zeros((pad_signal_length - signal_length))
pad_signal = np.append(y_preemphasized, z)

# Slice the signal into frames
indices = np.tile(np.arange(0, frame_length), (num_frames, 1)) + np.tile(np.arange(0, num_frames * frame_step, frame_step), (frame_length, 1)).T
frames = pad_signal[indices.astype(np.int32, copy=False)]

# Plot a few frames
plt.figure(figsize=(14, 5))
plt.plot(frames[0])
plt.title('First Frame of the Signal')
plt.xlabel('Samples')
plt.ylabel('Amplitude')
plt.show()

#######################################################################
# Fourth step: apply a window function to each frame

# Apply Hamming window
frames *= np.hamming(frame_length)

# Plot the first frame after windowing
plt.figure(figsize=(14, 5))
plt.plot(frames[0])
plt.title('First Frame after Windowing')
plt.xlabel('Samples')
plt.ylabel('Amplitude')
plt.show()

#######################################################################
# Fifth step: compute the magnitude spectrum of each frame

NFFT = 512
mag_frames = np.absolute(np.fft.rfft(frames, NFFT))  # Magnitude of the FFT
pow_frames = ((1.0 / NFFT) * ((mag_frames) ** 2))  # Power Spectrum

# Plot the magnitude spectrum of the first frame
plt.figure(figsize=(14, 5))
plt.plot(mag_frames[0])
plt.title('Magnitude Spectrum of the First Frame')
plt.xlabel('Frequency Bin')
plt.ylabel('Amplitude')
plt.show()

#######################################################################
# Sixth step: apply the Mel filter bank to the power spectrum

nfilt = 40
low_freq_mel = 0
high_freq_mel = 2595 * np.log10(1 + (sr / 2) / 700)  # Convert Hz to Mel
mel_points = np.linspace(low_freq_mel, high_freq_mel, nfilt + 2)  # Equally spaced in Mel scale
hz_points = 700 * (10 ** (mel_points / 2595) - 1)  # Convert Mel to Hz
bin = np.floor((NFFT + 1) * hz_points / sr)

fbank = np.zeros((nfilt, int(np.floor(NFFT / 2 + 1))))
for m in range(1, nfilt + 1):
    f_m_minus = int(bin[m - 1])   # left
    f_m = int(bin[m])             # center
    f_m_plus = int(bin[m + 1])    # right

    for k in range(f_m_minus, f_m):
        fbank[m - 1, k] = (k - bin[m - 1]) / (bin[m] - bin[m - 1])
    for k in range(f_m, f_m_plus):
        fbank[m - 1, k] = (bin[m + 1] - k) / (bin[m + 1] - bin[m])

filter_banks = np.dot(pow_frames, fbank.T)
filter_banks = np.where(filter_banks == 0, np.finfo(float).eps, filter_banks)  # Numerical stability
filter_banks = 20 * np.log10(filter_banks)  # dB

# Plot the filter bank energies
plt.figure(figsize=(14, 5))
plt.imshow(filter_banks.T, cmap='hot', aspect='auto')
plt.title('Filter Bank Energies')
plt.xlabel('Frame Index')
plt.ylabel('Filter Index')
plt.show()

#######################################################################
# Seventh step: compute the MFCCs from the filter bank energies
# Compute the Discrete Cosine Transform (DCT)

num_ceps = 12
mfcc = dct(filter_banks, type=2, axis=1, norm='ortho')[:, :num_ceps]

# Plot the MFCCs
plt.figure(figsize=(14, 5))
plt.imshow(mfcc.T, cmap='hot', aspect='auto')
plt.title('MFCC')
plt.xlabel('Frame Index')
plt.ylabel('Cepstral Coefficient Index')
plt.show()