.class public Lcom/android/settings_ext/MiuiSoundSettings;
.super Lcom/android/settings_ext/SoundSettings;
.source "MiuiSoundSettings.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private px:Lcom/android/settings_ext/eK;

.field private sj:Lcom/android/settings_ext/SmsRingtonePreference;

.field private sk:Lcom/android/settings_ext/SmsRingtonePreference;

.field private sl:Lcom/android/settings_ext/DefaultRingtonePreference;

.field private sm:Landroid/preference/CheckBoxPreference;

.field private sn:Landroid/preference/CheckBoxPreference;

.field private so:Landroid/preference/ListPreference;

.field private final sp:Landroid/content/BroadcastReceiver;

.field private final sq:Landroid/os/Handler;

.field private final sr:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ext/SoundSettings;-><init>()V

    .line 264
    new-instance v0, Lcom/android/settings_ext/eI;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/eI;-><init>(Lcom/android/settings_ext/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sp:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sq:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/android/settings_ext/eJ;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sq:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/eJ;-><init>(Lcom/android/settings_ext/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sr:Landroid/database/ContentObserver;

    return-void
.end method

.method private P(I)V
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 222
    return-void
.end method

.method private a(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method

.method private fz()I
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 229
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sj:Lcom/android/settings_ext/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sk:Lcom/android/settings_ext/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method fA()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_normal"

    sget-boolean v3, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    :cond_1
    return-void
.end method

.method protected fy()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sj:Lcom/android/settings_ext/SmsRingtonePreference;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sk:Lcom/android/settings_ext/SmsRingtonePreference;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 211
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ext/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->px:Lcom/android/settings_ext/eK;

    .line 93
    const-string v0, "support_feedback_level"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->fz()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    const-string v0, "sms_received_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SmsRingtonePreference;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sj:Lcom/android/settings_ext/SmsRingtonePreference;

    .line 105
    const-string v0, "sms_delivered_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SmsRingtonePreference;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sk:Lcom/android/settings_ext/SmsRingtonePreference;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sj:Lcom/android/settings_ext/SmsRingtonePreference;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sj:Lcom/android/settings_ext/SmsRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sj:Lcom/android/settings_ext/SmsRingtonePreference;

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sk:Lcom/android/settings_ext/SmsRingtonePreference;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sk:Lcom/android/settings_ext/SmsRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sk:Lcom/android/settings_ext/SmsRingtonePreference;

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    .line 121
    :cond_4
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    const-string v0, "miui_vibrate_in_silent_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v0, "miui_vibrate_in_normal_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v0, "support_dolby"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 125
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_5
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 132
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_9

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    .line 138
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    :cond_7
    const-string v1, "miui_vibrate_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_8

    .line 142
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_8
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    .line 145
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    .line 148
    :cond_9
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    .line 154
    :cond_a
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sl:Lcom/android/settings_ext/DefaultRingtonePreference;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sl:Lcom/android/settings_ext/DefaultRingtonePreference;

    if-eqz v0, :cond_b

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sl:Lcom/android/settings_ext/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    iput-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sl:Lcom/android/settings_ext/DefaultRingtonePreference;

    .line 160
    :cond_b
    const-string v0, "support_phone_call_noise_suppression"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 161
    const-string v0, "noise_suppression"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_c

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_c
    const-string v0, "phone_call_noise_suppression"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_d

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_d
    :goto_0
    return-void

    .line 170
    :cond_e
    const-string v0, "phone_call_noise_suppression"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->so:Landroid/preference/ListPreference;

    .line 171
    const-string v0, "persist.audio.vns.mode"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->so:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->so:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sr:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    invoke-super {p0}, Lcom/android/settings_ext/SoundSettings;->onPause()V

    .line 197
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 237
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->P(I)V

    .line 242
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->so:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->so:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/MiuiSoundSettings;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 240
    const-string v0, "persist.audio.vns.mode"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1, v3}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    .line 253
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SoundSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 260
    :cond_1
    return v1

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0}, Lcom/android/settings_ext/SoundSettings;->onResume()V

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    const-string v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sr:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    const-string v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/MiuiSoundSettings;->sr:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSoundSettings;->fA()V

    .line 190
    return-void
.end method
