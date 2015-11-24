.class public Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DoNotDisturbModeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private p(Landroid/content/Context;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 66
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 78
    new-instance v2, Lcom/android/settings_ext/dndmode/b;

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/settings_ext/dndmode/b;-><init>(I)V

    .line 79
    invoke-virtual {v2}, Lcom/android/settings_ext/dndmode/b;->oQ()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 84
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 72
    :sswitch_1
    invoke-static {v2}, Lcom/android/settings_ext/dndmode/n;->a(Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 73
    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private setQuietMode(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 89
    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 93
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {p1}, Lcom/android/settings_ext/dndmode/m;->aK(Landroid/content/Context;)V

    .line 31
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p1}, Lcom/android/settings_ext/dndmode/m;->aL(Landroid/content/Context;)Z

    move-result v0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;->p(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;->setQuietMode(Landroid/content/Context;Z)V

    .line 35
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1, v3}, Lcom/android/settings_ext/dndmode/m;->q(Landroid/content/Context;Z)V

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    const-string v1, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/settings_ext/dndmode/m;->aL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;->p(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;->setQuietMode(Landroid/content/Context;Z)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v1, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/settings_ext/dndmode/m;->aL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;->p(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ext/dndmode/DoNotDisturbModeReceiver;->setQuietMode(Landroid/content/Context;Z)V

    .line 55
    invoke-static {p1}, Lcom/android/settings_ext/dndmode/m;->aJ(Landroid/content/Context;)V

    goto :goto_0

    .line 58
    :cond_4
    const-string v1, "miui.intent.action.QUIET_MODE_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "miui.intent.extra.QUIET_MODE_ENABLE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    invoke-static {p1, v0}, Lcom/android/settings_ext/dndmode/m;->q(Landroid/content/Context;Z)V

    goto :goto_0
.end method
