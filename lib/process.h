#ifndef __PROCESS_H__
#define __PROCESS_H__

#define M_PI 3.14159265358979323846

int ceil_div(int a, int b);
void hamming_window(int16_t *frame, int frame_size);
int16_t** frame_signal_int(const int16_t *samples, int num_samples, int frame_size, int frame_step, int *out_num_frames);
void pre_emphasis(int16_t *samples, size_t sample_count, float alpha);

#endif // __PROCESS_H__