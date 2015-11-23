.class Lcom/android/settings/ez;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

.field final synthetic rK:Lcom/android/settings/eu;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings/eu;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/settings/ez;->rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iput-object p2, p0, Lcom/android/settings/ez;->rK:Lcom/android/settings/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/ez;->rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->a(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ez;->rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->b(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/ez;->rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->c(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)V

    .line 474
    :goto_0
    return-void

    .line 456
    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ez;->rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/ez;->rK:Lcom/android/settings/eu;

    invoke-static {v1}, Lcom/android/settings/eu;->c(Lcom/android/settings/eu;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ez;->rK:Lcom/android/settings/eu;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->b(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/settings/eu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    .line 458
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/eA;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/eA;-><init>(Lcom/android/settings/ez;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 466
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/eB;

    invoke-direct {v2, p0}, Lcom/android/settings/eB;-><init>(Lcom/android/settings/ez;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method
