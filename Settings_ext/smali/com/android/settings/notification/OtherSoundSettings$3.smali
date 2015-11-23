.class final Lcom/android/settings/notification/OtherSoundSettings$3;
.super Lcom/android/settings/notification/SettingPref;
.source "OtherSoundSettings.java"


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected i(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 91
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 97
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->i(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method
