.class Lcom/android/settings_ext/aS;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fl:Lcom/android/settings_ext/CryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CryptKeeperConfirm$Blank;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ext/aS;->fl:Lcom/android/settings_ext/CryptKeeperConfirm$Blank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    const-string v0, "CryptKeeper"

    const-string v1, "Failed to find the mount service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/aS;->fl:Lcom/android/settings_ext/CryptKeeperConfirm$Blank;

    invoke-virtual {v0}, Lcom/android/settings_ext/CryptKeeperConfirm$Blank;->finish()V

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/aS;->fl:Lcom/android/settings_ext/CryptKeeperConfirm$Blank;

    invoke-virtual {v1}, Lcom/android/settings_ext/CryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 82
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "password"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "CryptKeeper"

    const-string v2, "Error while encrypting..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method