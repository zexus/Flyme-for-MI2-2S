.class public Lcom/android/settings/MiuiSecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private cH:Lcom/android/settings/ap;

.field private cI:Landroid/app/admin/DevicePolicyManager;

.field private rg:Landroid/preference/ListPreference;

.field private rh:Landroid/preference/CheckBoxPreference;

.field private ri:Landroid/preference/CheckBoxPreference;

.field private rj:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private C(Z)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->y(Z)V

    .line 203
    return-void
.end method

.method private a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 288
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v0

    .line 290
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 291
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 292
    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    move v1, v0

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    aget-object v0, v2, v1

    return-object v0
.end method

.method private e(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 251
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private fl()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v0}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 207
    const v1, 0x8000

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x10000

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x20000

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x60000

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x40000

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x50000

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fm()V
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 258
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fo()V

    .line 261
    return-void
.end method

.method private fn()V
    .locals 8

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 266
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    .line 268
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 270
    const-string v0, ""

    .line 280
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 281
    const v0, 0x7f090af4

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    return-void

    .line 272
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    .line 274
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f09039a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fo()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 303
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 304
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 338
    :goto_1
    return-void

    :cond_0
    move-wide v2, v4

    .line 303
    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 308
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 309
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 310
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 311
    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 312
    aget-object v8, v5, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 313
    cmp-long v8, v8, v2

    if-gtz v8, :cond_2

    .line 314
    aget-object v8, v4, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 318
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v4

    if-ne v0, v4, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v5

    if-eq v0, v4, :cond_5

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 320
    iget-object v5, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 322
    iget-object v5, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 324
    int-to-long v8, v4

    cmp-long v0, v8, v2

    if-gtz v0, :cond_7

    .line 325
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 337
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 326
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private y(Z)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 196
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->cH:Lcom/android/settings/ap;

    .line 68
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->cI:Landroid/app/admin/DevicePolicyManager;

    .line 69
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f04009e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 343
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fn()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 217
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v1}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->y(Z)V

    .line 247
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 222
    :cond_1
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rj:Z

    if-eqz v0, :cond_2

    const v5, 0x7f090e34

    .line 225
    :goto_1
    const-string v2, "com.android.settings.MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment"

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 223
    :cond_2
    const v5, 0x7f090e35

    goto :goto_1

    .line 227
    :cond_3
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->e(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 229
    :cond_4
    const-string v2, "power_button_instantly_locks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 230
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->e(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_0

    .line 231
    :cond_5
    const-string v1, "bluetooth_unlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    const-string v2, "com.android.settings.MiuiSecurityBluetoothSettingsFragment"

    const v5, 0x7f090d54

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 234
    :cond_6
    const-string v1, "smartcover_sensitive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 235
    const-string v2, "com.android.settings.MiuiSmartCoverSettingsFragment"

    const v5, 0x7f090d8c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 237
    :cond_7
    const-string v1, "owner_info_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 238
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 239
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "com.android.settings.OwnerInfoSettings"

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 241
    :cond_8
    const-string v1, "wakeup_for_keyguard_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup_for_keyguard_notification"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 91
    :cond_0
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 93
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 96
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v0, "screen_timeout"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    .line 101
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rg:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fm()V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fn()V

    .line 106
    :cond_1
    const-string v0, "screen_on_proximity_sensor"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 108
    const-string v3, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 109
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v0}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 119
    iget-object v3, p0, Lcom/android/settings/MiuiSecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/settings/MiuiSecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/MiuiSecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_3

    .line 129
    :cond_3
    new-instance v0, Lcom/android/settings/cu;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/cu;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0}, Lcom/android/settings/cu;->dD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rj:Z

    .line 131
    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->rj:Z

    if-eqz v0, :cond_8

    const v0, 0x7f090e34

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fl()Z

    move-result v0

    if-nez v0, :cond_9

    .line 136
    const-string v0, "bluetooth_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 154
    :cond_4
    :goto_2
    const-string v0, "smartcover_sensitive"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 156
    const-string v0, "support_small_win_cover"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 157
    const-string v0, "security_second_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    const-string v0, "support_hall_sensor"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 160
    const v0, 0x7f090d8c

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 161
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 162
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    new-instance v0, Lcom/android/settings/er;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/er;-><init>(Lcom/android/settings/MiuiSecuritySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    const-string v0, "security_second_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_6
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    const-string v0, "bluetooth_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v2, 0x7f090d56

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 184
    :goto_3
    const-string v0, "wakeup_for_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wakeup_for_keyguard_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    return-void

    .line 113
    :cond_7
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_screen_on_proximity_sensor"

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11090013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 131
    :cond_8
    const v0, 0x7f090e35

    goto/16 :goto_1

    .line 141
    :cond_9
    const-string v0, "bluetooth_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_lock_before_unlock"

    sget-boolean v4, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    invoke-static {v0, v3, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    iget-object v3, p0, Lcom/android/settings/MiuiSecuritySettings;->ri:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 148
    if-nez v0, :cond_4

    .line 149
    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->C(Z)V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto :goto_4

    .line 181
    :cond_b
    const-string v0, "bluetooth_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v2, 0x7f090d55

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3
.end method
