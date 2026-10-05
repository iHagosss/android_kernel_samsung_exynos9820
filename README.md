## Build instructions

1. Clone the repo and fetch submodules:

```bash
git clone https://github.com/iHagosss/android_kernel_samsung_exynos9820.git
cd android_kernel_samsung_exynos9820
git submodule update --init --recursive
git checkout main
```

2. Build for the Galaxy S10+ beyond2lte with KernelSU-Next dev enabled:

```bash
./build.sh -m beyond2lte -k y
```

3. If you need to build a recovery image instead:

```bash
./build.sh -m beyond2lte -r y
```

4. The generated flashable zip will be written under `build/out/beyond2lte/`.

5. Flash the generated zip via TWRP or Odin-compatible recovery flow.

6. KernelSU-Next is configured via the `KernelSU-Next` submodule and the `arch/arm64/configs/ksu.config` config fragment. The repo currently tracks the `dev` branch of `KernelSU-Next/KernelSU-Next` for compatibility with the latest kernel-side implementation.

### Notes

- This repo is optimized for the Samsung Exynos 9820 family, including the `beyond2lte` model.
- The charging and USB tuning work is device-specific and should be tested on hardware with logs from `dmesg` and `/sys/class/power_supply/*`.
- Always keep a known-good backup kernel on your SD card or device storage before flashing a kernel with root or charge-policy changes.

Linux kernel
============

This file was moved to Documentation/admin-guide/README.rst

Please notice that there are several guides for kernel developers and users.
These guides can be rendered in a number of formats, like HTML and PDF.

In order to build the documentation, use `make htmldocs` or `make pdfdocs`.

There are various text files in the Documentation/ subdirectory,
several of them using the Restructured Text markup notation.
See Documentation/00-INDEX for a list of what is contained in each file.

Please read the Documentation/process/changes.rst file, as it contains the
requirements for building and running the kernel, and information about the
problems which may result by upgrading your kernel.
