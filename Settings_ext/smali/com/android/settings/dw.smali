.class Lcom/android/settings/dw;
.super Ljava/lang/Object;
.source "MiuiChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/dw;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/dw;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 262
    return-void
.end method
