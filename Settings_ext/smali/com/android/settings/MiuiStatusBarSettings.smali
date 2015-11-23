.class public Lcom/android/settings/MiuiStatusBarSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private sA:Z

.field private st:Landroid/preference/CheckBoxPreference;

.field private su:Landroid/preference/CheckBoxPreference;

.field private sv:Landroid/preference/CheckBoxPreference;

.field private sw:Landroid/preference/CheckBoxPreference;

.field private sx:Landroid/preference/CheckBoxPreference;

.field private sy:Landroid/preference/CheckBoxPreference;

.field private sz:Lmiui/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private E(Z)V
    .locals 2

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->addPreferencesFromResource(I)V

    .line 64
    const-string v0, "show_notification_icon"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->st:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v0, "show_network_speed"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->su:Landroid/preference/CheckBoxPreference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->su:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sA:Z

    .line 73
    const-string v0, "custom_carrier"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sz:Lmiui/preference/ValuePreference;

    .line 74
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sz:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 76
    const-string v0, "show_carrier"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sA:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sz:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    const-string v0, "show_screenshot_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sw:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isScreenshotNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    const-string v0, "toggle_collapse_after_clicked"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sx:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    const-string v0, "expandable_under_keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sv:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "show_network_speed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setShowNetworkSpeed(Landroid/content/Context;Z)V

    .line 148
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_1
    const-string v1, "show_carrier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Landroid/app/MiuiStatusBarManager;->setShowCarrier(Landroid/content/Context;Z)V

    .line 134
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->E(Z)V

    goto :goto_0

    .line 136
    :cond_2
    const-string v1, "expandable_under_keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguard(Landroid/content/Context;Z)V

    goto :goto_0

    .line 139
    :cond_3
    const-string v1, "toggle_collapse_after_clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setCollapseAfterClicked(Landroid/content/Context;Z)V

    goto :goto_0

    .line 142
    :cond_4
    const-string v1, "show_screenshot_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->enableScreenshotNotification(Landroid/content/Context;Z)V

    goto :goto_0

    .line 145
    :cond_5
    const-string v1, "show_notification_icon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setShowNotificationIcon(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sz:Lmiui/preference/ValuePreference;

    if-ne p2, v0, :cond_0

    .line 154
    const-string v2, "com.android.settings.CarrierCustomEditFragment"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sA:Z

    if-eqz v0, :cond_1

    const v5, 0x7f090060

    :goto_0
    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiStatusBarSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 154
    :cond_1
    const v5, 0x7f090065

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->su:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status_bar_custom_carrier"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 111
    aget-object v1, v4, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v4, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 111
    goto :goto_1

    :cond_1
    const-string v1, " | "

    goto :goto_2

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sz:Lmiui/preference/ValuePreference;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isShowCarrier(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->sy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiStatusBarSettings;->E(Z)V

    .line 116
    return-void
.end method
