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
|  问题   | 解决方法  | 来源
|  ----  | ----  | --- |
| can't No schema for BlacklistAppleupdate at 3 Index  | \<key>BlacklistAppleUpdate</key>\<true/> (也可能是\<false/>) | http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1861748
| Load image failed – Security | Misc-Security-securebootmodel - disabled | https://macx.top/15131.html 
| macos去除鼠标加速度 | https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg | https://www.v2ex.com/t/389853
| stuck on 'usr\\standalone\\OS.dmg.root_hash'| 使用 [上面的校验网站](https://opencore.slowgeek.com/) 查找是否存在错误信息| https://www.tonymacx86.com/threads/big-sur-installer-error-in-opening-usr-standalone-os-dmg-root_hash.306845/
| 无法调整显示器的输出声音 | [MonitorControl](https://github.com/MonitorControl/MonitorControl) | https://www.v2ex.com/t/671686
| brew 安装报错 No available formula with the name  | 1. rm -rf /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core <br> 2.brew update| online 
| 没有权限打开应用 | --- | ---
| 自动关闭磁盘，降低噪音 | 如下命令，无法做到没有文件访问时自动关闭，有文件寻址到该磁盘时自动装载，而且时不时会被某些应用打开。或许可以使用某种权限，开机就把允许访问该磁盘的权限收回，这样开机就会排除掉应用访问该磁盘的可能性 | https://superuser.com/questions/251969/disable-or-sleep-secondary-hard-drive-in-macbook
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

> 卸载磁盘中的单个分区

    diskutil unmount disk2s1

> 卸载整个磁盘(然而磁盘还是会时不时启动),force:optional

    diskutil unmountDisk force /dev/disk2

> [显示器音量控制 homebrew](https://github.com/Homebrew/homebrew-cask)
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install --cask monitorcontrol

> 1分钟后关闭磁盘，节能-允许关闭磁盘

    sudo pmset -a disksleep 1

> 查看什么进程占用了磁盘

    sudo lsof|grep disk4

<br>

Operation
---
- shift + alt + k 输入 
- command + shift + 3 截图
- command + shift + 4 区域截图
- command + shift + 4 + space 窗口截图
- command + t 在文件夹中打开新的标签页,比windows的好看
- opention + command + esc 强制结束

<br>

Issues
---
1. **节能不能设置睡眠时间**
1. **睡眠秒醒，重建USB映射蓝牙无法使用~~wake reason:GPP1 GPP3 GPP4 GPP5 GPP6 GPP7 GPP9 X162 GPPA GPPB GPPC GPPD GPPE GPPF GP10 GP11 PX11,通过windows导出的dsdt可以找到这几个对应的pci0端口，但是在ioregister'里无法找到这几个pci0，据我分析，和USB映射无关，应该和禁用dgpu类似，但是通过官方的方法禁用dgpu无法启动，也就导致无法禁用上述几个pci0端口。通过搜索，发现一个问题，官方的sample.aml文件有两种版本，一种是Scope()类型的，一种是Method()类型的，对比windows导出的dsdt，里面定义的方法都是scopr类型的，不清楚怎么搞**
1. 修改DSDT文件并添加入ACPI 无法启动，卡在tx_flusher:1074 ，无法解决
1. 等待 ax210 驱动的支持 [itlwm](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1848662)

<br>

Kext
---
- SMCAMDProcessor.kext [amd电源管理](https://github.com/trulyspinach/SMCAMDProcessor)的依赖，缺少无法监控cpu 核心频率 和温度 
- NVMEFix.kext 必须，因为windows主系统安装在了981a固态上了，没有采取禁用的方式
- AMDRyzenCPUPowerManagement.kext 监控CPU 温度等参数的必须
- USBMap.kext 根据[USBMap](https://github.com/corpnewt/USBMap)生成的，需要一个一个接口的测试，测试时的别名会缓存，不用担心退出命令会丢失。这是我自己电脑主板的USB映射，只激活了9个usb2/3 接口，请不要随意使用。
- SSDT-PLUG 原生电源管理？真的有用吗

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




