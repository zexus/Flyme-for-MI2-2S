.class public Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;
.super Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;
.source "ChooseGalleryLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected ai()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 29
    return-void
.end method

.method protected aj()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->ds:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 43
    return-void
.end method

.method protected ak()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f090c74

    iput v1, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings_ext/ChooseGalleryLockPattern$ChooseGalleryFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 35
    return-void
.end method
