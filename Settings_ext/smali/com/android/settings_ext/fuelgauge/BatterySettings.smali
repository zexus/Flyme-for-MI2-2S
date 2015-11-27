.class public Lcom/android/settings_ext/fuelgauge/BatterySettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "BatterySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aaA:Landroid/database/ContentObserver;

.field private aau:Landroid/preference/ListPreference;

.field private aav:Landroid/preference/ListPreference;

.field private aaw:Landroid/preference/PreferenceCategory;

.field private aax:Landroid/preference/ListPreference;

.field private aay:Landroid/preference/Preference;

.field private aaz:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings_ext/fuelgauge/BatterySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/fuelgauge/BatterySettings$1;-><init>(Lcom/android/settings_ext/fuelgauge/BatterySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaA:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/fuelgauge/BatterySettings;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->pq()V

    return-void
.end method

.method private pq()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "persist.sys.aries.power_profile"

    const-string v1, "middle"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method

.method private pr()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    :try_start_0
    const-string v1, "com.mediatek.gemini.GeminiPowerUsageSummary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    .line 68
    const-string v0, "battery_indicator_style"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    .line 69
    const-string v0, "power_center"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aay:Landroid/preference/Preference;

    .line 70
    const-string v0, "power_hide_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaz:Landroid/preference/PreferenceScreen;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    #invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const-string v0, "performance_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaw:Landroid/preference/PreferenceCategory;

    .line 74
    const-string v0, "power_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    sget-object v1, Landroid/provider/MiuiSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string v0, "fluency_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aax:Landroid/preference/ListPreference;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aay:Landroid/preference/Preference;

    #invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    iput-object v3, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aay:Landroid/preference/Preference;

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_HIDE_MODE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaz:Landroid/preference/PreferenceScreen;

    #invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    iput-object v3, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaz:Landroid/preference/PreferenceScreen;

    .line 93
    :cond_1
    const-string v0, "support_power_mode"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    iput-object v3, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    .line 103
    :goto_0
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteModeSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aax:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    iput-object v3, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aax:Landroid/preference/ListPreference;

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aax:Landroid/preference/ListPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    if-nez v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaw:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/fc;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    #invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    iput-object v3, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    .line 119
    :cond_4
    return-void

    .line 97
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaA:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "support_power_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aaA:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 141
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "battery_indicator_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_1
    const-string v1, "power_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    check-cast p2, Ljava/lang/String;

    .line 184
    const-string v0, "persist.sys.aries.power_profile"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "power_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aav:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 147
    const-string v0, "power_usage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->pr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v2, "com.mediatek.gemini.GeminiPowerUsageSummary"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f090b39

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 167
    :goto_0
    return v0

    .line 152
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 156
    goto :goto_0

    .line 160
    :cond_1
    const-string v0, "power_center"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.POWER_MANAGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    :cond_2
    const-string v0, "power_hide_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.POWER_HIDE_MODE_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_indicator_style"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings;->aau:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->pq()V

    .line 133
    return-void
.end method