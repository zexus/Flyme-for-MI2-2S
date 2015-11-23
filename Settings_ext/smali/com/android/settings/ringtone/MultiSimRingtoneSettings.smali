.class public Lcom/android/settings/ringtone/MultiSimRingtoneSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiSimRingtoneSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aih:Landroid/preference/CheckBoxPreference;

.field private aii:Landroid/preference/PreferenceCategory;

.field private aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

.field private aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

.field private ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

.field private aim:I

.field private ain:I

.field private aio:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mRingtoneType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    .line 39
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    .line 40
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 41
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 42
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 44
    iput v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    .line 45
    iput v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aim:I

    .line 46
    iput v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ain:I

    .line 48
    new-instance v0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;-><init>(Lcom/android/settings/ringtone/MultiSimRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aio:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ringtone/MultiSimRingtoneSettings;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ju()V

    return-void
.end method

.method private ju()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->ci(I)V

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 151
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aim:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->ci(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ain:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->ci(I)V

    goto :goto_0
.end method

.method private rw()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "ringtone_uniform_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-static {v0, v1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    :goto_0
    const-string v0, "ringtone_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aii:Landroid/preference/PreferenceCategory;

    .line 83
    const-string v0, "ringtone_0"

    invoke-virtual {p0, v0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v0, "ringtone_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 86
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v0, "ringtone_2"

    invoke-virtual {p0, v0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 88
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 129
    if-eqz p3, :cond_0

    .line 130
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 131
    if-nez p1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    .line 60
    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->finish()V

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-static {v0, v2}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aim:I

    .line 67
    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-static {v0, v3}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ain:I

    .line 68
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->rw()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 101
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aio:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 102
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    iget-object v3, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aih:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lmiui/util/SimRingtoneUtils;->setDefaultSoundUniform(Landroid/content/Context;IZ)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ju()V

    .line 111
    :cond_0
    return v1

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    if-ne p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aij:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->rp()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    if-ne p1, v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aik:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->rp()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ail:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->rp()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 94
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->aio:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->ju()V

    .line 96
    return-void
.end method
