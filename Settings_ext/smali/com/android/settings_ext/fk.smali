.class public Lcom/android/settings_ext/fk;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# direct methods
.method public static S(I)I
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static T(I)J
    .locals 3

    .prologue
    .line 24
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 25
    const-wide v0, 0x7fffffffffffffffL

    .line 26
    if-eqz v2, :cond_0

    .line 27
    const/4 v0, 0x0

    aget-wide v0, v2, v0

    .line 29
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;I)Landroid/service/notification/Condition;
    .locals 1

    .prologue
    .line 20
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotId(J)I
    .locals 2

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    return v0
.end method

.method public static m(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings_ext/fk;->T(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
