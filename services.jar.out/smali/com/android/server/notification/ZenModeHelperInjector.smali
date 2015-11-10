.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# static fields
.field private static sAllowMusic:Z

.field private static sLastMusicVolumeWhenMuted:I

.field private static sRingerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, -0x1

    sput v0, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustForcedRingerMode(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 7
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 59
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v3

    .line 60
    .local v3, "zenMode":I
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 61
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v1, -0x1

    .line 63
    .local v1, "forcedRingerMode":I
    sget v4, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 64
    sget p2, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    .line 67
    :cond_0
    if-eq v3, v6, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 70
    :cond_1
    if-eq p2, v6, :cond_2

    iget-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_in_silent"

    invoke-static {v5, v6, v2}, Landroid/provider/SystemSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 75
    .local v2, "needForce":Z
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 76
    iget-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-eqz v4, :cond_5

    .line 77
    const/4 v1, 0x1

    .line 83
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 92
    .end local v2    # "needForce":Z
    :cond_3
    :goto_2
    invoke-static {p1, v3, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->changeMusicVolumeIfNeeded(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;)V

    .line 94
    return v1

    .line 70
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    .restart local v2    # "needForce":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 87
    .end local v2    # "needForce":Z
    :cond_6
    if-eq p2, v6, :cond_3

    .line 88
    const/4 v1, 0x2

    goto :goto_2
.end method

.method static adjustNewZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 7
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 24
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v3

    .line 25
    .local v3, "zenMode":I
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 26
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v2, -0x1

    .line 27
    .local v2, "newZen":I
    sput p2, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    .line 28
    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    sput-boolean v5, Lcom/android/server/notification/ZenModeHelperInjector;->sAllowMusic:Z

    .line 29
    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_5

    .line 31
    :cond_0
    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_4

    .line 33
    :cond_1
    const/4 v2, 0x3

    .line 34
    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-nez v5, :cond_2

    .line 36
    const/4 v2, 0x2

    .line 52
    :cond_2
    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 53
    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-nez v5, :cond_7

    :goto_1
    sput-boolean v4, Lcom/android/server/notification/ZenModeHelperInjector;->sAllowMusic:Z

    .line 55
    :cond_3
    return v2

    .line 40
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 41
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_in_silent"

    invoke-static {v5, v6, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0

    .line 47
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_5
    if-ne p2, v6, :cond_2

    if-eq v3, v6, :cond_6

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 49
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static changeMusicVolumeIfNeeded(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zenMode"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 98
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 99
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 104
    .local v1, "vol":I
    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_7

    .line 105
    :cond_2
    sget v2, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    if-eq v2, v3, :cond_3

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    sget-boolean v3, Lcom/android/server/notification/ZenModeHelperInjector;->sAllowMusic:Z

    if-eq v2, v3, :cond_0

    .line 107
    :cond_3
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-nez v2, :cond_6

    .line 108
    if-lez v1, :cond_4

    .line 109
    invoke-virtual {v0, v4, v5, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 111
    :cond_4
    sput v1, Lcom/android/server/notification/ZenModeHelperInjector;->sLastMusicVolumeWhenMuted:I

    .line 117
    :cond_5
    :goto_1
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    sput-boolean v2, Lcom/android/server/notification/ZenModeHelperInjector;->sAllowMusic:Z

    goto :goto_0

    .line 112
    :cond_6
    if-nez v1, :cond_5

    sget v2, Lcom/android/server/notification/ZenModeHelperInjector;->sLastMusicVolumeWhenMuted:I

    if-lez v2, :cond_5

    .line 113
    sget v2, Lcom/android/server/notification/ZenModeHelperInjector;->sLastMusicVolumeWhenMuted:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 114
    sput v5, Lcom/android/server/notification/ZenModeHelperInjector;->sLastMusicVolumeWhenMuted:I

    goto :goto_1

    .line 119
    :cond_7
    if-nez v1, :cond_0

    sget v2, Lcom/android/server/notification/ZenModeHelperInjector;->sLastMusicVolumeWhenMuted:I

    if-lez v2, :cond_0

    .line 120
    sget v2, Lcom/android/server/notification/ZenModeHelperInjector;->sLastMusicVolumeWhenMuted:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
