.class Lcom/android/settings/wifi/openwifi/i;
.super Ljava/lang/Object;
.source "FreeWifiLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 300
    .line 301
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wifi_config"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 302
    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v3}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wifi_provider"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v3}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ssid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    if-eqz v0, :cond_1

    .line 306
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 308
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/d;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 309
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->c(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    move v0, v1

    .line 323
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;I)V

    .line 324
    :goto_1
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings/wifi/MiuiWifiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiService;->ut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings/wifi/MiuiWifiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiService;->uu()I

    move-result v0

    .line 313
    invoke-static {v3}, Lcom/android/settings/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    const/16 v2, -0x3e8

    if-ne v0, v2, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings/wifi/MiuiWifiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiService;->us()V

    move v0, v1

    .line 316
    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/i;->ayx:Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->onBackPressed()V

    goto :goto_1
.end method
