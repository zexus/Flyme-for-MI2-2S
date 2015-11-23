.class Lcom/android/settings/dx;
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
    .line 465
    iput-object p1, p0, Lcom/android/settings/dx;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/settings/dx;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oS:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 469
    return-void
.end method
