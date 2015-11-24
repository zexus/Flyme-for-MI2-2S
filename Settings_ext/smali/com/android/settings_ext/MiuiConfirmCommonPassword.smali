.class public Lcom/android/settings_ext/MiuiConfirmCommonPassword;
.super Landroid/app/Activity;
.source "MiuiConfirmCommonPassword.java"


# instance fields
.field private oW:Landroid/app/AlertDialog;

.field private oX:Lcom/android/settings_ext/cu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    .line 19
    iput-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->eA()V

    return-void
.end method

.method private eA()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 117
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 118
    const-class v0, Lcom/android/settings_ext/ConfirmLockPattern;

    .line 123
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    :goto_1
    return-void

    .line 120
    :cond_0
    const-class v0, Lcom/android/settings_ext/ConfirmLockPassword;

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device is not secured yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->finish()V

    goto :goto_1
.end method

.method private ey()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/android/settings_ext/dy;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dy;-><init>(Lcom/android/settings_ext/MiuiConfirmCommonPassword;)V

    .line 53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e5d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e3d

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    .line 60
    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 62
    new-instance v0, Lcom/android/settings_ext/cu;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    invoke-virtual {v0}, Lcom/android/settings_ext/cu;->dE()Ljava/util/List;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settings_ext/dz;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/dz;-><init>(Lcom/android/settings_ext/MiuiConfirmCommonPassword;Ljava/util/List;)V

    .line 85
    iget-object v2, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings_ext/cu;->a(Lcom/android/settings_ext/cv;Ljava/util/List;)V

    .line 86
    return-void
.end method

.method private ez()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    invoke-virtual {v0}, Lcom/android/settings_ext/cu;->dG()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oX:Lcom/android/settings_ext/cu;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->finish()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "businessId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/android/settings_ext/cu;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/cu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings_ext/cu;->dE()Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->ey()V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->eA()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->ez()V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->ez()V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->oW:Landroid/app/AlertDialog;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->finish()V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    return-void
.end method
