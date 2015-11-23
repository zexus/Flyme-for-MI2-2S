.class Lcom/android/settings/az;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings/cR;


# instance fields
.field final synthetic eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 409
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 444
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->d(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 436
    iget-object v2, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(J)V

    .line 438
    iget-object v2, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->eC:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/az;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method
