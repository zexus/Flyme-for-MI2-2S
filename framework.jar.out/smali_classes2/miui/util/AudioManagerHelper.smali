.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHiFiVolume(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    :try_start_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 149
    .local v0, "am":Landroid/media/AudioManager;
    const-string v3, "hifi_volume"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "volumeStr":Ljava/lang/String;
    const-string v3, "hifi_volume="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 152
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "volumeStr":Ljava/lang/String;
    :goto_0
    return v3

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getValidatedRingerMode(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 85
    .local v0, "vibrate":Z
    if-nez p1, :cond_1

    .line 86
    if-eqz v0, :cond_0

    move p1, v1

    .line 95
    .end local p1    # "mode":I
    :cond_0
    :goto_0
    return p1

    .line 90
    .restart local p1    # "mode":I
    :cond_1
    if-ne v1, p1, :cond_0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static isHiFiMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 141
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 142
    .local v1, "isHeadsetOn":Z
    const-string v3, "hifi_mode"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 143
    .local v2, "isHifiModeEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSilentEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 39
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 47
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabled(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 52
    .local v1, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .line 54
    .local v0, "hasVibrator":Z
    const/4 v4, 0x2

    if-eq v4, p1, :cond_2

    .line 55
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v2}, Landroid/provider/SystemSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 55
    goto :goto_0

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_normal"

    sget-boolean v6, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-static {v4, v5, v6}, Landroid/provider/SystemSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static saveLastAudibleRingVolume(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # I

    .prologue
    .line 132
    if-lez p1, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_audible_ring_volume"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_0
    return-void
.end method

.method public static setHiFiVolume(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hifiVolume"    # I

    .prologue
    .line 157
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 158
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hifi_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static setVibrateSetting(Landroid/content/Context;ZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "vibrate_in_silent"

    :goto_0
    invoke-static {v1, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 31
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;)V

    .line 32
    return-void

    .line 25
    :cond_0
    const-string v0, "vibrate_in_normal"

    goto :goto_0
.end method

.method public static toggleSilent(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 102
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 104
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v6, v3, :cond_3

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/SystemSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const/4 v1, 0x1

    .line 111
    .local v1, "newMode":I
    :goto_0
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {p0, v3}, Lmiui/util/AudioManagerHelper;->saveLastAudibleRingVolume(Landroid/content/Context;I)V

    .line 115
    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 117
    if-ne v6, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "last_audible_ring_volume"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, "volume":I
    if-lez v2, :cond_0

    .line 122
    invoke-virtual {v0, v6, v2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 126
    .end local v2    # "volume":I
    :cond_0
    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {v0, v6, v7, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 129
    :cond_1
    return-void

    .line 109
    .end local v1    # "newMode":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "newMode":I
    goto :goto_0

    .line 113
    .end local v1    # "newMode":I
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "newMode":I
    goto :goto_1
.end method

.method public static toggleVibrateSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateRingerMode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 72
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 73
    .local v1, "mode":I
    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v2

    .line 75
    .local v2, "newMode":I
    if-eq v1, v2, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 78
    :cond_0
    return-void
.end method
