#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

#修改主机名
# sed -i 's/OpenWrt/Xiaomi-AX6S/g' package/base-files/files/bin/config_generate

#删除原默认主题
rm -r package/lean/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

#添加额外软件包
git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config #加入JerryKuKu’s Argon Config

git clone https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

#取消原主题luci-theme-bootstrap为默认主题
# sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-ifit/g' feeds/luci/collections/luci/Makefile
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

# 修改默认wifi名称ssid为Xiaomi_R4A
#sed -i 's/ssid=OpenWrt/ssid=openwrt/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh