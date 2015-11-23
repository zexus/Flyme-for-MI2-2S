.class Lcom/android/settings_ext/eA;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rL:Landroid/content/DialogInterface;

.field final synthetic rM:Lcom/android/settings_ext/ez;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ez;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings_ext/eA;->rM:Lcom/android/settings_ext/ez;

    iput-object p2, p0, Lcom/android/settings_ext/eA;->rL:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 461
    new-instance v0, Lcom/android/settings_ext/et;

    iget-object v1, p0, Lcom/android/settings_ext/eA;->rM:Lcom/android/settings_ext/ez;

    iget-object v1, v1, Lcom/android/settings_ext/ez;->rK:Lcom/android/settings_ext/eu;

    iget-object v2, p0, Lcom/android/settings_ext/eA;->rM:Lcom/android/settings_ext/ez;

    iget-object v2, v2, Lcom/android/settings_ext/ez;->rJ:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ext/et;-><init>(Lcom/android/settings_ext/eu;Landroid/app/Activity;Lcom/android/settings_ext/es;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/et;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ext/eA;->rL:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 464
    return-void
.end method
