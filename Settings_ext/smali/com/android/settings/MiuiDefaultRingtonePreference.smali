.class public Lcom/android/settings_ext/MiuiDefaultRingtonePreference;
.super Lcom/android/settings_ext/DefaultRingtonePreference;
.source "MiuiDefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getShowDefault()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getShowSilent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/settings_ext/sound/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->setFragment(Ljava/lang/String;)V

    .line 39
    return-void

    .line 34
    :cond_2
    invoke-static {}, Lcom/android/settings_ext/ringtone/MultiRingtoneSettingUtils;->ro()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0}, Lcom/android/settings_ext/DefaultRingtonePreference;->onClick()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings_ext/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 44
    const-string v0, "REQUEST_ENTRY_TYPE"

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/settings_ext/ringtone/MultiRingtoneSettingUtils;->ro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiDefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string p1, ""

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
