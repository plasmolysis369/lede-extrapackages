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
git clone --depth 1 https://github.com/jerrykuku/luci-app-ttnode
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/sensec/luci-app-udp2raw
git clone --depth 1 https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
git clone --depth 1 https://github.com/kenzok78/udp2raw
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone --depth 1 https://github.com/QiuSimons/openwrt-mos
git clone --depth 1 https://github.com/fw876/helloworld
git clone --depth 1 -b lede https://github.com/pymumu/luci-app-smartdns
git clone --depth 1 https://github.com/KFERMercer/luci-app-tcpdump
git clone --depth 1 https://github.com/plasmolysis369/mypackages
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages
git clone --depth 1 https://github.com/sirpdboy/netspeedtest
git clone --depth 1 https://github.com/linkease/nas-packages-luci
git clone --depth 1 https://github.com/linkease/nas-packages
git clone --depth 1 https://github.com/sbwml/luci-app-alist
git clone --depth 1 https://github.com/vernesong/OpenClash && mv -n OpenClash/luci-app-openclash ./; rm -rf OpenClash
git clone --depth 1 https://github.com/Ysurac/openmptcprouter-feeds && mv -n openmptcprouter-feeds/luci-app-iperf ./; rm -rf openmptcprouter-feeds
git clone --depth 1 https://github.com/kenzok8/litte && mv -n litte/luci-theme-atmaterial_new litte/luci-theme-mcat litte/luci-theme-tomato ./; rm -rf litte
git clone --depth 1 https://github.com/sbilly/netmaker-openwrt && mv -n netmaker-openwrt/netmaker ./; rm -rf netmaker-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-mentohust && mv -n luci-app-mentohust/luci-app-mentohust ./luci-app-mentohust233; rm -rf luci-app-mentohust
git clone --depth 1 https://github.com/ximiTech/luci-app-msd_lite
git clone --depth 1 https://github.com/immortalwrt/packages && mv -n packages/net/msd_lite ./; rm -rf packages

mv -n nas-packages/network/services ./ ; rm -rf nas-packages
mv -n nas-packages-luci/luci ./ ; rm -rf nas-packages-luci

mv -n mypackages/* ./ ; rm -rf mypackages

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0
