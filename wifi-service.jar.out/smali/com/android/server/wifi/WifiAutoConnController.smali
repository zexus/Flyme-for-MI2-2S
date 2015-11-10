.class Lcom/android/server/wifi/WifiAutoConnController;
.super Ljava/lang/Object;
.source "WifiAutoConnController.java"


# static fields
.field private static final WIFI_ENABLED:I = 0x1


# instance fields
.field private mConnectType:I

.field private mConnectedNetworkType:I

.field private mContext:Landroid/content/Context;

.field private mDisableSsidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitializeCalled:Z

.field mLastNetworkId:I

.field private mSelectSsidType:I

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    .line 220
    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 43
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 44
    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerDisableWifiAutoConnectChangedObserver()V

    .line 48
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->loadConnectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->loadSelectSsidType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerConnectTypeChangedObserver()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerSelectSsidTypeChangedObserver()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiAutoConnController;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiAutoConnController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiAutoConnController;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return p1
.end method


# virtual methods
.method disConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 227
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    if-ne v0, v1, :cond_1

    .line 228
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->shouldEnableAllNetworks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 231
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 233
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoConnController;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 234
    return-void
.end method

.method disableNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 218
    :cond_0
    return-void
.end method

.method getConnectedNetworkType()I
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 180
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method isDisableByUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isWifiAutoConnect()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiAutoConnectAsk()Z
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 268
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 266
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 268
    goto :goto_0
.end method

.method isWifiSsidAutoSelect()Z
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiSsidAutoSelectAsk()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mInitializeCalled:Z

    .line 274
    return-void
.end method

.method loadConnectType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSelectSsidType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_select_ssid_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method processBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/WifiAutoConnController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiAutoConnController$5;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method registerConnectTypeChangedObserver()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$2;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$2;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 87
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connect_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method registerConnectivityChangedReceiver()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$4;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiAutoConnController$4;-><init>(Lcom/android/server/wifi/WifiAutoConnController;)V

    .line 115
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method registerDisableWifiAutoConnectChangedObserver()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$1;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$1;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 69
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_wifi_auto_connect_ssid"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    .line 74
    return-void
.end method

.method registerSelectSsidTypeChangedObserver()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$3;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$3;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 102
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_select_ssid_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    return-void
.end method

.method public selectNetwork(I)V
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 277
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoConnController;->setSelectNetworkId(I)V

    .line 280
    :cond_0
    return-void
.end method

.method setSelectNetworkId(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 224
    return-void
.end method

.method shouldEnableAllNetworks()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v0

    goto :goto_0
.end method

.method showAskDialog()V
    .locals 3

    .prologue
    .line 199
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateWifiEnableState()V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 167
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 169
    .local v0, "currentNetworkId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
