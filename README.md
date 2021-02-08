# 从[原网址](https://github.com/jinhaozcp/Hackintosh-Ryzen-MSI-B450-Gaming-Pro-carbon-ac) 修改而来

## Hackintosh-AMD-Catalina10.15.7
### ASUS-TUF-B450M-PLUS-GAMING
- Macos: 10.15.7 (19H15)/11.2
- OC: 0.6.7 (shown from Hackintool)
- CPU: AMD Ryzen 7 3700X 8-Core 八核
- MotherBoard: ASUS-TUF-B450M-PLUS-GAMING
- Memory: 8GB*2 (TEAMGROUP-UD4-3200)
- SSD: PLEXTOR PX-128M6S 128G
- GPU: Radeon RX 5700 白金 蓝宝石
- AUDIO CHIPSET: Default
- LAN CHIPSET: Realtek 8111H
- WIFI: [AX210](https://ark.intel.com/content/www/cn/zh/ark/products/204836/intel-wi-fi-6e-ax210-gig.html?wapkw=ax210) 没有对应的驱动
- Bluetooth: [AX210](https://ark.intel.com/content/www/cn/zh/ark/products/204836/intel-wi-fi-6e-ax210-gig.html?wapkw=ax210) 使用了通用驱动

<br>

Tutorial
---
- [pencore 中文网](https://oc.skk.moe/kextlist.html) kext 兼容性检查
- [opencore offical guide line](https://dortania.github.io/OpenCore-Install-Guide/) 官方网站，按着步骤做就行
- [mirrors](https://mirrors.dtops.cc/iso/MacOS/daliansky_macos/)  下载链接 
- [安装教程](https://www.cnblogs.com/yucloud/p/opencore.html)
- [升级opencore 教程 大头蔡Cass](https://www.bilibili.com/video/BV11i4y1L7Mn?t=101)
- [官方修复睡眠问题](https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html)
- [官方制作USBMap](https://dortania.github.io/OpenCore-Post-Install/usb/#macos-and-the-15-port-limit)
- [民间大佬制作USBMap，来自tonymacx86](https://www.tonymacx86.com/threads/the-new-beginners-guide-to-usb-port-configuration.286553/)

<br>

Setup Toolkit
---
- <u>***https://opencore.slowgeek.com/ 一定要使用这个网站来校验config文件***</u>
- [ocbuilder](https://github.com/Pavo-IM/ocbuilder/) ocbuilder 安装包，用于升级oc 版本，需要预先安装xcode才能使用
- [kext update ](https://bitbucket.org/profdrluigi/kextupdater/downloads/) 主要用来检测config 是否报错，貌似不能自动安装更新，只能帮你下载。自带的修复睡眠功能感觉没效果
- [qt opencore](https://github.com/ic005k/QtOpenCoreConfig/releases) 用来更新 kext 、 acpi 、 drivers 、tools
- [opencore configurator](https://mackie100projects.altervista.org/)  opencore configurator 安装包，用于配置config.list 文件，我觉得不好用

- [ProperTree](https://github.com/corpnewt/ProperTree)  用于编辑.plist   文件，mac和win 都可以使用，我觉得不好用
- [IORegistryExplorer.app](https://github.com/khronokernel/IORegistryClone/blob/master/ioreg-210.zip) [轻松查看macOS的内部运行情况](https://dortania.github.io/OpenCore-Post-Install/usb/manual/manual.html#usb-mapping-the-manual-way)

实用工具
---
- [SteelSeries ExactMouse Tool ](https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg) 去除鼠标加速度
- [lghub ](https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.zip)鼠标驱动
- [Hackintool](https://github.com/headkaze/Hackintool/releases) 工具，检测设备的各项数据
- [katsurashareware](https://www.katsurashareware.com/amorphousdiskmark/) 磁盘测速软件
- [Homebrew](https://brew.sh/index_zh-cn) macOS（或 Linux）缺失的软件包的管理器，[安装卸载教程](https://github.com/Homebrew/install),遇到报错就重新卸载重装
- [MonitorControl](https://github.com/MonitorControl/MonitorControl) 外置显示器 亮度、音量等管理(基于[Homebrew](https://brew.sh/index_zh-cn) 安装) 太强了
- [ShiftIt](https://github.com/fikovnik/ShiftIt) 分屏软件
- [istatmenus](https://bjango.com/mac/istatmenus/) An advanced Mac System monitor for your menubar
- [paste](https://medium.com/pasteapp) 拷贝的历史记录，比windows 的功能全面
- The Unarchive 解压缩工具
- Alfred 搜索 
- iRightMouse 超级右键
- Rectangle 分屏软件

<br>

Issues
---
|  Problems/问题   | Solution/解决方法  | According to/来源
|  ----  | ----  | --- |
| can't No schema for BlacklistAppleupdate at 3 Index  | \<key>BlacklistAppleUpdate</key>\<true/> (也可能是\<false/>) | http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1861748
| Load image failed – Security | Misc-Security-securebootmodel - disabled | https://macx.top/15131.html 
| macos去除鼠标加速度 | https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg | https://www.v2ex.com/t/389853
| stuck on 'usr\\standalone\\OS.dmg.root_hash'| 使用 [上面的校验网站](https://opencore.slowgeek.com/) 查找是否存在错误信息| https://www.tonymacx86.com/threads/big-sur-installer-error-in-opening-usr-standalone-os-dmg-root_hash.306845/
| 无法调整显示器的输出声音 | [MonitorControl](https://github.com/MonitorControl/MonitorControl) | https://www.v2ex.com/t/671686
| brew 安装报错 No available formula with the name  | 1. rm -rf /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core <br> 2.brew update| online 
| 没有权限打开应用 | --- | ---
| kernel: (AppleACPIPlatform) AppleACPIPlatformPower Wake reason: GPP1 GPP3 GPP4 GPP5 GPP6 GPP7 GPP9 X162 GPPA GPPB GPPC GPPD GPPE GPPF GP10 GP11 PX11 | 因为没有在网上找到任何关于这个的答案，并且尝试过了USBMap，也没有任何效果，在我看来，这并不是USB导致的唤醒，相反这些设备我都无法在ioRegistoryExplorer 找到.<br>尝试通过maciAsl.app - file - open - DSDT，打开后搜索相应的设备(eg:GPP1),将这些设备引用的地方都删除，重新编译成.aml文件并将其倒入到OC的ACPI文件夹中，并在config.plist中添加相应参数,注意即使是注释代码，生成的dsdt就看不到这些代码了。<br>当我第一次删除并重启后，发现还是秒醒，查看日志Wake reason: GPP0 GPP8 X161 GPP2 X4_0 PTXH (Network)，再通过 ioRegistoryExplorer 查找，发现PTXH这个设备编号下有很多设备，都被标记为红色字体，于是我再次从DSDT中删除该设备的所有参数，重启后一切都正常了。<br>睡眠后，鼠标可以点亮但是无法唤醒，应该是因为我删除了这些设备的原因，但是还是可以通过电源键唤醒的，做到这一步也很难了，不想再折腾了，能正常睡眠就行了。 | 原创
| oc引导选择macos为默认系统 | 进入macos系统从磁盘启动macos即可 | --- 
| --- | --- | ---

<br>

Command
---
>允许安装任意来源

    sudo spctl --master-disable

> 输出日志文件到桌面 

    log show --predicate 'process == "kernel"' --debug --last 10m > ~/Desktop/kernel.log  

> 挂载EFI分区 

    diskutil list 
    sudo diskutil mount disk3s1

> [显示器音量控制 homebrew](https://github.com/Homebrew/homebrew-cask)
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install --cask monitorcontrol

<br>

Operation
---
- shift + alt + k 输入 
- command + shift + 3 截图
- command + shift + 4 区域截图
- command + shift + 4 + space 窗口截图
- command + t 在文件夹中打开新的标签页,比windows的好看

<br>

Issues
---
1. **节能不能设置睡眠时间**
1. ~~**睡眠后会立即启动，唤醒后蓝牙无法使用，应该是USB 映射的问题**~~
1. 由于通过修改DSDT 来修复睡眠秒醒的问题，请勿使用System-DSDT.aml,后续可能会产生很多其他的问题，毕竟删除了很多没用到的设备
1. 蓝牙已经无法使用了，应该是后面删了很多kext，导致一开始能用的蓝牙不支持了，不过不在乎了
1. 等待 ax210 驱动的支持 [itlwm](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1848662)

<br>

### 后记
+  **当前开启了debug 模式，删除-v即可关闭**
+ ~~**不要使用这个配置升级big sur，会在  自动重启**~~
+ 我只是把我这几天用到的工具、网址、问题 总结了一下，有几个drive可以删除但是并没有这么做，先放着了，这个配置也可能不通用，酌情参考。
+ 所有的kext 和驱动 应该都是当前(2/4/2021)最新的release 版本，毕竟是通过ocbuilder 自动编译的最新代码
+ 目前已升级到 Big Sur 11.2
    > 注意
    > 1. 第一次重启会卡在进度条很久，但是进度还是在走的，之后就没有install 选项了，会直接进入系统
    > 2. 如果之前更新过11.2版本，但是失败了，请再重新安装一次更新，否则会失败，亲身经历，重新安装一次更新就好了

![photo](https://github.com/SandiTT/Hackintosh-3700X-5700-B450M-Catalina-10.15.7/blob/OC-0.6.7/photo/catalina.png)

![photo](https://github.com/SandiTT/Hackintosh-3700X-5700-B450M-Catalina-10.15.7/blob/OC-0.6.7/photo/big%20sur.png)

+ + + + 
