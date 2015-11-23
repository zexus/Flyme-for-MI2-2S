.class public Lcom/android/settings/dolby/DolbyAdvanceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DolbyAdvanceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private XA:Landroid/preference/CheckBoxPreference;

.field private XB:Landroid/preference/CheckBoxPreference;

.field private XC:Landroid/preference/CheckBoxPreference;

.field private XD:Landroid/preference/CheckBoxPreference;

.field private XE:Landroid/preference/CheckBoxPreference;

.field private XF:Landroid/dolby/DsClient;

.field private final XG:Landroid/dolby/IDsClientEvents;

.field private Xz:Landroid/preference/CheckBoxPreference;

.field private mn:Z

.field private final mo:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/dolby/DolbyAdvanceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 186
    new-instance v0, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;-><init>(Lcom/android/settings/dolby/DolbyAdvanceSettings;)V

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XG:Landroid/dolby/IDsClientEvents;

    .line 222
    new-instance v0, Lcom/android/settings/dolby/DolbyAdvanceSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings$2;-><init>(Lcom/android/settings/dolby/DolbyAdvanceSettings;)V

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mo:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dolby/DolbyAdvanceSettings;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->refresh()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dolby/DolbyAdvanceSettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->aO(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dolby/DolbyAdvanceSettings;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mn:Z

    return p1
.end method

.method private aO(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 253
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 254
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 257
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mn:Z

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->Xz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/dolby/DsClientSettings;->getVolumeLevellerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/dolby/DsClientSettings;->getDialogEnhancerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/dolby/DsClientSettings;->getHeadphoneVirtualizerOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/dolby/DsClientSettings;->getVolumeLevellerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/dolby/DsClientSettings;->getDialogEnhancerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/dolby/DsClientSettings;->getHeadphoneVirtualizerOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->aO(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcom/android/settings/dolby/DolbyAdvanceSettings;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->addPreferencesFromResource(I)V

    .line 53
    new-instance v0, Landroid/dolby/DsClient;

    invoke-direct {v0}, Landroid/dolby/DsClient;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    .line 54
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XG:Landroid/dolby/IDsClientEvents;

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 57
    const-string v0, "music_volume_leveler"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->Xz:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->Xz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v0, "music_dialogue_enhancer"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XA:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v0, "music_surround_virtualizer"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XB:Landroid/preference/CheckBoxPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string v0, "movie_volume_leveler"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XC:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v0, "movie_dialogue_enhancer"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XD:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string v0, "movie_surround_virtualizer"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XE:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mn:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 93
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    iget-boolean v2, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mn:Z

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 132
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 135
    const/4 v2, 0x0

    .line 137
    :try_start_0
    const-string v6, "music_volume_leveler"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    const/4 v2, 0x1

    .line 139
    iget-object v5, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v3}, Landroid/dolby/DsClientSettings;->setVolumeLevellerOn(Z)V

    move v3, v1

    .line 163
    :goto_1
    if-eq v3, v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v4, v3, v2}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V

    move v0, v1

    .line 165
    goto :goto_0

    .line 141
    :cond_2
    const-string v6, "music_dialogue_enhancer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    const/4 v2, 0x1

    .line 143
    iget-object v5, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v3}, Landroid/dolby/DsClientSettings;->setDialogEnhancerOn(Z)V

    move v3, v1

    goto :goto_1

    .line 145
    :cond_3
    const-string v6, "music_surround_virtualizer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 146
    const/4 v2, 0x1

    .line 147
    iget-object v5, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v3}, Landroid/dolby/DsClientSettings;->setHeadphoneVirtualizerOn(Z)V

    move v3, v1

    goto :goto_1

    .line 149
    :cond_4
    const-string v6, "movie_volume_leveler"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    const/4 v2, 0x0

    .line 151
    iget-object v5, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v3}, Landroid/dolby/DsClientSettings;->setVolumeLevellerOn(Z)V

    move v3, v0

    goto :goto_1

    .line 153
    :cond_5
    const-string v6, "movie_dialogue_enhancer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 154
    const/4 v2, 0x0

    .line 155
    iget-object v5, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v3}, Landroid/dolby/DsClientSettings;->setDialogEnhancerOn(Z)V

    move v3, v0

    goto :goto_1

    .line 157
    :cond_6
    const-string v6, "movie_surround_virtualizer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 158
    const/4 v2, 0x0

    .line 159
    iget-object v5, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v3}, Landroid/dolby/DsClientSettings;->setHeadphoneVirtualizerOn(Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move v3, v0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto/16 :goto_0

    .line 169
    :catch_1
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    :catch_2
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 173
    :catch_3
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_0

    .line 175
    :catch_4
    move-exception v1

    .line 176
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    :catch_5
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 179
    :catch_6
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings;->mo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->refresh()V

    .line 87
    return-void
.end method
