#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
git clone --depth 1 https://github.com/kiddin9/luci-app-dnsfilter
git clone --depth 1 https://github.com/kiddin9/autoshare && mvdir autoshare
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall
git clone --depth 1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth 1 https://github.com/rufengsuixing/luci-app-autoipsetadder
git clone --depth 1 https://github.com/NateLol/luci-app-beardropper
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
git clone --depth 1 https://github.com/BoringCat/luci-app-minieap
git clone --depth 1 https://github.com/rufengsuixing/luci-app-onliner
git clone --depth 1 https://github.com/tty228/luci-app-serverchan
git clone --depth 1 https://github.com/4IceG/luci-app-sms-tool smstool && mvdir smstool
git clone --depth 1 https://github.com/silime/luci-app-xunlei
git clone --depth 1 https://github.com/ysc3839/luci-proto-minieap
git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
git clone --depth 1 https://github.com/jerrykuku/luci-app-ttnode
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
git clone --depth 1 https://github.com/jerrykuku/luci-app-jd-dailybonus
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/sensec/luci-app-udp2raw
git clone --depth 1 https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
git clone --depth 1 https://github.com/kenzok78/udp2raw
git clone --depth 1 https://github.com/kenzok78/luci-theme-argonne
git clone --depth 1 https://github.com/kenzok78/luci-app-argonne-config
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone --depth 1 https://github.com/QiuSimons/openwrt-mos && mvdir openwrt-mos
git clone -b lede https://github.com/pymumu/luci-app-smartdns
git clone https://github.com/KFERMercer/luci-app-tcpdump

svn co https://github.com/Lienol/openwrt-package/branches/other/lean/luci-app-autoreboot
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
svn co https://github.com/Ysurac/openmptcprouter-feeds/trunk/luci-app-iperf
svn co https://github.com/kenzok8/litte/trunk/luci-theme-atmaterial_new
svn co https://github.com/kenzok8/litte/trunk/luci-theme-mcat
svn co https://github.com/kenzok8/litte/trunk/luci-theme-tomato

svn co https://github.com/linkease/istore/trunk/luci/luci-app-store
svn co https://github.com/linkease/istore-ui/trunk/app-store-ui
svn co https://github.com/linkease/nas-packages/trunk/network/services && mvdir services
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
svn co https://github.com/linkease/nas-packages-luci/trunk/luci && mvdir luci
svn co https://github.com/sbilly/netmaker-openwrt/trunk/netmaker
svn co https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-cos/trunk/tencentcloud_cos luci-app-tencentcloud-cos

mv -n openwrt-passwall/brook openwrt-passwall/chinadns-ng openwrt-passwall/hysteria openwrt-passwall/luci-app-passwall openwrt-passwall/trojan-go openwrt-passwall/trojan-plus ./
rm -Rf openwrt-passwall
rm -rf luci-app-quickstart quickstart

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0
