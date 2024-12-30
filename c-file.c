#include <stdio.h>
void countZeros(int arr[], int size) {
    int count = 0; 
    for (int i = 0; i < size; i++) { 
        if (arr[i] == 0) {
            count++;
        }
    }
    printf("Total zero in the array: %d\n", count);
}
int main() {
    int array[]={3,5,0,6,0};
    int size = sizeof(array) / sizeof(array[0]);
    countZeros(array, size);
    totalzero();
    return 0; 
}
