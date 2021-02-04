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
- AUDIO CHIPSET: IDK
- LAN CHIPSET: Realtek 8111H
- WIFI: [AX210](https://ark.intel.com/content/www/cn/zh/ark/products/204836/intel-wi-fi-6e-ax210-gig.html?wapkw=ax210) 没有对应的驱动
- Bluetooth: [AX210](https://ark.intel.com/content/www/cn/zh/ark/products/204836/intel-wi-fi-6e-ax210-gig.html?wapkw=ax210) 使用了通用驱动
<br>

 Conclusion
-----------
- [pencore 中文网](https://oc.skk.moe/kextlist.html) kext 兼容性检查
- [opencore offical guide line](https://dortania.github.io/OpenCore-Install-Guide/) 官方网站，按着步骤做就行
- [mirrors](https://mirrors.dtops.cc/iso/MacOS/daliansky_macos/)  下载链接 
- [安装教程](https://www.cnblogs.com/yucloud/p/opencore.html)
- [升级opencore 教程 大头蔡Cass](https://www.bilibili.com/video/BV11i4y1L7Mn?t=101)

<br>

Tools
---------
- <u>***https://opencore.slowgeek.com/ 一定要使用这个网站来校验config文件***</u>
- [SteelSeries ExactMouse Tool ](https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg) 去除鼠标加速度
- [lghub ](https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.zip)鼠标驱动
- [kext update ](https://bitbucket.org/profdrluigi/kextupdater/downloads/) 主要用来检测config 是否报错，不知道这个软件的更新按钮在哪 
- [qt opencore](https://github.com/ic005k/QtOpenCoreConfig/releases) 用来更新 kext 、 acpi 、 drivers 、tools
- [opencore configurator](https://mackie100projects.altervista.org/)  opencore configurator 安装包，用于配置config.list 文件，我觉得不好用
- [ocbuilder](https://github.com/Pavo-IM/ocbuilder/) ocbuilder 安装包，用于升级oc 版本，需要预先安装xcode才能使用
- [ProperTree](https://github.com/corpnewt/ProperTree)  用于编辑.plist   文件，mac和win 都可以使用，我觉得不好用
- [Hackintool](https://github.com/headkaze/Hackintool/releases) 工具，检测设备的各项数据

<br>

Issues
-------
|  问题   | 解决方法  | 来源
|  ----  | ----  | --- |
| can't No schema for BlacklistAppleupdate at 3 Index  | \<key>BlacklistAppleUpdate</key>\<true/> (也可能是\<false/>) | http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1861748
| Load image failed – Security | Misc-Security-securebootmodel - disabled | https://macx.top/15131.html 
| macos去除鼠标加速度 | https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg | https://www.v2ex.com/t/389853
| stuck on 'usr\\standalone\\OS.dmg.root_hash'| 使用上述 校验网站 查找是否存在错误信息| https://www.tonymacx86.com/threads/big-sur-installer-error-in-opening-usr-standalone-os-dmg-root_hash.306845/
| --- | --- | ---

<br>

Command
----------
> 输出日志文件到桌面 <br>
> og show --predicate 'process == "kernel"' --debug --last 10m > ~/Desktop/kernel.log  

> 挂载EFI分区 <br>
> diskutil list <br>
> sudo diskutil mount disk3s1

Operation
---------
- shift + alt + k 输入 
- command + shift + 3 截图
- command + shift + 4 区域截图
- command + shift + 4 + space 窗口截图

<br>


# 当前开启了debug 模式，删除-v即可关闭
~~# 不要使用这个配置升级big sur，会在  自动重启~~
# 我只是把我这几天用到的工具、网址、问题 总结了一下，有几个drive可以删除但是并没有这么做，先放着了，这个配置也可能不通用，酌情参考。
# 所有的kext 和驱动 应该都是当前最新的release 版本，毕竟是通过ocbuilder 自动编译的最新代码
# 目前已升级到 Big Sur 11.2
    > 注意
    > 1. 第一次重启会卡在进度条很久，但是进度还是在走的，之后就没有install 选项了，会直接进入系统
    > 2. 如果之前更新过11.2版本，但是失败了，请再重新安装一次更新，否则会失败，亲身经历，重新安装一次更新就好了

![photo](https://github.com/SandiTT/Hackintosh-3700X-5700-B450M-Catalina-10.15.7/raw/0.6.7/photo/catalina.png)

![photo](https://github.com/SandiTT/Hackintosh-3700X-5700-B450M-Catalina-10.15.7/blob/0.6.7/photo/big%20sur.png)
