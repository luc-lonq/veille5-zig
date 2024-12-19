#include <stdlib.h>

int* create_array(int n) {
    int* array = (int*)malloc(n * sizeof(int));
    for (int i = 0; i < n; i++) {
        array[i] = i * i;
    }
    return array;
}

void free_array(int* array) {
    free(array);
}