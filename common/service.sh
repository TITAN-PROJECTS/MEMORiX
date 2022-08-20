# Scheduler Boost
if [ -d "/sys/kernel/debug/sched_features" ]; then
    write /sys/kernel/debug/sched_features "ARCH_CAPACITY"
    write /sys/kernel/debug/sched_features "ARCH_POWER"
    write /sys/kernel/debug/sched_features "ENERGY_AWARE"
	write /sys/kernel/debug/sched_features "NEXT_BUDDY"
	write /sys/kernel/debug/sched_features "NO_DOUBLE_TICK"
	write /sys/kernel/debug/sched_features "NO_GENTLE_FAIR_SLEEPERS"
	write /sys/kernel/debug/sched_features "NO_HRTICK"
	write /sys/kernel/debug/sched_features "NO_RT_RUNTIME_SHARE"
	write /sys/kernel/debug/sched_features "NO_TTWU_QUEUE"
    write /sys/kernel/debug/sched_features "NO_WAKEUP_PREEMPTION"
    write /sys/kernel/debug/sched_features "UTIL_EST"
fi;

# WakeLock Profile Tweaks Set Config
if [ -e "/sys/class/misc/boeffla_wakelock_blocker" ]; then
    write /sys/class/misc/boeffla_wakelock_blocker/wakelock_blocker "qcom_rx_wakelock;wcnss_filter_lock;wlan;wlan_ipa;IPA_WS;wlan_pno_wl;wlan_wow_wl;wlan_extscan_wl;net;IPCRTR_lpass_rx;eventpoll;event2;KeyEvents;eventpoll;NETLINK;NETLINK;NETLINK;mpss_IPCRTR;NETLINK;eventpoll;NETLINK;IPCRTR_mpss_rx;NETLINK;eventpoll;[timerfd];hal_bluetooth_lock;sensor_ind;netmgr_wl;qcom_rx_wakelock;wlan_extscan_wl;NETLINK;bam_dmux_wakelock;IPA_RM12"

elif [ -e "/sys/devices/virtual/misc/boeffla_wakelock_blocker" ]; then
    write /sys/devices/virtual/misc/boeffla_wakelock_blocker/wakelock_blocker "qcom_rx_wakelock;wcnss_filter_lock;wlan;wlan_ipa;IPA_WS;wlan_pno_wl;wlan_wow_wl;wlan_extscan_wl;net;IPCRTR_lpass_rx;eventpoll;event2;KeyEvents;eventpoll;NETLINK;NETLINK;NETLINK;mpss_IPCRTR;NETLINK;eventpoll;NETLINK;IPCRTR_mpss_rx;NETLINK;eventpoll;[timerfd];hal_bluetooth_lock;sensor_ind;netmgr_wl;qcom_rx_wakelock;wlan_extscan_wl;NETLINK;bam_dmux_wakelock;IPA_RM12"
    
# Remove Cache, TMP, And Small Log
# Tweaks Set Config
rm -f /cache/*.apk
rm -f /cache/*.tmp
rm -f /data/dalvik-cache/*.apk
rm -f /data/dalvik-cache/*.tmp
rm -r /data/local/tmp/*
rm -r /data/tmp/*
rm -r /data/system/usagestats/*
rm -r /data/system/appusagestats/*

for cache in $(ls /storage/emulated/0/Android/data); do
rm -rf /storage/emulated/0/Android/data/"$cache"/*
done

rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.google.android.deskclock/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.digibites.accubattery/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.vanced.android.youtube/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.samsung.android.mobileservice/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.sec.android.app.samsungapps/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.digibites.accubattery/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.sec.android.daemonapp/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.osp.app.signin/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.google.android.googlequicksearchbox/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.core.lntmobile/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.samsung.android.dynamiclock/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/frc_1:633738944520:android:716b5964e99d2c3d_firebase_settings.xml
rm -rf /data/data/com.camerasideas.instashot/shared_prefs/frc_1:1000386510336:android:ab5973db7e7e86ed_firebase_settings.xml
rm -rf /data/data/com.touchtype.swiftkey/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.firebase.common.prefs:W0RFRkFVTFRd+MTo1OTM5NTA2MDI0MTg6YW5kcm9pZDpjNGRhMWMwNTdjZjU3YmE4.xml
rm -rf /data/data/org.telegram.messenger/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -f /data/data/org.telegram.messenger/shared_prefs/frc_1:760348033671:android:f6afd7b67eae3860_firebase_settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/frc_1:1002943954979:android:bfc8b0f2ed5f47a0_firebase_settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/frc_1:275128417090:android:3dc63557758b5b0f_firebase_settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/photo.editor.photoeditor.photoeditorpro/shared_prefs/frc_1:757324348735:android:caaddb32e54f9271_firebase_settings.xml
rm -rf /data/data/wifisecurity.ufovpn.android/shared_prefs/frc_1:76973129151:android:ab00156b263ee3195ef50a_firebase_settings.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/user_de/0/com.samsung.android.fmm/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/com.touchtype.swiftkey/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.firebase.common.prefs:W0RFRkFVTFRd+MTo1OTM5NTA2MDI0MTg6YW5kcm9pZDpjNGRhMWMwNTdjZjU3YmE4.xml
rm -rf /data/data/org.telegram.messenger/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/user_de/0/com.samsung.android.fmm/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.touchtype.swiftkey/shared_prefs/telemetry_service_key.xml
rm -rf /data/data/com.samsung.android.biometrics.app.setting/shared_prefs/com.samsung.android.biometrics.app.setting_preferences.xml
rm -rf /data/data/com.samsung.android.tadownloader/shared_prefs/tad_biometrics_info.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/GnssmetricsPH.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/com.google.android.metrics.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.samsung.android.game.gamehome/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.samsung.android.game.gamehome/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.opera.max.oem/shared_prefs/com.crashlytics.sdk.android.crashlytics-core:com.crashlytics.android.core.CrashlyticsCore.xml
rm -rf /data/data/com.opera.max.oem/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.opera.max.oem/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/photo.editor.photoeditor.photoeditorpro/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/photo.editor.photoeditor.photoeditorpro/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.hiya.star/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.hiya.star/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/wifisecurity.ufovpn.android/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/wifisecurity.ufovpn.android/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/ir.stsepehr.hamrahcard/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/ir.stsepehr.hamrahcard/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.intsig.camscanner/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.intsig.camscanner/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/com.samsung.android.mobileservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.appsedge/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.themestore/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.quicktool/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.contacts/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.calendar/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.samsungapps/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.routines/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.net.wifi.wifiguider/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.messaging/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.galaxyfinder/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.dialer/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.daemonapp/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.social/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.applock/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.taskedge/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.mdecservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.mdx.quickboard/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.aodservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.storyservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.dqagent/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.osp.app.signin/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/SamsungAnalyticsPrefs_runestone.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/SamsungAnalyticsPrefs_ad.xml
rm -rf /data/data/com.samsung.android.allshare.service.fileshare/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.camera/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.mdx/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.game.gametools/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.dynamiclock/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.simplesharing/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.lool/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.cocktailbarservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.myfiles/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.video/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.launcher/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/user_de/0/com.samsung.android.fmm/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/user_de/0/com.android.systemui/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/user_de/0/com.samsung.android.incallui/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.netflix.mediaclient/shared_prefs/com.netflix.mediaclient.client_cast_analytics_data.xml
rm -rf /data/data/com.instagram.android/shared_prefs/com.facebook.analytics.appstatelogger.AppStateBroadcastReceiver.xml
rm -rf /data/data/com.instagram.android/shared_prefs/analyticsprefs.xml
rm -rf /data/data/com.instagram.android/shared_prefs/rti.mqtt.analytics.xml
rm -rf /data/data/com.google.android.apps.photos/shared_prefs/analytics.xml
rm -rf /data/data/com.reddit.frontpage/shared_prefs/analytics_event_batch_size.xml
rm -rf /data/data/com.android.browser/shared_prefs/day_analytics.xml
rm -rf /data/data/com.google.android.apps.docs/shared_prefs/com.google.android.gms.analytics.prefs.xml


#  Kill all Android Process Media & Media Server
busybox killall -9 android.process.media
busybox killall -9 mediaserver


dbg "Finished with $ERR_CNT failed writes."

if [ -f "/data/system/usagestats" ]; then
 chmod 755 /data/system/usagestats
 chown root root /data/system/usagestats
 chgrp root root /data/system/usagestats

elif [ -f "/data/system/appusagestats" ]; then
 chmod 755 /data/system/appusagestats
 chown root root /data/system/appusagestats
 chgrp root root /data/system/appusagestats

elif [ -f "/data/system/graphicsstats" ]; then
 chmod 755 /data/system/graphicsstats
 chown root root /data/system/graphicsstats
 chgrp root root /data/system/graphicsstats

fi;