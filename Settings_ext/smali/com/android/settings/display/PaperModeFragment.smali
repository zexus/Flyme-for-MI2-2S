.class public Lcom/android/settings/display/PaperModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/display/z;


# instance fields
.field private VC:Landroid/database/ContentObserver;

.field private VD:Landroid/preference/CheckBoxPreference;

.field private pC:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeFragment;)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->oG()I

    move-result v0

    return v0
.end method

.method private aA(Z)V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 178
    return-void
.end method

.method public static aI(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/display/PaperModeFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->VD:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private bx(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->oF()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 182
    const-string v0, "persist.sys.eyecare_cache"

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->oG()I

    move-result v0

    .line 185
    if-ne v0, v2, :cond_0

    .line 186
    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method private by(I)V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    return-void
.end method

.method private oF()I
    .locals 2

    .prologue
    .line 192
    const-string v0, "persist.sys.eyecare_cache"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private oG()I
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lmiui/preference/RadioButtonPreference;)V
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "pape_mode_local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-class v0, Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f090c53

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/display/PaperModeFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 167
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->addPreferencesFromResource(I)V

    .line 80
    const-string v0, "paper_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->aI(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v1, "paper_mode_update_pkg_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->VD:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->VD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/display/d;->aA(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->VD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    const-string v1, "paper_mode_adjust_level"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SeekBarPreference;

    .line 89
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 90
    invoke-virtual {v1}, Lcom/android/settings/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "paper_mode_adjust_level"

    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->oF()I

    move-result v6

    mul-int/lit8 v6, v6, 0xe

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 92
    invoke-virtual {v1, v3}, Lcom/android/settings/SeekBarPreference;->J(Z)V

    .line 93
    invoke-virtual {v1, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v1, "pape_mode_global"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/PaperModePreference;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->oG()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 97
    invoke-virtual {v1, p0}, Lcom/android/settings/display/PaperModePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v2, "pape_mode_local"

    invoke-virtual {p0, v2}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/PaperModePreference;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->oG()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 100
    invoke-virtual {v2, p0}, Lcom/android/settings/display/PaperModePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    invoke-virtual {v2, p0}, Lcom/android/settings/display/PaperModePreference;->a(Lcom/android/settings/display/z;)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/android/settings/display/PaperModePreference;->setShowRightArrow(Z)V

    .line 104
    new-instance v3, Lcom/android/settings/display/w;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v5, v0}, Lcom/android/settings/display/w;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;Landroid/preference/CheckBoxPreference;)V

    iput-object v3, p0, Lcom/android/settings/display/PaperModeFragment;->pC:Landroid/database/ContentObserver;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_paper_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/display/PaperModeFragment;->pC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    new-instance v0, Lcom/android/settings/display/x;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/display/x;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;Lcom/android/settings/display/PaperModePreference;Lcom/android/settings/display/PaperModePreference;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->VC:Landroid/database/ContentObserver;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->VC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    return-void

    :cond_0
    move v2, v4

    .line 96
    goto :goto_0

    :cond_1
    move v5, v4

    .line 99
    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 208
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011e

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 210
    const v0, 0x7f1000b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 211
    const v1, 0x7f090c4c

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 212
    const v1, 0x7f100043

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    const v3, 0x7f090c4b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    const v3, 0x7f090c4a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090c4d

    new-instance v5, Lcom/android/settings/display/y;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/display/y;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->pC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->VC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    iput-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->pC:Landroid/database/ContentObserver;

    .line 239
    iput-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->VC:Landroid/database/ContentObserver;

    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 241
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "paper_mode_enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->aA(Z)V

    :cond_0
    :goto_0
    move v0, v1

    .line 145
    :goto_1
    return v0

    .line 134
    :cond_1
    const-string v3, "paper_mode_update_pkg_list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/display/d;->aA(Landroid/content/Context;)Z

    move-result v2

    .line 136
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/display/d;->aB(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->showDialog(I)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v3, v0}, Lcom/android/settings/display/d;->l(Landroid/content/Context;Z)V

    goto :goto_0

    .line 141
    :cond_4
    const-string v0, "paper_mode_adjust_level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    int-to-float v0, v0

    const/high16 v2, 0x40e00000    # 7.0f

    add-float/2addr v0, v2

    const/high16 v2, 0x41600000    # 14.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->bx(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "pape_mode_global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->by(I)V

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->VC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 157
    return v2

    .line 153
    :cond_1
    const-string v1, "pape_mode_local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->by(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 246
    return-void
.end method
