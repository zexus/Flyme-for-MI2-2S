.class Lcom/android/settings/eS;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sZ:Lcom/android/settings/eR;


# direct methods
.method constructor <init>(Lcom/android/settings/eR;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings/eS;->sZ:Lcom/android/settings/eR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/eS;->sZ:Lcom/android/settings/eR;

    iget-object v0, v0, Lcom/android/settings/eR;->sX:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->d(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090e45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/eS;->sZ:Lcom/android/settings/eR;

    iget-object v0, v0, Lcom/android/settings/eR;->sX:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->e(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090e46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/eS;->sZ:Lcom/android/settings/eR;

    iget-object v0, v0, Lcom/android/settings/eR;->sX:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->f(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/eS;->sZ:Lcom/android/settings/eR;

    iget-object v0, v0, Lcom/android/settings/eR;->sX:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->g(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/eS;->sZ:Lcom/android/settings/eR;

    iget-object v0, v0, Lcom/android/settings/eR;->sX:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 265
    return-void
.end method
