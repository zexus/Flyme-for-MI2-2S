.class public Lcom/android/settings_ext/MiuiWallpaperTypeSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "MiuiWallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private fC()V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->fD()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 23
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->fE()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 24
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->fF()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 26
    return-void
.end method

.method private fD()Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    const-string v1, "REQUEST_RESOURCE_CODE"

    const-string v2, "wallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 35
    const v0, 0x7f090b00

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 36
    return-object v1
.end method

.method private fE()Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    const-string v1, "REQUEST_RESOURCE_CODE"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 46
    const v0, 0x7f090b01

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 47
    return-object v1
.end method

.method private fF()Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string v1, "com.android.wallpaper.livepicker"

    const-string v2, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 56
    const v0, 0x7f090b02

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->addPreferencesFromResource(I)V

    .line 16
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiWallpaperTypeSettings;->fC()V

    .line 17
    return-void
.end method
