.class Lcom/android/settings/dv;
.super Ljava/lang/Object;
.source "MiuiChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/cR;


# instance fields
.field final synthetic oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private as()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->db:Landroid/widget/TextView;

    const v1, 0x7f0904f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->c(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->d(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oS:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oT:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_4

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oU:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 138
    :cond_2
    :goto_0
    return-void

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oT:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oQ:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_7

    .line 126
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    .line 127
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oQ:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oR:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oU:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/dv;->oA:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 109
    invoke-direct {p0}, Lcom/android/settings/dv;->as()V

    .line 110
    return-void
.end method
