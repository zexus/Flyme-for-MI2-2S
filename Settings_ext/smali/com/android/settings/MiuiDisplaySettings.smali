.class public Lcom/android/settings/MiuiDisplaySettings;
.super Lcom/android/settings/DisplaySettings;
.source "MiuiDisplaySettings.java"


# instance fields
.field private pA:Landroid/preference/CheckBoxPreference;

.field private pB:Lcom/android/settings/display/ResolutionListPreference;

.field private pC:Landroid/database/ContentObserver;

.field private pw:Landroid/preference/CheckBoxPreference;

.field private px:Lcom/android/settings/eK;

.field private py:Landroid/preference/CheckBoxPreference;

.field private pz:Lmiui/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->eH()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->y(Z)V

    return-void
.end method

.method private eH()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "screen_paper_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->aI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090c43

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 171
    :cond_0
    return-void

    .line 169
    :cond_1
    const v1, 0x7f090c44

    goto :goto_0
.end method

.method private y(Z)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_effect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 54
    const-string v1, "support_screen_effect"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    const v1, 0x7f090c3d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 56
    const-string v1, "support_screen_optimize"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const v1, 0x7f090c40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 64
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->px:Lcom/android/settings/eK;

    .line 65
    const-string v0, "touch_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 67
    const-string v1, "touch_sensitive"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "support_touch_sensitive"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 69
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    iput-object v6, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    .line 75
    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_1
    const-string v0, "line_breaking"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->py:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v0, "miui_screensaver"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pz:Lmiui/preference/ValuePreference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pz:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 86
    const-string v0, "gesture_wakeup"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v0, "support_gesture_wakeup"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    :goto_2
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :cond_2
    const-string v0, "screen_resolution"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ResolutionListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pB:Lcom/android/settings/display/ResolutionListPreference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pB:Lcom/android/settings/display/ResolutionListPreference;

    if-eqz v0, :cond_4

    const-string v0, "support_resolution_switch"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_4

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pB:Lcom/android/settings/display/ResolutionListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    iput-object v6, p0, Lcom/android/settings/MiuiDisplaySettings;->pB:Lcom/android/settings/display/ResolutionListPreference;

    .line 109
    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_5

    .line 110
    const-string v0, "font_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    :cond_5
    const-string v0, "support_screen_effect"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    const-string v0, "screen_effect"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_6
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v0

    if-nez v0, :cond_c

    .line 124
    const-string v0, "screen_paper_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_7

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_7
    :goto_3
    return-void

    .line 60
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 72
    :cond_9
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->px:Lcom/android/settings/eK;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/eK;->y(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 90
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    invoke-static {v0, v1, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 93
    :cond_b
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 129
    :cond_c
    new-instance v0, Lcom/android/settings/dG;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dG;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pC:Landroid/database/ContentObserver;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->pC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 199
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090af0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090af1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090af2

    new-instance v2, Lcom/android/settings/dH;

    invoke-direct {v2, p0}, Lcom/android/settings/dH;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090af3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pC:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pC:Landroid/database/ContentObserver;

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onDestroy()V

    .line 163
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->px:Lcom/android/settings/eK;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiDisplaySettings;->pw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/eK;->d(Landroid/content/Context;Z)V

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->y(Z)V

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->py:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 182
    const-string v1, "persist.sys.line_breaking"

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->py:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/settings/cB;->x(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->pA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screensaver_activate_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->pz:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_1

    const v0, 0x7f090d03

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->eH()V

    .line 154
    return-void

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_1
    const v0, 0x7f090d04

    goto :goto_1
.end method
