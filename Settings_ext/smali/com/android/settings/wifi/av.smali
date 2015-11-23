.class public Lcom/android/settings/wifi/av;
.super Landroid/app/DialogFragment;
.source "WifiSetupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 282
    return-void
.end method

.method public static dk(I)Lcom/android/settings/wifi/av;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    const-string v1, "messageRes"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    new-instance v1, Lcom/android/settings/wifi/av;

    invoke-direct {v1}, Lcom/android/settings/wifi/av;-><init>()V

    .line 276
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/av;->setArguments(Landroid/os/Bundle;)V

    .line 277
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/settings/wifi/av;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageRes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/av;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09030a

    new-instance v2, Lcom/android/settings/wifi/ax;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/ax;-><init>(Lcom/android/settings/wifi/av;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09030b

    new-instance v2, Lcom/android/settings/wifi/aw;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/aw;-><init>(Lcom/android/settings/wifi/av;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
