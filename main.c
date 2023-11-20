#include "libasm.h"

int	main(void)
{
	char src[] = "Hello World!";
	char *test;

	test = ft_strdup(src);
	printf("ft_strdup: %s\n", test);
	free(test);
	return (0);
}
