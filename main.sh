#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
git clone --depth 1 https://github.com/kiddin9/luci-app-dnsfilter
git clone --depth 1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth 1 https://github.com/rufengsuixing/luci-app-autoipsetadder
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
git clone --depth 1 https://github.com/BoringCat/luci-app-minieap
git clone --depth 1 https://github.com/silime/luci-app-xunlei
git clone --depth 1 https://github.com/ysc3839/luci-proto-minieap
git clone --depth 1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
git clone --depth 1 https://github.com/jerrykuku/luci-app-ttnode
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
git clone --depth 1 https://github.com/jerrykuku/luci-app-jd-dailybonus
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/sensec/luci-app-udp2raw
git clone --depth 1 https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
git clone --depth 1 https://github.com/kenzok78/udp2raw
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone --depth 1 https://github.com/QiuSimons/openwrt-mos
git clone --depth 1 https://github.com/fw876/helloworld
git clone -b lede https://github.com/pymumu/luci-app-smartdns
git clone https://github.com/KFERMercer/luci-app-tcpdump
git clone https://github.com/plasmolysis369/mypackages
git clone https://github.com/koshev-msk/luci-app-smstools3
git clone https://github.com/linkease/istore
git clone https://github.com/xiaorouji/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2

svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
svn co https://github.com/Ysurac/openmptcprouter-feeds/trunk/luci-app-iperf
svn co https://github.com/kenzok8/litte/trunk/luci-theme-atmaterial_new
svn co https://github.com/kenzok8/litte/trunk/luci-theme-mcat
svn co https://github.com/kenzok8/litte/trunk/luci-theme-tomato
svn co https://github.com/linkease/nas-packages/trunk/network/services && mvdir services
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
svn co https://github.com/linkease/nas-packages-luci/trunk/luci && mvdir luci
svn co https://github.com/sbilly/netmaker-openwrt/trunk/netmaker

sed -i "s/mosdns-neo/mosdns/g" openwrt-mos/luci-app-mosdns/Makefile
mv -n openwrt-mos/luci-app-mosdns ./ ; rm -rf openwrt-mos

mv -n helloworld/* ./ ; rm -rf helloworld
mv -n openwrt-passwall2/* ./ ; rm -rf openwrt-passwall2
mv -n openwrt-passwall/brook openwrt-passwall/chinadns-ng openwrt-passwall/dns2socks openwrt-passwall/ipt2socks openwrt-passwall/microsocks -t ./
mv -n openwrt-passwall/ssocks  openwrt-passwall/pdnsd-alt -t ./ ; rm -rf openwrt-passwall
mv -n mypackages/* ./ ; rm -rf mypackages

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0
