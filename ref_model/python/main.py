from math import log2
import numpy as np
import librosa
import wave
import matplotlib.pyplot as plt
from scipy.fftpack import dct
import sys
import os
import struct

# Define macros
FRAME_SIZE = 0.025  # seconds
FRAME_STEP = 0.01  # seconds
ALPHA = 31785
PRE_EMPHASIS = 0.97
NFFT = 512
NFILT = 40
NUM_CEPS = 12


def dump_buffer_to_hex_16(file_name, buffer):
    os.makedirs(os.path.dirname(file_name), exist_ok=True)
    
    with open(file_name, 'w') as fp:
        for value in buffer:
            int_value = int(value)
            hex_str = f"{int_value & 0xFFFFFFFF:08x}"
            fp.write(f"{hex_str}\n")

def dump_buffer_to_hex_32(file_name, buffer):
    os.makedirs(os.path.dirname(file_name), exist_ok=True)
    
    with open(file_name, 'w') as fp:
        for value in buffer:
            int_value = int(value) & 0xFFFF  
            hex_str = f"{int_value:04x}"
            fp.write(f"{hex_str}\n")

def dump_buffer_to_hex_float(filename, buffer):
    with open(filename, 'w') as f:
        for i, value in enumerate(buffer):
            hex_value = struct.pack('f', value).hex()
            
            if i == len(buffer) - 1:
                f.write(f"{hex_value}")
            else:
                f.write(f"{hex_value}\n")
            

def print_samples(samples, num_samples):
    for i in range(min(num_samples, len(samples))):
        print(f"Sample[{i}]: {int(samples[i])}")

def load_audio(audio_path):
    """Step 1: Load the audio file and visualize the waveform"""
    with wave.open(audio_path, 'rb') as wav_file:
        sample_rate = wav_file.getframerate()
        n_frames = wav_file.getnframes()
        y = np.frombuffer(wav_file.readframes(n_frames), dtype=np.int16)
    
    frame_size = int(sample_rate * FRAME_SIZE) + 1
    frame_step = int(sample_rate * FRAME_STEP)
    num_samples = len(y)
    num_frames = (num_samples - frame_size + frame_step - 1) // frame_step + 1

    # Print audio and frame information
    print(f"Número total de frames: {num_frames}")
    print(f"Sample rate: {sample_rate} Hz")
    print(f"Frame size: {frame_size} samples")
    print(f"Frame step: {frame_step} samples")
    print(f"Number of samples: {len(y)}")
    print(f"Number of frames: {num_frames}")
    print("First 20 samples in sequence: ", end="")
    for i in range(20):
        print(int(y[i]), end=" ")
    print()
    
    return y, sample_rate, frame_size, frame_step

def plot_waveform(y, output_dir, audio_name):
    """Plot and save the waveform"""
    plt.figure(figsize=(14, 5))
    plt.plot(y)
    plt.title('Waveform of the Audio Signal')
    plt.xlabel('Time')
    plt.ylabel('Amplitude')
    output_file = os.path.join(output_dir, f"{audio_name}_waveform.png")
    plt.savefig(output_file)
    plt.show()

def pre_emphasis(y, pre_emphasis=PRE_EMPHASIS):
    """Step 2: Apply pre-emphasis filter to boost high frequencies"""
    y_preemphasized = np.append(y[0], y[1:] - pre_emphasis * y[:-1])
    return y_preemphasized

def plot_pre_emphasized(y_preemphasized, output_dir, audio_name):
    """Plot and save the pre-emphasized signal"""
    plt.figure(figsize=(14, 5))
    plt.plot(y_preemphasized)
    plt.title('Pre-emphasized Signal')
    plt.xlabel('Time')
    plt.ylabel('Amplitude')
    output_file = os.path.join(output_dir, f"{audio_name}_pre_emphasized.png")
    plt.savefig(output_file)
    plt.show()

def frame_signal(y_preemphasized, sample_rate, frame_size, frame_step):
    """Step 3: Frame the signal into overlapping segments"""
    signal_length = len(y_preemphasized)

    # Coloque esses "+1" por questão de arredondamento e assim fica igual ao C
    frame_length = int(round(frame_size * sample_rate)) + 1 
    frame_step = int(round(frame_step * sample_rate)) + 1
    num_frames = int(np.ceil(float(np.abs(signal_length - frame_length)) / frame_step)) + 1
    
    # Pad signal to ensure all frames have equal number of samples
    pad_signal_length = num_frames * frame_step + frame_length
    z = np.zeros((pad_signal_length - signal_length))
    pad_signal = np.append(y_preemphasized, z)
    
    # Slice the signal into frames
    indices = (np.tile(np.arange(0, frame_length), (num_frames, 1)) + 
              np.tile(np.arange(0, num_frames * frame_step, frame_step), (frame_length, 1)).T)
    frames = pad_signal[indices.astype(np.int32, copy=False)]
    return frames, frame_length

def plot_frames(frames, output_dir, audio_name):
    """Plot and save sample frames"""
    plt.figure(figsize=(14, 5))
    plt.plot(frames[0])
    plt.title('First Frame of the Signal')
    plt.xlabel('Samples')
    plt.ylabel('Amplitude')
    output_file = os.path.join(output_dir, f"{audio_name}_few_frames.png")
    plt.savefig(output_file)
    plt.show()

def apply_window(frames, frame_length):
    """Step 4: Apply a window function to each frame"""
    frames *= np.hamming(frame_length)
    return frames

def plot_windowed_frame(frames, output_dir, audio_name):
    """Plot and save windowed frame"""
    plt.figure(figsize=(14, 5))
    plt.plot(frames[0])
    plt.title('First Frame after Windowing')
    plt.xlabel('Samples')
    plt.ylabel('Amplitude')
    output_file = os.path.join(output_dir, f"{audio_name}_first_frame_windowed.png")
    plt.savefig(output_file)
    plt.show()

def compute_spectrum(frames, NFFT=NFFT):
    """Step 5: Compute the magnitude spectrum of each frame"""
    fft_frames = np.fft.rfft(frames, NFFT)
    mag_frames = np.absolute(fft_frames)
    pow_frames = np.zeros_like(mag_frames)
    for i in range(len(mag_frames)):
        pow_frames[i] = (mag_frames[i] ** 2) / NFFT

    return mag_frames, pow_frames

def plot_spectrum(mag_frames, output_dir, audio_name):
    """Plot and save magnitude spectrum"""
    plt.figure(figsize=(14, 5))
    plt.plot(mag_frames[0])
    plt.title('Magnitude Spectrum of the First Frame')
    plt.xlabel('Frequency Bin')
    plt.ylabel('Amplitude')
    output_file = os.path.join(output_dir, f"{audio_name}_magnitude_spectrum.png")
    plt.savefig(output_file)
    plt.show()

def apply_mel_filterbank(pow_frames, sample_rate, NFFT=NFFT, nfilt=NFILT):
    """Step 6: Apply the Mel filter bank to the power spectrum"""
    low_freq_mel = 0
    high_freq_mel = 2595 * np.log10(1 + (sample_rate / 2) / 700)
    mel_points = np.linspace(low_freq_mel, high_freq_mel, nfilt + 2)
    hz_points = 700 * (10 ** (mel_points / 2595) - 1)
    bin = np.floor((NFFT + 1) * hz_points / sample_rate)

    fbank = np.zeros((nfilt, int(np.floor(NFFT / 2 + 1))))
    for m in range(1, nfilt + 1):
        f_m_minus = int(bin[m - 1])
        f_m = int(bin[m])
        f_m_plus = int(bin[m + 1])

        for k in range(f_m_minus, f_m):
            fbank[m - 1, k] = (k - bin[m - 1]) / (bin[m] - bin[m - 1])
        for k in range(f_m, f_m_plus):
            fbank[m - 1, k] = (bin[m + 1] - k) / (bin[m + 1] - bin[m])

    filter_banks = np.dot(pow_frames, fbank.T)
    filter_banks = np.where(filter_banks <= 0, np.finfo(float).eps, filter_banks)
    filter_banks = 20 * np.log10(filter_banks)
    return filter_banks

def save_and_plot_filterbanks(filter_banks, output_dir, audio_name):
    """Save and plot filter bank energies"""
    # Save to file
    spectrogram_file = os.path.join("data/spectrogram_matrix_py.dat")
    with open(spectrogram_file, "w") as fp3:
        for frame in filter_banks:
            fp3.write(" ".join(map(str, frame)) + "\n")
    
    # Plot
    plt.figure(figsize=(14, 5))
    plt.imshow(filter_banks.T, cmap='hot', aspect='auto')
    plt.title('Filter Bank Energies')
    plt.xlabel('Frame Index')
    plt.ylabel('Filter Index')
    plt.colorbar(label='Energia (log)')
    output_file = os.path.join(output_dir, f"{audio_name}_filter_bank_energies.png")
    plt.savefig(output_file)
    plt.show()

def compute_mfcc(filter_banks, num_ceps=NUM_CEPS):
    """Step 7: Compute MFCCs from filter bank energies"""
    mfcc = dct(filter_banks, type=2, axis=1, norm='ortho')[:, :num_ceps]
    return mfcc

def plot_mfcc(mfcc, output_dir, audio_name):
    """Plot and save MFCCs"""
    plt.figure(figsize=(14, 5))
    plt.imshow(mfcc.T, cmap='hot', aspect='auto')
    plt.title('MFCC')
    plt.xlabel('Frame Index')
    plt.ylabel('Cepstral Coefficient Index')
    output_file = os.path.join(output_dir, f"{audio_name}_mfcc.png")
    plt.savefig(output_file)
    plt.show()
def main():
    if len(sys.argv) < 2:
        print("Usage: python main.py <audio_file_path>")
        sys.exit(1)

    LOG = True
    PLOT = False

    output_dir = "dumps/"
    os.makedirs(output_dir, exist_ok=True)
    audio_path = sys.argv[1]
    audio_name = os.path.splitext(os.path.basename(audio_path))[0]

    # Step 1: Load audio
    y, sample_rate, frame_size, frame_step = load_audio(audio_path)
    if PLOT:
        plot_waveform(y, output_dir, audio_name)

    # Step 2: Pre-emphasis
    y_preemphasized = pre_emphasis(y)
    if PLOT:
        plot_pre_emphasized(y_preemphasized, output_dir, audio_name)
    if LOG:
        file_name = "dumps/1_pre_emphasis.hex"
        dump_buffer_to_hex_16(file_name, y_preemphasized)

    # Step 3: Frame the signal
    frames, frame_length = frame_signal(y_preemphasized, sample_rate, FRAME_SIZE, FRAME_STEP)
    if PLOT:
        plot_frames(frames, output_dir, audio_name)
    if LOG:
        os.makedirs("dumps/2_frames", exist_ok=True)
        for i in range(len(frames)):
            file_name = f"dumps/2_frames/{i:04d}.hex"
            dump_buffer_to_hex_32(file_name, frames[i])
    

    # Step 4: Apply window function
    frames = apply_window(frames, frame_length)
    if PLOT:
        plot_windowed_frame(frames, output_dir, audio_name)

    # Step 5: Compute spectrum
    mag_frames, pow_frames = compute_spectrum(frames)
    if PLOT:
        plot_spectrum(mag_frames, output_dir, audio_name)
    if LOG:
        os.makedirs("dumps/3_hamming_frames", exist_ok=True)
        for i in range(len(frames)):
            file_name = f"dumps/3_hamming_frames/{i:04d}.hex"
            dump_buffer_to_hex_32(file_name, mag_frames[i])

    # Step 6: Apply Mel filterbank
    filter_banks = apply_mel_filterbank(pow_frames, sample_rate)
    if PLOT:
        save_and_plot_filterbanks(filter_banks, output_dir, audio_name)
    
    if LOG:
        os.makedirs("dumps/4_energies", exist_ok=True)
        for i in range(len(filter_banks)):
            file_name = f"dumps/4_energies/{i:04d}.hex"
            dump_buffer_to_hex_float(file_name, filter_banks[i])
        
        with open("dumps/5_spectrogram_matrix.dat", "w") as fp_spec:
            for frame in filter_banks:
                fp_spec.write(" ".join(f"{value}" for value in frame))
                fp_spec.write("\n")

    # Step 7: Compute MFCCs
    mfcc = compute_mfcc(filter_banks)
    if PLOT:
        plot_mfcc(mfcc, output_dir, audio_name)

    os.makedirs("dumps/6_ceps", exist_ok=True)
    for i, frame in enumerate(mfcc):
        frame_file = os.path.join("dumps/6_ceps", f"{i:04d}.hex")
        with open(frame_file, "w") as fp:
            fp.write("\n".join(f"{value / 32768.0}" for value in frame))
    
    if LOG:
        with open("dumps/7_ceps_matrix.dat", "w") as fp_ceps:
            for frame in mfcc:
                fp_ceps.write(" ".join(f"{value:.6f}" for value in frame))
                fp_ceps.write("\n")

if __name__ == "__main__":
    main()