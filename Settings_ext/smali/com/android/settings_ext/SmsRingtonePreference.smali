.class public Lcom/android/settings_ext/SmsRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "SmsRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SmsRingtonePreference;->setShowDefault(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SmsRingtonePreference;->setShowSilent(Z)V

    .line 45
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getShowDefault()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getShowSilent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-static {}, Lcom/android/settings_ext/ringtone/MultiRingtoneSettingUtils;->ro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SmsRingtonePreference;->setFragment(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public getRingtoneType()I
    .locals 3

    .prologue
    .line 144
    const/16 v0, 0x8

    .line 145
    const-string v1, "sms_received_sound"

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/16 v0, 0x10

    .line 148
    :cond_0
    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 68
    :cond_0
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 78
    const-string v0, "com.android.thememanager"

    const-string v1, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const-string v0, "REQUEST_ENTRY_TYPE"

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 154
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SmsRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 111
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/settings_ext/ringtone/MultiRingtoneSettingUtils;->ro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string p1, ""

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/SmsRingtonePreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
