.class public Lcom/android/settings_ext/wifi/WifiShareConnectDialog;
.super Landroid/app/Activity;
.source "WifiShareConnectDialog.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WifiShareConnectDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013b

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 22
    const v0, 0x7f100326

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090ca9

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090caa

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ca8

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ca5

    new-instance v2, Lcom/android/settings_ext/wifi/aB;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/wifi/aB;-><init>(Lcom/android/settings_ext/wifi/WifiShareConnectDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    .line 39
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/settings_ext/wifi/aC;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/aC;-><init>(Lcom/android/settings_ext/wifi/WifiShareConnectDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method
