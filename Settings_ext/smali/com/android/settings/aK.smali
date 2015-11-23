.class Lcom/android/settings/aK;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# instance fields
.field final synthetic fb:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/settings/aK;->fb:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 697
    iget-object v0, p0, Lcom/android/settings/aK;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 698
    new-instance v0, Lcom/android/settings/aO;

    iget-object v1, p0, Lcom/android/settings/aK;->fb:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/aO;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/aG;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/aO;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 699
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/settings/aK;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aK;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 689
    return-void
.end method
