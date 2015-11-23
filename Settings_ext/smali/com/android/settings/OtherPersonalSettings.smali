.class public Lcom/android/settings_ext/OtherPersonalSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "OtherPersonalSettings.java"


# instance fields
.field private tG:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private fM()V
    .locals 4

    .prologue
    .line 99
    const-string v0, "locale_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ext/OtherPersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/OtherPersonalSettings;->tG:Landroid/content/SharedPreferences;

    .line 38
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/OtherPersonalSettings;->addPreferencesFromResource(I)V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const-string v2, "support_led_light"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const-string v2, "led_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    const-string v2, "support_headset"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    const-string v2, "headset_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/OtherPersonalSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.printservice.PrintService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x84

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 54
    :cond_2
    const-string v2, "print_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/OtherPersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmiui/util/HandyModeUtils;->getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 58
    const-string v2, "handy_mode_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/OtherPersonalSettings;->tG:Landroid/content/SharedPreferences;

    const-string v3, "show"

    sget-boolean v4, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v4, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    const-string v0, "development_settings"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_6
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_7

    .line 69
    const-string v0, "locale_settings"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/OtherPersonalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-void

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 76
    :cond_8
    const-string v0, "one_key_migrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_9

    .line 78
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :goto_1
    return-void

    .line 80
    :cond_9
    new-instance v1, Lcom/android/settings_ext/fg;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/fg;-><init>(Lcom/android/settings_ext/OtherPersonalSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ext/OtherPersonalSettings;->fM()V

    .line 96
    return-void
.end method
