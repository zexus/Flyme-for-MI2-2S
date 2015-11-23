.class Lcom/android/settings/wifi/openwifi/j;
.super Ljava/lang/Object;
.source "FreeWifiLogin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    check-cast p2, Lcom/android/settings/wifi/x;

    invoke-virtual {p2}, Lcom/android/settings/wifi/x;->uw()Lcom/android/settings/wifi/MiuiWifiService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/MiuiWifiService;

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings/wifi/MiuiWifiService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiService;->a(Lcom/android/settings/wifi/openwifi/m;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->d(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    const-string v0, "com.android.settings.wifi.openwifi.FreeWifiLogin"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/j;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/MiuiWifiService;

    .line 347
    const-string v0, "com.android.settings.wifi.openwifi.FreeWifiLogin"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method
