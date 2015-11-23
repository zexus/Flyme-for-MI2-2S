.class public Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityChooseUnlock.java"


# instance fields
.field private cH:Lcom/android/settings/ap;

.field private qM:Z

.field private qN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qM:Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 338
    if-eqz p2, :cond_1

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 340
    :goto_0
    const/16 v3, 0xca

    if-ne p1, v3, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    .line 343
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 344
    const-string v4, "miui_security_fragment_result"

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 347
    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 349
    :cond_0
    return-void

    :cond_1
    move v2, v0

    .line 338
    goto :goto_0

    :cond_2
    move v0, v1

    .line 344
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 326
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->cH:Lcom/android/settings/ap;

    invoke-virtual {v0}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xca

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    new-instance v0, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->cH:Lcom/android/settings/ap;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 223
    const-string v2, "common_password_business_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qN:Ljava/lang/String;

    .line 224
    const-string v2, "set_keyguard_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qM:Z

    .line 225
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 226
    invoke-static {v1, v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/SettingsPreferenceFragment;)I

    move-result v0

    .line 227
    if-eq v0, v5, :cond_3

    if-eqz v0, :cond_3

    .line 228
    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->cH:Lcom/android/settings/ap;

    invoke-virtual {v1}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 230
    const/high16 v0, 0x50000

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 234
    invoke-static {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 239
    :sswitch_0
    const v0, 0x8000

    invoke-static {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->c(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 249
    :sswitch_3
    invoke-static {p0, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->d(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 257
    :cond_3
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->addPreferencesFromResource(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->cH:Lcom/android/settings/ap;

    invoke-virtual {v1}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    .line 264
    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_password"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_biometric_weak"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "skip_pattern_unlock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "unlock_set_pattern"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    :cond_5
    if-nez v1, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_biometric_weak"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qN:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->qM:Z

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setKeyguardPasswordQuality(I)V

    .line 287
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 288
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/16 v3, 0xca

    .line 293
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 294
    const/4 v0, 0x1

    .line 296
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const v1, 0x8000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    .line 320
    :goto_0
    return v0

    .line 298
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 300
    const/high16 v1, 0x10000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {p0, v3}, Lcom/android/settings/MiuiSecurityChooseUnlock;->b(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 304
    :cond_2
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 306
    const/high16 v1, 0x20000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 308
    :cond_3
    invoke-static {p0, v3}, Lcom/android/settings/MiuiSecurityChooseUnlock;->c(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 310
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_5

    .line 312
    const/high16 v1, 0x40000

    invoke-static {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILcom/android/settings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 314
    :cond_5
    invoke-static {p0, v3}, Lcom/android/settings/MiuiSecurityChooseUnlock;->d(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 317
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
