#include <linux/init.h>
#include <linux/module.h>

static int __init kernelsu_stub_init(void)
{
	return 0;
}

static void __exit kernelsu_stub_exit(void)
{
}

module_init(kernelsu_stub_init);
module_exit(kernelsu_stub_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("KernelSU-Next integration stub");
