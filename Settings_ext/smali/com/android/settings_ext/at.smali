.class Lcom/android/settings_ext/at;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPassword.java"


# instance fields
.field final synthetic em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->b(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I

    .line 274
    return-void
.end method

.method public onTick(J)V
    .locals 7

    .prologue
    .line 263
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 264
    iget-object v1, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/at;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v3, 0x7f090509

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method
