.class Lcom/android/settings_ext/dJ;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic qa:Lcom/android/settings_ext/MiuiFingerprintDetailFragment;

.field final synthetic qb:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ext/dJ;->qa:Lcom/android/settings_ext/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/settings_ext/dJ;->qb:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ext/dJ;->qa:Lcom/android/settings_ext/MiuiFingerprintDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/settings_ext/dJ;->qa:Lcom/android/settings_ext/MiuiFingerprintDetailFragment;

    const v2, 0x7f090e3b

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings_ext/dJ;->qa:Lcom/android/settings_ext/MiuiFingerprintDetailFragment;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/dJ;->qb:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings_ext/dJ;->qa:Lcom/android/settings_ext/MiuiFingerprintDetailFragment;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/dJ;->qb:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method
