.class public Lcom/android/settings_ext/ConfirmSmsLockPattern;
.super Lcom/android/settings_ext/ConfirmLockPattern;
.source "ConfirmSmsLockPattern.java"


# instance fields
.field private eF:Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPattern;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ext/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 35
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    iput-object p1, p0, Lcom/android/settings_ext/ConfirmSmsLockPattern;->eF:Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings_ext/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmSmsLockPattern;->eF:Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->e(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmSmsLockPattern;->eF:Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    sget-object v1, Lcom/android/settings_ext/ConfirmLockPattern$Stage;->eB:Lcom/android/settings_ext/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->a(Lcom/android/settings_ext/ConfirmLockPattern$Stage;)V

    .line 54
    return-void
.end method
