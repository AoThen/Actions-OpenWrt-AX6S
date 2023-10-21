# Actions-OpenWrt-AX6S 自用编译版

默认入口192.168.10.1

默认账号密码admin/password

区分OpenWrt和lede版本，lede版本有MU-MIMO，目前自用以lede版本为主

默认带外部源openclash和adguardhome

**建议关闭adguardhome统计功能，会不断占用空间**

设置adguardhome作为dnsmasq的上游服务器或者 (重定向53)

上游DNS设置为 >> 127.0.0.1:7874（clash的dns端口）

main为保守稳定版，Plus为测试最新版

软件包过多的话,拆为sysupgrade和factory,否则无法导入

Failed to get erase block status 》》固件不能大于30MB
---

## Thanks for 

- [P3TERX](https://p3terx.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [JetBrains](https://www.jetbrains.com/)
- Others
## License

[MIT](https://github.com/AoThen/Actions-OpenWrt-AX6S/blob/main/LICENSE) 
