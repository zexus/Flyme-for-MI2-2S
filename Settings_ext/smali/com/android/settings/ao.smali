.class Lcom/android/settings_ext/ao;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dy:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings_ext/ao;->dy:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings_ext/ao;->dy:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;->do:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 327
    return-void
.end method
