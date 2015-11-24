.class Lcom/android/settings_ext/dQ;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic qr:Lcom/android/settings_ext/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ext/dQ;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    .prologue
    .line 148
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 149
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings_ext/dQ;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiMasterClear;->a(Lcom/android/settings_ext/MiuiMasterClear;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
