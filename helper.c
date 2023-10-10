#include <errno.h>
#include <stdlib.h>

extern int *__errno_location();
extern void *malloc(size_t size);

int *errno_helper() { return __errno_location(); }
void *malloc_helper(size_t size) { return malloc(size); }