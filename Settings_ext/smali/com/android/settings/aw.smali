.class Lcom/android/settings/aw;
.super Landroid/database/ContentObserver;
.source "ConfirmLockPattern.java"


# instance fields
.field final synthetic eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/aw;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/aw;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(J)V

    .line 157
    return-void
.end method
