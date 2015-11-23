.class public Lcom/android/settings/bO;
.super Lcom/android/settings/eK;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/eK;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public static a(Landroid/telephony/TelephonyManager;JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setDataEnabledUsingSubId(JZ)V

    .line 16
    return-void
.end method
