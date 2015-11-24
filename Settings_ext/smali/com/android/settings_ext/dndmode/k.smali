.class public Lcom/android/settings_ext/dndmode/k;
.super Landroid/preference/PreferenceFragment;
.source "DoNotDisturbModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private WJ:Lmiui/app/Activity;

.field private WK:Landroid/preference/CheckBoxPreference;

.field private WL:Landroid/preference/PreferenceGroup;

.field private WM:Landroid/preference/CheckBoxPreference;

.field private WN:Landroid/preference/PreferenceScreen;

.field private WO:Landroid/preference/PreferenceScreen;

.field private WP:Landroid/preference/CheckBoxPreference;

.field private WQ:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings_ext/dndmode/l;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/dndmode/l;-><init>(Lcom/android/settings_ext/dndmode/k;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WQ:Landroid/database/ContentObserver;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dndmode/k;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/k;->oT()V

    return-void
.end method

.method private oT()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WK:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    return-void
.end method

.method private oU()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v6

    const-string v3, "type=\'3\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    if-eqz v1, :cond_0

    .line 142
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :goto_0
    return v0

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v6

    .line 147
    goto :goto_0
.end method

.method private oV()V
    .locals 7

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/dndmode/m;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ext/dndmode/m;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/android/settings_ext/dndmode/k;->WN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a74

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->addPreferencesFromResource(I)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->setHasOptionsMenu(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    .line 48
    const-string v0, "key_do_not_disturb_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WK:Landroid/preference/CheckBoxPreference;

    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v0, "key_auto_setting_group"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WL:Landroid/preference/PreferenceGroup;

    .line 51
    const-string v0, "key_auto_button"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WM:Landroid/preference/CheckBoxPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    const-string v0, "key_auto_time_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WN:Landroid/preference/PreferenceScreen;

    .line 54
    const-string v0, "key_vip_call_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WO:Landroid/preference/PreferenceScreen;

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v0, "key_repeated_call_button"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ext/dndmode/k;->WQ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WQ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 160
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 113
    check-cast p2, Ljava/lang/Boolean;

    .line 114
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WK:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 133
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WM:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 118
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WL:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/m;->aK(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/k;->oV()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WL:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setRepeatedCallActionEnable(Landroid/content/Context;Z)V

    .line 127
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090a8a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090a89

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WK:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WO:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090a80

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WL:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/k;->oV()V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090a89

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 109
    :goto_2
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WJ:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WO:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a81

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/k;->oU()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_2
    if-ne v0, v5, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WO:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090a82

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WL:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/k;->WN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/k;->WP:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090a8a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2
.end method
