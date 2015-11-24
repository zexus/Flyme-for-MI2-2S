.class public Lcom/android/settings_ext/MiuiChooseLockPattern;
.super Lcom/android/settings_ext/Settings;
.source "MiuiChooseLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ext/Settings;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ext/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 34
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ext/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0904e1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
