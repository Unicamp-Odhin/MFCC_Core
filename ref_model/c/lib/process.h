#ifndef __PROCESS_H__
#define __PROCESS_H__

#ifdef __cplusplus
extern "C" {
#endif

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

int ceil_div(int a, int b);
void generate_hamming_window(int32_t *window, int frame_size, int F);
void hamming_window_fixed(int32_t *frame, int32_t *window_q15, int frame_size, int F);
int32_t** frame_signal_int(int32_t *samples, int num_samples, int frame_size, int frame_step, int *out_num_frames);
void pre_emphasis(int16_t *samples, size_t sample_count, int16_t alpha, int32_t *samples_out);
void save_window_to_file(const char *filename, int32_t *window, int size);

#ifdef __cplusplus
}
#endif

#endif // __PROCESS_H__