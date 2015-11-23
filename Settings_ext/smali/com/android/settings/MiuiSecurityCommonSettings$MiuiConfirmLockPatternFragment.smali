.class public Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "MiuiSecurityCommonSettings.java"


# instance fields
.field private qP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->qP:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v1, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->qP:I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;->qP:I

    invoke-static {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings;->a(Landroid/app/Fragment;I)V

    .line 96
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onDetach()V

    .line 97
    return-void
.end method
