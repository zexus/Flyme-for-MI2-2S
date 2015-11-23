.class public Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "Memory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static e(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 3

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;-><init>()V

    .line 492
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmClearCache"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 500
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    const v2, 0x7f090431

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 502
    const v2, 0x7f090432

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 504
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;-><init>(Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 517
    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
