.class Lcom/android/settings_ext/n;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic I:Lcom/android/settings_ext/i;

.field final synthetic J:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ext/i;Z)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    iput-boolean p2, p0, Lcom/android/settings_ext/n;->J:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->e(Lcom/android/settings_ext/i;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 247
    iget-boolean v0, p0, Lcom/android/settings_ext/n;->J:Z

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->f(Lcom/android/settings_ext/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->b(Lcom/android/settings_ext/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v1}, Lcom/android/settings_ext/i;->f(Lcom/android/settings_ext/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->g(Lcom/android/settings_ext/i;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->h(Lcom/android/settings_ext/i;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->h(Lcom/android/settings_ext/i;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->h(Lcom/android/settings_ext/i;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->b(Lcom/android/settings_ext/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->i(Lcom/android/settings_ext/i;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->i(Lcom/android/settings_ext/i;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->j(Lcom/android/settings_ext/i;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->b(Lcom/android/settings_ext/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v1}, Lcom/android/settings_ext/i;->j(Lcom/android/settings_ext/i;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    :cond_3
    :goto_0
    return-void

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->k(Lcom/android/settings_ext/i;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/n;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->b(Lcom/android/settings_ext/i;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090d3e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
