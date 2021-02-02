# 从 https://github.com/jinhaozcp/Hackintosh-Ryzen-MSI-B450-Gaming-Pro-carbon-ac 修改而来

# Hackintosh- AMD Device 
### ASUS-TUF-B450M-PLUS-GAMING/MacOS
<br>

- Macos: 10.15.7 (19H15)
- OC: 0.6.5(不要使用0.6.6的opencore configurator 去配置，会产生很多报错)
- CPU: AMD Ryzen 7 3700X 8-Core 八核
- MotherBoard: ASUS-TUF-B450M-PLUS-GAMING
- Memory: 8GB*2 (TEAMGROUP-UD4-3200)
- SSD: PLEXTOR PX-128M6S 128G
- GPU: Radeon RX 5700 白金 蓝宝石
- AUDIO CHIPSET: IDK
- LAN CHIPSET: Realtek 8111H
- WIFI: AX210 不支持无线
- Bluetooth: AX210 板载蓝牙 我也不知道什么型号 支持
<br>

 Conclusion
-----------
- pencore 中文网 https://oc.skk.moe/kextlist.html kext 兼容性检查
- https://dortania.github.io/OpenCore-Install-Guide/ 官方网站，按着步骤做就行
- ttps://mirrors.dtops.cc/iso/MacOS/daliansky_macos/  下载链接 
- https://www.cnblogs.com/yucloud/p/opencore.html 安装教程
- 从 https://opencore.slowgeek.com/ 校验自己设置的配置文件是否包含基本错误
<br>

Software
---------

- SteelSeries 去除鼠标加速度
- lghub 罗技鼠标驱动
- kext updater（https://bitbucket.org/profdrluigi/kextupdater/downloads/） 主要用来检测config 是否报错，不知道这个软件的更新按钮在哪 
- qt opencore (https://github.com/ic005k/QtOpenCoreConfig/releases )  0.6.5 用来更新 kext 、 acpi 、 drivers 、tools
<br>

Issues
-------
|  问题   | 解决方法  | 来源
|  ----  | ----  | --- |
| can't No schema for BlacklistAppleupdate at 3 Index  | \<key>BlacklistAppleUpdate</key>\<true/> (也可能是\<false/>) | http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1861748
| Load image failed – Security | Misc-Security-securebootmodel - disabled | https://macx.top/15131.html 
| --- | --- | ---
<br>

# 当前开启了debug 模式
# 无法使用这个配置升级big sur, 选择安装后 会卡在 代码行

