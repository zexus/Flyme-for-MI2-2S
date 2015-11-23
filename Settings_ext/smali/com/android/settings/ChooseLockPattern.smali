.class public Lcom/android/settings_ext/ChooseLockPattern;
.super Lcom/android/settings_ext/gh;
.source "ChooseLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ext/gh;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ext/gh;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 68
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings_ext/gh;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0904e1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/gh;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
