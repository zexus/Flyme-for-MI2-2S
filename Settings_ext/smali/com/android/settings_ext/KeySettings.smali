.class public Lcom/android/settings_ext/KeySettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private hA:Landroid/view/IWindowManager;

.field private mV:Landroid/preference/ListPreference;

.field private mW:Landroid/preference/ListPreference;

.field private mX:Landroid/preference/ListPreference;

.field private mY:Landroid/preference/ListPreference;

.field private mZ:Landroid/preference/ListPreference;

.field private na:Landroid/preference/CheckBoxPreference;

.field private nb:Landroid/preference/CheckBoxPreference;

.field private nc:Landroid/preference/CheckBoxPreference;

.field private nd:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_key_press_app_switch"

    sget-boolean v4, Landroid/provider/MiuiSettings$System;->SCREEN_KEY_PRESS_APP_SWITCH_DEFAULT:Z

    invoke-static {v0, v3, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 182
    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    :goto_0
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_key_long_press_timeout"

    const/16 v4, 0x1f4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 191
    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    const-string v0, "screen_key_long_press_app_switch"

    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ext/KeySettings;->b(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 195
    const-string v0, "screen_key_long_press_home"

    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ext/KeySettings;->b(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 196
    const-string v0, "screen_key_long_press_back"

    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ext/KeySettings;->b(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_buttons_timeout"

    const/16 v4, 0x1388

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 203
    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->na:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "keyguard_disable_power_key_long_press"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nb:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 213
    iget-object v3, p0, Lcom/android/settings_ext/KeySettings;->nb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "volumekey_wake_screen"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    :cond_2
    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 207
    goto :goto_1

    :cond_5
    move v0, v2

    .line 213
    goto :goto_2

    :cond_6
    move v1, v2

    .line 218
    goto :goto_3
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 5

    .prologue
    .line 164
    const-string v0, "none"

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 168
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/high16 v7, 0x10000

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const v0, 0x7f0b0089

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 72
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const v0, 0x7f0b008a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v1, v0

    .line 76
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ASSIST"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    .line 85
    :cond_2
    const-string v1, "voice_assistant"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 86
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v5, "com.google.android.googlequicksearchbox"

    const-string v6, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 95
    const-string v0, "google_now"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 96
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_4
    const-string v0, "menu_press"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v0, "menu_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 108
    const-string v0, "show_menu"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 109
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 113
    new-array v1, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 115
    const-string v2, "home_long_press"

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    .line 116
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v2, "back_long_press"

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    .line 121
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v0, "screen_key_long_press_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    const-string v0, "disable_power_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->na:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v0, "under_keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->na:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    :cond_5
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->nb:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v0, "support_button_light"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_button_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :goto_2
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->hA:Landroid/view/IWindowManager;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->hA:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_button_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_6
    :goto_3
    return-void

    .line 140
    :cond_7
    const-string v0, "pref_button_light"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->nc:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v0, "button_light_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 152
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 250
    check-cast p2, Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mZ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 259
    check-cast p2, Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_press_app_switch"

    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->mV:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 268
    check-cast p2, Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mW:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_app_switch"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 277
    check-cast p2, Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mX:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_home"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 286
    check-cast p2, Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->mY:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_back"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 295
    check-cast p2, Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/KeySettings;->nd:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->na:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->na:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->nb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 233
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->nb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    invoke-static {v2}, Lcom/android/settings_ext/eK;->F(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 234
    goto :goto_2

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->nc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/settings_ext/KeySettings;->nc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ext/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    if-eqz v2, :cond_5

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ext/KeySettings;->updateState(Z)V

    .line 161
    return-void
.end method
