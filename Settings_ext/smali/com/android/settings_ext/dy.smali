.class Lcom/android/settings_ext/dy;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic oY:Lcom/android/settings_ext/MiuiConfirmCommonPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ext/dy;->oY:Lcom/android/settings_ext/MiuiConfirmCommonPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/dy;->oY:Lcom/android/settings_ext/MiuiConfirmCommonPassword;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->setResult(I)V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ext/dy;->oY:Lcom/android/settings_ext/MiuiConfirmCommonPassword;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->finish()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/dy;->oY:Lcom/android/settings_ext/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;->a(Lcom/android/settings_ext/MiuiConfirmCommonPassword;)V

    goto :goto_0
.end method
