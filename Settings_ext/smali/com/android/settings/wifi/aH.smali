.class public Lcom/android/settings/wifi/aH;
.super Lcom/android/settings/Z;
.source "WifiStatusController.java"


# instance fields
.field private Nx:Z

.field private avR:Landroid/net/wifi/WifiInfo;

.field private hD:Landroid/net/wifi/WifiManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/Z;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 24
    new-instance v0, Lcom/android/settings/wifi/aI;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aI;-><init>(Lcom/android/settings/wifi/aH;)V

    iput-object v0, p0, Lcom/android/settings/wifi/aH;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/aH;->hD:Landroid/net/wifi/WifiManager;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/aH;->mIntentFilter:Landroid/content/IntentFilter;

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/aH;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/aH;->df(I)V

    return-void
.end method

.method private df(I)V
    .locals 0

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/aH;->ad()V

    .line 76
    :pswitch_1
    return-void

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected ad()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/aH;->avR:Landroid/net/wifi/WifiInfo;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->ca:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->ca:Landroid/widget/TextView;

    const v1, 0x7f090d85

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/aH;->avR:Landroid/net/wifi/WifiInfo;

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->ca:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->avR:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/aH;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/aH;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/aH;->ca:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->ca:Landroid/widget/TextView;

    const v1, 0x7f090d84

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 104
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/wifi/aH;->Nx:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/aH;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/aH;->Nx:Z

    .line 61
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/aH;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/aH;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/aH;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/aH;->Nx:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/wifi/aH;->ad()V

    .line 53
    return-void
.end method
