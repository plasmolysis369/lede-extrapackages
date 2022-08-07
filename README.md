# lede-extrapackages

## 注意

软件库自动同步上游更新，建议使用Lean大的LEDE仓库，不保证其他版本源码的可用性！

软件库包含一些<s>不可描述</s>常用的软件包，一个顶俩，欢迎使用。

想要新软件包可以提issue，<s>随缘</s>不定期添加。

感谢Lean大及所有软件包开发者们，没有你们就没有现在适合国人使用习惯的OpenWRT。

## 使用方法

```Brach
    # 在feeds.conf.default加入
    src-git extrapackages https://github.com/plasmolysis369/lede-extrapackages.git
``` 
 
 ## 插件功能说明

luci-app-advanced---------------可以在luci直接编译配置文件，管理其他本地文件文件

luci-app-argon-config---------给argonne配置bing图片和自定义图片

luci-theme-argon--------------jerrykuku的argon主题

luci-app-autoipsetadder---------通过httping探测自动将ip加入ipset

luci-app-beardropper------------抵御ssh爆破攻击

luci-app-control-speedlimit-----对用户进行访问控制和限速

luci-app-control-webrestriction-黑白名单

luci-app-control-timewol--------定时唤醒

luci-app-control-weburl---------网址过滤

luci-app-ddnsto-----------------ddnsto内网穿透，易有云出品

luci-app-dnsfilter--------------基于DNS的广告过滤

luci-app-easyupdate-------------搭配github工作流自动编译可以自动升级你的系统（慎用）

luci-app-iperf------------------给iperf3提供luci界面

luci-app-iptvhelper-------------字面意思

luci-app-jd-dailybonus----------jd自动签到脚本

luci-app-linkease---------------易有云个人网盘openwrt端

luci-app-mentohust--------------锐捷网页认证插件的luci界面，同时选定mentohust软件包后才会生效

luci-app-minieap----------------802.11x验证插件的luci界面，同时选定minieap软件包后才会生效

luci-app-mosdns-----------------DNS转发器

luci-app-netspeedtest-----------字面意思，可能会有bug

luci-app-nginx-manager----------openwrt上nginx的luci的管理界面，会替代默认的uhttpd

luci-app-oaf--------------------openwrt上的应用过滤插件，支持游戏、视频、聊天、下载等app过滤

luci-app-ssr-plus---------------helloworld

luci-app-openclash--------------helloworld

luci-app-vssr-------------------helloworld

luci-app-smartdns---------------不太smart的dns

luci-app-socat------------------socat瑞士军刀的luci操作界面

luci-app-supervisord------------一款面向Luci的简单的任务管理器

luci-app-sysuh3c----------------H3C 802.1X的认证客户端

luci-app-tcpdump----------------tcpdump抓包的luci操作界面

luci-app-ttnode-----------------甜糖星愿自动采集插件，并不是挖星愿

luci-app-udp2raw----------------udp2raw隧道的luci操作界面

luci-app-xunlei-----------------迅雷远程下载

luci-theme-atmaterial_new-------修改版tomato主题

luci-theme-tomato---------------tomato主题

luci-theme-mcat-----------------tomcat主题
