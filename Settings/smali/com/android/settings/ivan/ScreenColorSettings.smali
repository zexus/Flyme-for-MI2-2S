.class public Lcom/android/settings/ivan/ScreenColorSettings;
.super Landroid/preference/PreferenceActivity;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mScreenColor:Landroid/preference/ListPreference;

.field private mScreenSaturation:Landroid/preference/ListPreference;

.field private mWallpaperImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setSummary(Landroid/preference/ListPreference;I)I
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "value"    # I

    .prologue
    .line 64
    const/4 v4, -0x1

    .line 65
    .local v4, "i":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 66
    .local v3, "entryValue":Ljava/lang/CharSequence;
    add-int/lit8 v4, v4, 0x1

    .line 67
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 68
    .local v2, "entry":I
    if-ne p2, v2, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, "entries":[Ljava/lang/CharSequence;
    aget-object v7, v1, v4

    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entry":I
    .end local v3    # "entryValue":Ljava/lang/CharSequence;
    :cond_0
    return v4

    .line 65
    .restart local v2    # "entry":I
    .restart local v3    # "entryValue":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setValue(Landroid/preference/ListPreference;I)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "value"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ivan/ScreenColorSettings;->setSummary(Landroid/preference/ListPreference;I)I

    move-result v0

    .line 58
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f0400a3

    invoke-virtual {p0, v1}, Lcom/android/settings/ivan/ScreenColorSettings;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/ivan/ScreenColorSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0909f3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 45
    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/android/settings/ivan/ScreenColorSettings;->addPreferencesFromResource(I)V

    .line 46
    const v1, 0x7f0f017e

    invoke-virtual {p0, v1}, Lcom/android/settings/ivan/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mWallpaperImage:Landroid/widget/ImageView;

    .line 48
    const-string v1, "screen_color"

    invoke-virtual {p0, v1}, Lcom/android/settings/ivan/ScreenColorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenColor:Landroid/preference/ListPreference;

    .line 49
    const-string v1, "screen_saturation"

    invoke-virtual {p0, v1}, Lcom/android/settings/ivan/ScreenColorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenSaturation:Landroid/preference/ListPreference;

    .line 50
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenColor:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenSaturation:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenColor:Landroid/preference/ListPreference;

    const-string v2, "persist.sys.display_prefer"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ivan/ScreenColorSettings;->setValue(Landroid/preference/ListPreference;I)V

    .line 53
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenSaturation:Landroid/preference/ListPreference;

    const-string v2, "persist.sys.display_ce"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ivan/ScreenColorSettings;->setValue(Landroid/preference/ListPreference;I)V

    .line 54
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "key":Ljava/lang/String;
    const-string v1, "screen_color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string v2, "persist.sys.display_prefer"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenColor:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ivan/ScreenColorSettings;->setValue(Landroid/preference/ListPreference;I)V

    .line 95
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 90
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v1, "screen_saturation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v2, "persist.sys.display_ce"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mScreenSaturation:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ivan/ScreenColorSettings;->setValue(Landroid/preference/ListPreference;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 80
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/ivan/ScreenColorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 81
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    iget-object v1, p0, Lcom/android/settings/ivan/ScreenColorSettings;->mWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method
