.class Lcom/android/settings_ext/m;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic I:Lcom/android/settings_ext/i;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/i;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings_ext/m;->I:Lcom/android/settings_ext/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    .prologue
    .line 221
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 222
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/android/settings_ext/m;->I:Lcom/android/settings_ext/i;

    invoke-static {v1, v0}, Lcom/android/settings_ext/i;->a(Lcom/android/settings_ext/i;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/m;->I:Lcom/android/settings_ext/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/i;->a(Lcom/android/settings_ext/i;Z)V

    goto :goto_0
.end method
