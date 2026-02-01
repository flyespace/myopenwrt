#!/bin/bash
# Modify default IP
sed -i 's/192.168.1.1/192.168.5.208/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.5.208/g' package/base-files/luci2/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/FlyEspace/g' package/base-files/files/bin/config_generate

# Modify default password to 16897168
# sed -i "s/root:::0:99999:7:::/root:$(openssl passwd -1 '16897168'):0:99999:7:::/" package/base-files/files/etc/shadow
