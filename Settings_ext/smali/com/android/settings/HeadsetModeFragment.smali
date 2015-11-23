.class public Lcom/android/settings_ext/HeadsetModeFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "HeadsetModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private ma:Lmiui/preference/RadioButtonPreference;

.field private mb:Lmiui/preference/RadioButtonPreference;

.field private mc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mc:Ljava/lang/String;

    return-void
.end method

.method private getMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetModeFragment;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mc:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mc:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetModeFragment;->ma:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mb:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 58
    const-string v1, "music"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mb:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->ma:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    const-string v0, "HeadsetModeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mode, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "persist.sys.button_jack_profile"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f060052

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetModeFragment;->addPreferencesFromResource(I)V

    .line 35
    const-string v0, "mode_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->ma:Lmiui/preference/RadioButtonPreference;

    .line 36
    const-string v0, "mode_music"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mb:Lmiui/preference/RadioButtonPreference;

    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->ma:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mb:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mc:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetModeFragment;->ma:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_2

    .line 78
    const-string v0, "volume"

    .line 83
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mc:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings_ext/HeadsetModeFragment;->setMode(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetModeFragment;->refresh()V

    .line 88
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetModeFragment;->mb:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_0

    .line 80
    const-string v0, "music"

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 45
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetModeFragment;->refresh()V

    .line 46
    return-void
.end method
