# KernelSU-Next integration placeholder

This directory is a copy of KernelSU-Next kernel integration stubs. It contains Kbuild and Kconfig scaffolding copied from KernelSU-Next to allow building KernelSU-Next as part of this kernel tree.

Next steps (automated in follow-up commits):
- Add actual KernelSU-Next kernel source files (core/, hook/, infra/, manager/, policy/, runtime/, selinux/, sulog/, supercall/, feature/, etc.) under kernel/kernelsu-next/
- Merge/adjust necessary headers and include paths so the Android kernel's build system compiles KernelSU-Next code as built-in or module depending on CONFIG_KSU
- Ensure .gitmodules or submodule linkage points to https://github.com/KernelSU-Next/KernelSU-Next on branch 'dev' or 'legacy' as appropriate
- Integrate KernelSU-Next manager signature hashes and manager pkg information into Kbuild Kconfig as needed

Note: This commit provides initial scaffolding only. Full KernelSU-Next source files will be merged in the next commits.
