.class Lcom/android/settings/ax;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings/ax;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 181
    iget-object v8, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ay()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ax()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v3, v3, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/ax;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->aw()Landroid/content/Intent;

    move-result-object v5

    if-eqz v6, :cond_0

    check-cast v6, Landroid/os/Bundle;

    :goto_0
    invoke-static/range {v0 .. v6}, Lcom/android/settings/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/android/settings/i;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/i;)Lcom/android/settings/i;

    .line 188
    iget-object v0, p0, Lcom/android/settings/ax;->eA:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/i;->show()V

    .line 189
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    return-void

    :cond_0
    move-object v6, v7

    .line 181
    goto :goto_0
.end method
