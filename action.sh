#!/system/bin/sh

surfing_disable="/data/adb/modules/Surfing/disable"

if [ -f "${surfing_disable}" ]; then
    echo "正在开启网络代理…"
    rm -f "${surfing_disable}"
    sleep 1.5
    echo "网络代理已开启"
else
    echo "正在关闭网络代理…"
    touch "${surfing_disable}"
    sleep 1.5
    echo "网络代理已关闭"
fi