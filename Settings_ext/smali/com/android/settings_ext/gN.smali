.class Lcom/android/settings_ext/gN;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field final synthetic yH:Lcom/android/settings_ext/gU;

.field final synthetic yI:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/settings_ext/gN;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/gN;->yH:Lcom/android/settings_ext/gU;

    iput-object p3, p0, Lcom/android/settings_ext/gN;->yI:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 665
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ext/gN;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 666
    iget-object v1, p0, Lcom/android/settings_ext/gN;->yH:Lcom/android/settings_ext/gU;

    invoke-static {v1}, Lcom/android/settings_ext/gU;->e(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/gN;->yH:Lcom/android/settings_ext/gU;

    invoke-static {v1, v2}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gU;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 667
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings_ext/gO;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/gO;-><init>(Lcom/android/settings_ext/gN;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings_ext/gP;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/gP;-><init>(Lcom/android/settings_ext/gN;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 683
    return-void
.end method
