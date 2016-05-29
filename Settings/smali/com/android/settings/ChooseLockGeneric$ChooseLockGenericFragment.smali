.class public Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings_ext/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 555
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 397
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings_ext/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const-string v4, ":settings:show_fragment_title"

    const v5, 0x7f09015f

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const/4 v3, 0x1

    .line 406
    .local v3, "showTutorial":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 410
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    return-object v1
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 511
    const v0, 0x7f09017d

    :goto_0
    return v0

    .line 502
    :sswitch_0
    const v0, 0x7f09017a

    goto :goto_0

    .line 505
    :sswitch_1
    const v0, 0x7f09017b

    goto :goto_0

    .line 509
    :sswitch_2
    const v0, 0x7f09017c

    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    iput p1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 182
    iput-boolean p2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 187
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 188
    .local v0, "accEn":Z
    iget-object v5, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v3

    .line 189
    .local v3, "required":Z
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v2

    .line 190
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x66

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "required":Z
    :goto_0
    return-void

    .line 192
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 521
    const v2, 0x16058

    invoke-static {v2, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 523
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    move v0, v1

    .line 545
    :goto_1
    return v0

    .line 526
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    invoke-virtual {p0, v0, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 529
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    const v2, 0x8000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 532
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 535
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 538
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 542
    :cond_5
    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown unlock method to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v1

    .line 550
    .local v1, "title":I
    invoke-static {v1, p1}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 552
    .local v0, "dialog":Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 359
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    :cond_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 368
    const v5, 0x7f090617

    invoke-virtual {p0, v5}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 371
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 372
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 373
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 374
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 372
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :sswitch_0
    const-string v7, "unlock_set_pattern"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "unlock_set_pin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "unlock_set_password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 378
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 374
    :sswitch_data_0
    .sparse-switch
        -0x75461c3 -> :sswitch_1
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 248
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 250
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 251
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 252
    .local v0, "allowBiometric":Landroid/util/MutableBoolean;
    invoke-direct {p0, v3, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result v3

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 254
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 257
    :cond_0
    const v4, 0x7f060038

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 258
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILandroid/util/MutableBoolean;)V

    .line 259
    invoke-direct {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 263
    .end local v0    # "allowBiometric":Landroid/util/MutableBoolean;
    .end local v2    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILandroid/util/MutableBoolean;)I
    .locals 0
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 269
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 275
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 276
    move p1, v0

    .line 278
    :cond_0
    return p1
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 284
    const/high16 p1, 0x10000

    .line 287
    :cond_0
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(ILandroid/util/MutableBoolean;)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V

    .line 300
    return-void
.end method

.method protected disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V
    .locals 15
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;
    .param p3, "hideDisabled"    # Z

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 312
    .local v2, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 313
    .local v4, "intent":Landroid/content/Intent;
    const-string v13, "lockscreen.biometric_weak_fallback"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 315
    .local v7, "onlyShowFallback":Z
    iget-object v13, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ext/ChooseLockSettingsHelper;

    invoke-virtual {v13}, Lcom/android/settings_ext/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    .line 319
    .local v12, "weakBiometricAvailable":Z
    const-string v13, "user"

    invoke-virtual {p0, v13}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 320
    .local v6, "mUm":Landroid/os/UserManager;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 321
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v9, 0x1

    .line 323
    .local v9, "singleUser":Z
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_13

    .line 324
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 325
    .local v8, "pref":Landroid/preference/Preference;
    instance-of v13, v8, Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_3

    move-object v13, v8

    .line 326
    check-cast v13, Landroid/preference/PreferenceScreen;

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 328
    .local v1, "enabled":Z
    const/4 v11, 0x1

    .line 329
    .local v11, "visible":Z
    const-string v13, "unlock_set_off"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 330
    if-gtz p1, :cond_5

    const/4 v1, 0x1

    .line 331
    :goto_2
    move v11, v9

    .line 345
    :cond_0
    :goto_3
    if-eqz p3, :cond_1

    .line 346
    if-eqz v11, :cond_11

    if-eqz v1, :cond_11

    const/4 v11, 0x1

    .line 348
    :cond_1
    :goto_4
    if-eqz v11, :cond_2

    if-eqz v7, :cond_12

    invoke-direct {p0, v5}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 349
    :cond_2
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    .end local v1    # "enabled":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v11    # "visible":Z
    :cond_3
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 321
    .end local v3    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v9    # "singleUser":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 330
    .restart local v1    # "enabled":Z
    .restart local v3    # "i":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "pref":Landroid/preference/Preference;
    .restart local v9    # "singleUser":Z
    .restart local v11    # "visible":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 332
    :cond_6
    const-string v13, "unlock_set_none"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 333
    if-gtz p1, :cond_7

    const/4 v1, 0x1

    :goto_6
    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    .line 334
    :cond_8
    const-string v13, "unlock_set_biometric_weak"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 335
    const v13, 0x8000

    move/from16 v0, p1

    if-le v0, v13, :cond_9

    move-object/from16 v0, p2

    iget-boolean v13, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v13, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 337
    :goto_7
    move v11, v12

    goto :goto_3

    .line 335
    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    .line 338
    :cond_b
    const-string v13, "unlock_set_pattern"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 339
    const/high16 v13, 0x10000

    move/from16 v0, p1

    if-gt v0, v13, :cond_c

    const/4 v1, 0x1

    :goto_8
    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    .line 340
    :cond_d
    const-string v13, "unlock_set_pin"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 341
    const/high16 v13, 0x30000

    move/from16 v0, p1

    if-gt v0, v13, :cond_e

    const/4 v1, 0x1

    :goto_9
    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    .line 342
    :cond_f
    const-string v13, "unlock_set_password"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 343
    const/high16 v13, 0x60000

    move/from16 v0, p1

    if-gt v0, v13, :cond_10

    const/4 v1, 0x1

    :goto_a
    goto :goto_3

    :cond_10
    const/4 v1, 0x0

    goto :goto_a

    .line 346
    :cond_11
    const/4 v11, 0x0

    goto :goto_4

    .line 350
    :cond_12
    if-nez v1, :cond_3

    .line 351
    const v13, 0x7f090172

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 352
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 356
    .end local v1    # "enabled":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v11    # "visible":Z
    :cond_13
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 429
    invoke-static {p1, p2, p3}, Lcom/android/settings_ext/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 496
    const v0, 0x7f0908dc

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "minLength"    # I
    .param p5, "maxLength"    # I
    .param p6, "requirePasswordToDecrypt"    # Z
    .param p7, "confirmCredentials"    # Z

    .prologue
    .line 417
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ext/ChooseLockPassword;->createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFallback"    # Z
    .param p3, "requirePassword"    # Z
    .param p4, "confirmCredentials"    # Z

    .prologue
    .line 423
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ext/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    iput-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 216
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 217
    iput-boolean v3, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 232
    :goto_0
    return-void

    .line 219
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ext/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ext/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 223
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 225
    const-string v0, "extra_require_password"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 227
    iget v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 114
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 115
    new-instance v2, Lcom/android/settings_ext/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings_ext/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ext/ChooseLockSettingsHelper;

    .line 116
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ext/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 122
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 127
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 128
    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 129
    const-string v2, "encrypt_requested_quality"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 130
    const-string v2, "encrypt_requested_disabled"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_4

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 146
    :cond_2
    :goto_1
    return-void

    .line 122
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_2

    .line 137
    new-instance v1, Lcom/android/settings_ext/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ext/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 139
    .local v1, "helper":Lcom/android/settings_ext/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/settings_ext/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 140
    iput-boolean v3, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 143
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 203
    .local v1, "onlyShowFallback":Z
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400d4

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "header":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 209
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 151
    iget-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 155
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 12
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v11, 0x2000000

    const/16 v10, 0x65

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 443
    iget-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to update password without confirming it"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 450
    .local v3, "isFallback":Z
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result p1

    .line 452
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 453
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 455
    .local v4, "minLength":I
    const/4 v0, 0x4

    if-ge v4, v0, :cond_1

    .line 456
    const/4 v4, 0x4

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    .line 459
    .local v5, "maxLength":I
    iget-boolean v6, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v8

    .line 461
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 462
    invoke-virtual {p0, v8, v10}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 492
    .end local v4    # "minLength":I
    .end local v5    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 465
    .restart local v4    # "minLength":I
    .restart local v5    # "maxLength":I
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 466
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 469
    .end local v4    # "minLength":I
    .end local v5    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_5

    .line 470
    iget-boolean v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    invoke-virtual {p0, v1, v3, v0, v7}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v8

    .line 472
    .restart local v8    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 473
    invoke-virtual {p0, v8, v10}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 476
    :cond_4
    iput-boolean v9, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 477
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 480
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    const v0, 0x8000

    if-ne p1, v0, :cond_6

    .line 481
    invoke-direct {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v8

    .line 482
    .restart local v8    # "intent":Landroid/content/Intent;
    iput-boolean v9, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 483
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 484
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    if-nez p1, :cond_7

    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ext/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ext/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ext/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ext/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 490
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method
