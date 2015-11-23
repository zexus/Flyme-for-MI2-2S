.class public Lcom/android/settings_ext/HeadsetSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "HeadsetSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ext/view/c;


# instance fields
.field private md:Landroid/preference/PreferenceCategory;

.field private me:Landroid/preference/PreferenceCategory;

.field private mf:Landroid/preference/CheckBoxPreference;

.field private mg:Landroid/preference/CheckBoxPreference;

.field private mh:Landroid/preference/Preference;

.field private mi:Lcom/android/settings_ext/view/GridPreference;

.field private mj:Landroid/preference/Preference;

.field private mk:Lcom/miui/player/a/a/a;

.field private ml:Lcom/android/settings_ext/bQ;

.field private mm:Lcom/android/settings_ext/eM;

.field private mn:Z

.field private final mo:Landroid/content/BroadcastReceiver;

.field private final mp:Lcom/android/settings_ext/eN;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 245
    new-instance v0, Lcom/android/settings_ext/cD;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cD;-><init>(Lcom/android/settings_ext/HeadsetSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mo:Landroid/content/BroadcastReceiver;

    .line 305
    new-instance v0, Lcom/android/settings_ext/cE;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cE;-><init>(Lcom/android/settings_ext/HeadsetSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mp:Lcom/android/settings_ext/eN;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dR()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/HeadsetSettings;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/settings_ext/HeadsetSettings;->mn:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dT()V

    return-void
.end method

.method private dM()Z
    .locals 2

    .prologue
    .line 143
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private dN()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-static {}, Lcom/miui/player/a/a/a;->yE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return v1

    .line 150
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 151
    const-string v2, "hifi_mode"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    const-string v0, "default_hifi_mode=false"

    .line 155
    :cond_1
    const-string v2, "HeadsetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIFI mode get: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private dO()V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dN()Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    return-void
.end method

.method private dP()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/a;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dS()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dQ()V

    .line 188
    :cond_0
    return-void
.end method

.method private dQ()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/a/a/a;->bT(Landroid/content/Context;)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->ml:Lcom/android/settings_ext/bQ;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bQ;->u(I)I

    move-result v0

    .line 193
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mi:Lcom/android/settings_ext/view/GridPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/view/GridPreference;->cC(I)V

    goto :goto_0
.end method

.method private dR()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->isWiredHeadsetOn()Z

    move-result v4

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/a;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dN()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 260
    :goto_0
    const-string v3, "latte"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 261
    iget-object v3, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/player/a/a/a;->bS(Landroid/content/Context;)Z

    move-result v3

    and-int/2addr v3, v0

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 266
    iget-object v5, p0, Lcom/android/settings_ext/HeadsetSettings;->mh:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->me:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mi:Lcom/android/settings_ext/view/GridPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/view/GridPreference;->setEnabled(Z)V

    .line 272
    :cond_0
    invoke-static {}, Lcom/miui/player/a/a/a;->yE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 275
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 256
    goto :goto_0

    :cond_3
    move v1, v2

    .line 267
    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method private dS()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/a/a/a;->bS(Landroid/content/Context;)Z

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->me:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mi:Lcom/android/settings_ext/view/GridPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/view/GridPreference;->setEnabled(Z)V

    .line 282
    return-void
.end method

.method private dT()V
    .locals 3

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    const-string v0, "dolby_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    invoke-virtual {v1}, Lcom/android/settings_ext/eM;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    invoke-virtual {v1}, Lcom/android/settings_ext/eM;->getSelectedProfile()I

    move-result v1

    .line 346
    iget-object v2, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    invoke-virtual {v2}, Lcom/android/settings_ext/eM;->fI()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 347
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    invoke-virtual {v2}, Lcom/android/settings_ext/eM;->fH()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 349
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 352
    :cond_2
    const v1, 0x7f090039

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 356
    :catch_1
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 358
    :catch_2
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 360
    :catch_3
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 362
    :catch_4
    move-exception v0

    .line 363
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 364
    :catch_5
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 366
    :catch_6
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 301
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 302
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/view/GridPreference;I)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->yD()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->ml:Lcom/android/settings_ext/bQ;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/bQ;->v(I)I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/a/a/a;->bT(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {p1}, Lcom/android/settings_ext/view/GridPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/HeadsetSettings;->ml:Lcom/android/settings_ext/bQ;

    invoke-virtual {v2, p2}, Lcom/android/settings_ext/bQ;->v(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/a/a/a;->p(Landroid/content/Context;I)V

    .line 296
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dP()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->addPreferencesFromResource(I)V

    .line 62
    const-string v0, "audio_effect_optimize"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    .line 63
    const-string v0, "dirac_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "hifi_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v0, "headset_type_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->me:Landroid/preference/PreferenceCategory;

    .line 66
    const-string v0, "headsets_grid"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/view/GridPreference;

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mi:Lcom/android/settings_ext/view/GridPreference;

    .line 67
    const-string v0, "equalizer"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mh:Landroid/preference/Preference;

    .line 68
    const-string v0, "dolby_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mj:Landroid/preference/Preference;

    .line 70
    invoke-static {}, Lcom/miui/player/a/a/a;->yE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/a;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-static {}, Lcom/miui/player/a/a/a;->yC()Lcom/miui/player/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->initialize()V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    new-instance v0, Lcom/android/settings_ext/bQ;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/bQ;-><init>(Lcom/miui/player/a/a/a;)V

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->ml:Lcom/android/settings_ext/bQ;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mi:Lcom/android/settings_ext/view/GridPreference;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->ml:Lcom/android/settings_ext/bQ;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/view/GridPreference;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mi:Lcom/android/settings_ext/view/GridPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/view/GridPreference;->a(Lcom/android/settings_ext/view/c;)V

    .line 91
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-static {}, Lcom/android/settings_ext/eM;->fG()Lcom/android/settings_ext/eM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mp:Lcom/android/settings_ext/eN;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/eM;->a(Lcom/android/settings_ext/eN;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/eM;->bindDsService(Landroid/content/Context;)Z

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mh:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->me:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->md:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mj:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mm:Lcom/android/settings_ext/eM;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/eM;->unBindDsService(Landroid/content/Context;)V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/a;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/HeadsetSettings;->mo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->release()V

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 132
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->yD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    iget-object v2, p0, Lcom/android/settings_ext/HeadsetSettings;->mg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/a/a/a;->x(Landroid/content/Context;Z)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dP()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dR()V

    .line 242
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hifi_mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 217
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 219
    if-nez v2, :cond_2

    .line 220
    const-string v2, "hifi_volume"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 223
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 224
    const-string v5, "HeadsetSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get non-hifi volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", max:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-le v4, v2, :cond_2

    .line 226
    const/16 v4, 0x8

    invoke-virtual {v0, v8, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 227
    const-string v0, "HeadsetSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set non-hifi volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    const-string v2, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "command"

    const-string v4, "toggleHiFi"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "hifi_state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dP()V

    .line 237
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dR()V

    .line 238
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dO()V

    .line 239
    const-string v0, "HeadsetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HIFI mode change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v0, "calibrate"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    :goto_0
    const/4 v0, 0x1

    .line 180
    :goto_1
    return v0

    .line 171
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f090015

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/HeadsetSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/HeadsetCalibrateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/HeadsetSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/a;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/HeadsetSettings;->mk:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->initialize()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ext/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/HeadsetSettings;->mo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dP()V

    .line 115
    :cond_0
    invoke-static {}, Lcom/miui/player/a/a/a;->yE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dO()V

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dR()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ext/HeadsetSettings;->dT()V

    .line 123
    :cond_2
    return-void
.end method
