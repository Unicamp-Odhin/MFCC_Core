#include "../lib/process.h"
#include <hip/hip_runtime.h>

__global__ void pre_emphasis_kernel(const int16_t *input, int16_t *output, int length, float alpha) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i > 0 && i < length) {
        output[i] = input[i] - alpha * input[i - 1];
    } else if (i == 0) {
        output[0] = input[0];
    }
}


void pre_emphasis(const int16_t *input, int16_t *output, size_t length) {
    int16_t *d_input, *d_output;
    hipMalloc(&d_input, length * sizeof(int16_t));
    hipMalloc(&d_output, length * sizeof(int16_t));

    hipMemcpy(d_input, input, length * sizeof(int16_t), hipMemcpyHostToDevice);

    int threads = 256;
    int blocks = (length + threads - 1) / threads;

    hipLaunchKernelGGL(pre_emphasis_kernel, dim3(blocks), dim3(threads), 0, 0, d_input, d_output, length, 0.97f);

    hipMemcpy(output, d_output, length * sizeof(int16_t), hipMemcpyDeviceToHost);

    hipFree(d_input);
    hipFree(d_output);
}

// // ------------------- Frame signal -------------------
// __global__ void frame_signal_kernel(const int16_t *samples, int num_samples,
//                                    int frame_size, int frame_step,
//                                    int32_t *frames, int num_frames) {
//     int frame_idx = hipBlockIdx_x * hipBlockDim_x + hipThreadIdx_x;

//     if (frame_idx < num_frames) {
//         int frame_start = frame_idx * frame_step;
//         for (int j = 0; j < frame_size; j++) {
//             int sample_index = frame_start + j;
//             if (sample_index < num_samples) {
//                 frames[frame_idx * frame_size + j] = (int32_t)samples[sample_index];
//             } else {
//                 frames[frame_idx * frame_size + j] = 0;  // Zero padding
//             }
//         }
//     }
// }