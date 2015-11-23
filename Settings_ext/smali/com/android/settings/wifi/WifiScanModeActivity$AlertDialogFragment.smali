.class public Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "WifiScanModeActivity.java"


# instance fields
.field private final avG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->avG:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->avG:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static bT(Ljava/lang/String;)Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;-><init>(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/WifiScanModeActivity;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiScanModeActivity;->a(Lcom/android/settings_ext/wifi/WifiScanModeActivity;)V

    .line 148
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902fc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->avG:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fe

    new-instance v2, Lcom/android/settings_ext/wifi/ag;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/wifi/ag;-><init>(Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902ff

    new-instance v2, Lcom/android/settings_ext/wifi/af;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/wifi/af;-><init>(Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
