1| **English** | [简体中文](README_CN.md) | [繁體中文](README_TW.md) | [Türkçe](README_TR.md) | [Português (Brasil)](README_PT-BR.md) | [한국어](README_KO.md) | [Français](README_FR.md)[...]
2| 
3| ---
4| 
5| <div align="center">
6|   <img src="/assets/kernelsu_next.png" width="96" alt="KernelSU Next Logo">
7| 
8|   <h2>KernelSU Next</h2>
9|   <p><strong>A kernel-based root solution for Android devices.</strong></p>
10| 
11|   <p>
12|     <a href="https://github.com/KernelSU-Next/KernelSU-Next/releases/latest">
13|       <img src="https://img.shields.io/github/v/release/KernelSU-Next/KernelSU-Next?label=Release&logo=github" alt="Latest Release">
14|     </a>
15|     <a href="https://nightly.link/KernelSU-Next/KernelSU-Next/workflows/build-manager-ci/next/Manager">
16|       <img src="https://img.shields.io/badge/Nightly%20Release-gray?logo=hackthebox&logoColor=fff" alt="Nightly Build">
17|     </a>
18|     <a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html">
19|       <img src="https://img.shields.io/badge/License-GPL%20v2-orange.svg?logo=gnu" alt="License: GPL v2">
20|     </a>
21|     <a href="/LICENSE">
22|       <img src="https://img.shields.io/github/license/KernelSU-Next/KernelSU-Next?logo=gnu" alt="GitHub License">
23|     </a>
24|     <a title="Crowdin" target="_blank" href="https://crowdin.com/project/kernelsu-next"><img src="https://badges.crowdin.net/kernelsu-next/localized.svg"></a>
25|   </p>
26| </div>
27| 
28| ---
29| 
30| ## 🚀 Features
31| 
32| - Kernel-based `su` and root access management.
33| - Module system based on [Magic Mount](https://topjohnwu.github.io/Magisk/details.html#magic-mount) and [OverlayFS](https://en.wikipedia.org/wiki/OverlayFS).
34| - [App Profile](https://kernelsu.org/guide/app-profile.html): Limit root privileges per app.
35| 
36| ---
37| 
38| ## ✅ Compatibility
39| 
40| KernelSU Next supports Android kernels from **4.4 up to 6.12**.
41| 
42| | Kernel version       | Support notes                                                           |
43| |----------------------|-------------------------------------------------------------------------|
44| | 5.10+ (GKI 2.0)      | Supports pre-built images and LKM/KMI                                   |
45| | 4.19 – 5.4 (GKI 1.0) | Requires KernelSU driver built-in                                       |
46| | < 4.14 (EOL)         | Requires KernelSU driver (3.18+ is experimental and may need backports) |
47| 
48| **Supported architectures:** `arm64-v8a`, `armeabi-v7a` and `x86_64`
49| 
50| > [!CAUTION]
51| > Recent kernel versions have implemented a breaking change causing KernelSU Next to fail and potentially trigger a kernel panic on `x86_64`! Check the website for more info!
51| 
52| ---
53| 
54| ## 📦 Installation
55| 
56| Please refer to the [Installation](https://kernelsu-next.github.io/webpage/pages/installation.html) guide for setup instructions.
57| 
58| ---
59| 
60| ## 🏅 Contribution
61| 
62| - Go to our [Crowdin](https://crowdin.com/project/kernelsu-next) to submit a translation for the manager!
63| - To report security issues, please see [SECURITY.md](/SECURITY.md).
64| 
65| ---
66| 
67| ## 📜 License
68| 
69| - **`/kernel` directory:** [GPL-2.0-only](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html).
70| - **All other files:** [GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.html).
71| 
72| ---
73| 
74| ## 💸 Donations
75| 
76| If you'd like to support the project:
77| 
78| - **USDT (BEP20, ERC20)**: `0x0b269716dc00692676e4217e23c7f67abd5f0f3e`
79| - **USDT (TRC20)**: `TXu6VX8dvJLQPx4WBobjbYT5tefHTDikWo`
80| - **LTC**: `LMYRqRXPKAFpYncBhNS44W1iwFit14LH1u`
81| 
82| ---
83| 
84| ## 🙏 Credits
85| 
86| - [Kernel-Assisted Superuser](https://git.zx2c4.com/kernel-assisted-superuser/about/) – Concept inspiration
87| - [Magisk](https://github.com/topjohnwu/Magisk) – Core root implementation
88| - [Genuine](https://github.com/brevent/genuine/) – APK v2 signature validation
89| - [Diamorphine](https://github.com/m0nad/Diamorphine) – Rootkit techniques
90| - [KernelSU](https://github.com/tiann/KernelSU) – The original base that made KernelSU Next possible
91| - [Magic Mount Port](https://github.com/5ec1cff/KernelSU/blob/main/userspace/ksud/src/magic_mount.rs) – For Magic Mount support
