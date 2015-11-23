.class Lcom/android/settings/gO;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic yJ:Lcom/android/settings/gN;


# direct methods
.method constructor <init>(Lcom/android/settings/gN;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/settings/gO;->yJ:Lcom/android/settings/gN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 670
    new-instance v0, Lcom/android/settings/gT;

    iget-object v1, p0, Lcom/android/settings/gO;->yJ:Lcom/android/settings/gN;

    iget-object v1, v1, Lcom/android/settings/gN;->yE:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings/gO;->yJ:Lcom/android/settings/gN;

    iget-object v2, v2, Lcom/android/settings/gN;->yH:Lcom/android/settings/gU;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/gT;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/gU;Lcom/android/settings/gJ;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/gT;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 671
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 672
    iget-object v0, p0, Lcom/android/settings/gO;->yJ:Lcom/android/settings/gN;

    iget-object v0, v0, Lcom/android/settings/gN;->yI:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 673
    return-void
.end method
