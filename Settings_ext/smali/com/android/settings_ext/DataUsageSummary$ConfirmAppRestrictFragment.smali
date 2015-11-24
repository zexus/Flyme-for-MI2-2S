.class public Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2216
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static y(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 3

    .prologue
    .line 2218
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2223
    :goto_0
    return-void

    .line 2220
    :cond_0
    new-instance v0, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;-><init>()V

    .line 2221
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2222
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAppRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2229
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2230
    const v0, 0x7f090877

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2231
    const v0, 0x7f090878

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2233
    const v0, 0x104000a

    new-instance v2, Lcom/android/settings_ext/bk;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/bk;-><init>(Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2242
    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2244
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
