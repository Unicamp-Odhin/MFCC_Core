    __global__ void pre_emphasis(int16_t *samples, size_t sample_count, int16_t alpha) {
        if (threadIdx.x == 0 && blockIdx.x == 0) {
            int32_t temp;
            for (size_t i = sample_count - 1; i > 0; i--) {
                temp = (alpha * samples[i - 1]) >> 15;  // Q15
                samples[i] = samples[i] - temp;
            }
        }
    }