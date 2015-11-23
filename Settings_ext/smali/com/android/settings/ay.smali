.class Lcom/android/settings_ext/ay;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eA:Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/settings_ext/ay;->eA:Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings_ext/ay;->eA:Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ext/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->clearPattern()V

    .line 386
    return-void
.end method
