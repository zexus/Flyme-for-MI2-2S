.class public Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;

.field private xx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 506
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ext/bP;I)V
    .locals 3

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 509
    iput p2, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->xx:I

    .line 510
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 515
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public gY()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->xx:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 564
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 567
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 537
    if-eqz p1, :cond_3

    .line 538
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->xx:I

    .line 539
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 540
    const-string v0, "key_parent_fragment_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 541
    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings_ext/bP;

    if-nez v1, :cond_2

    .line 545
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must implement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/android/settings_ext/bP;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-static {v0, p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ext/bP;

    iget v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->xx:I

    invoke-interface {v0, v1}, Lcom/android/settings_ext/bP;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 583
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 586
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->b(Lcom/android/settings_ext/SettingsPreferenceFragment;)Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 592
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 572
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 575
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->xx:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 530
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gX()V

    .line 533
    :cond_0
    return-void
.end method
