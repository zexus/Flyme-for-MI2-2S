.class public Lcom/android/settings_ext/ChooseSmsLockPattern;
.super Lcom/android/settings_ext/MiuiChooseLockPattern;
.source "ChooseSmsLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 21
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ext/ChooseSmsLockPattern$ChooseSmsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method