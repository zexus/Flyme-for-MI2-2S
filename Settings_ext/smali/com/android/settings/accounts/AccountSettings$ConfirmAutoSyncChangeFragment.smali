.class public Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# instance fields
.field private BG:Z

.field private zA:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 546
    iput-boolean p1, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->BG:Z

    .line 547
    iput-object p2, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->zA:Landroid/os/UserHandle;

    .line 548
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->BG:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->zA:Landroid/os/UserHandle;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 555
    if-eqz p1, :cond_0

    .line 556
    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->BG:Z

    .line 559
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->BG:Z

    if-nez v0, :cond_1

    .line 561
    const v0, 0x7f09087c

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 562
    const v0, 0x7f09087d

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 568
    :goto_0
    const v0, 0x104000a

    new-instance v2, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 575
    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 564
    :cond_1
    const v0, 0x7f09087a

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 565
    const v0, 0x7f09087b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 583
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->BG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    return-void
.end method
