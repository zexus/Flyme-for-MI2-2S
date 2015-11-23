.class public Lcom/android/settings/wifi/MiuiWifiService;
.super Landroid/app/Service;
.source "MiuiWifiService.java"


# static fields
.field public static atl:Landroid/net/Uri;


# instance fields
.field private atb:Lcom/android/settings/wifi/openwifi/l;

.field private atm:Lcom/android/settings/wifi/Y;

.field private atn:Landroid/os/HandlerThread;

.field private ato:Lcom/android/settings/wifi/openwifi/n;

.field private atp:Ljava/util/HashMap;

.field private atq:Ljava/util/ArrayList;

.field private final atr:Landroid/os/IBinder;

.field private ats:I

.field private hD:Landroid/net/wifi/WifiManager;

.field private k:Landroid/os/Handler;

.field private rP:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "http://clients3.google.com/generate_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiService;->atl:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atp:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atq:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Lcom/android/settings/wifi/x;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/x;-><init>(Lcom/android/settings/wifi/MiuiWifiService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atr:Landroid/os/IBinder;

    .line 316
    const v0, 0x11170

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->ats:I

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/Y;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atm:Lcom/android/settings/wifi/Y;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiService;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiService;->uq()V

    return-void
.end method

.method private bJ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->atp:Ljava/util/HashMap;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiWifiService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atq:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 290
    invoke-static {p2}, Lcom/android/settings/wifi/Y;->e(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->atm:Lcom/android/settings/wifi/Y;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/Y;->bP(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/openwifi/n;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->ato:Lcom/android/settings/wifi/openwifi/n;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/wifi/MiuiWifiService;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->rP:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->atp:Ljava/util/HashMap;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atp:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private up()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 150
    invoke-static {p0}, Lcom/android/settings/wifi/aG;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    .line 188
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 157
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 158
    const-string v0, ""

    .line 159
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 160
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 162
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 163
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 166
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-nez v2, :cond_4

    .line 168
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/settings/wifi/MiuiWifiService;->atl:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/android/settings/wifi/MiuiWifiService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 185
    :cond_3
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/analytics/AnalyticService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v1, "miui.intent.action.UPDATE_CURRENT_WIFI_CONFIGURATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 170
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->atm:Lcom/android/settings/wifi/Y;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/android/settings/wifi/Y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method private uq()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 224
    if-eqz v0, :cond_4

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 226
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 229
    :cond_1
    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 231
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "PSK"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v2, v7}, Lcom/android/settings/wifi/MiuiWifiService;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_3
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiWifiService;->bJ(Ljava/lang/String;)V

    .line 240
    invoke-static {v1}, Lcom/android/settings/wifi/Y;->e(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v2}, Lcom/android/settings/wifi/Y;->bO(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 242
    if-nez v2, :cond_b

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/Y;->bO(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 245
    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "restore"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    invoke-static {v1}, Lcom/android/settings/wifi/Y;->g(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 254
    :cond_4
    if-eqz v3, :cond_9

    .line 257
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v4

    move-object v2, v4

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 258
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 261
    invoke-static {v0}, Lcom/android/settings/wifi/Y;->e(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v3}, Lcom/android/settings/wifi/Y;->bO(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 263
    if-nez v3, :cond_6

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "restore"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/Y;->bO(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 266
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_a

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v6, v7, :cond_a

    :cond_7
    move-object v1, v3

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 271
    goto :goto_2

    .line 272
    :cond_8
    if-eqz v2, :cond_9

    .line 273
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 274
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 275
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 276
    invoke-direct {p0, p0, v0}, Lcom/android/settings/wifi/MiuiWifiService;->c(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    iget-object v0, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiService;->bJ(Ljava/lang/String;)V

    .line 281
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atm:Lcom/android/settings/wifi/Y;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/Y;->bC(Landroid/content/Context;)V

    .line 282
    return-void

    :cond_a
    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_b
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private y(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 403
    const-string v0, "miui.intent.extra.BSSID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v1, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v3}, Lcom/android/settings/wifi/openwifi/l;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 407
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/MiuiWifiService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 409
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/wifi/openwifi/m;)V
    .locals 1

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 456
    const-string v0, "MiuiWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open wifi mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "MiuiWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open wifi ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/android/settings/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/q;->bY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    new-instance v0, Lcom/android/settings/wifi/openwifi/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/openwifi/q;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-nez v0, :cond_4

    .line 468
    if-eqz p4, :cond_3

    .line 469
    invoke-static {p0, p3, p2, p1}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_3
    :goto_0
    return-void

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0, p3}, Lcom/android/settings/wifi/openwifi/l;->d(Landroid/net/Uri;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiService;->ur()Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiService;->us()V

    goto :goto_0
.end method

.method public b(Lcom/android/settings/wifi/openwifi/m;)V
    .locals 1

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atr:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    new-instance v0, Lcom/android/settings/wifi/Y;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/Y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atm:Lcom/android/settings/wifi/Y;

    .line 82
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    .line 83
    new-instance v0, Lcom/android/settings/wifi/openwifi/n;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->ato:Lcom/android/settings/wifi/openwifi/n;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atn:Landroid/os/HandlerThread;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/android/settings/wifi/y;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->atn:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/y;-><init>(Lcom/android/settings/wifi/MiuiWifiService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    .line 89
    invoke-static {p0}, Lcom/android/settings/wifi/aG;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {v1}, Lcom/android/settings/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    .line 97
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 108
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 109
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atm:Lcom/android/settings/wifi/Y;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Y;->vc()V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "miui.intent.action.UPDATE_CURRENT_WIFI_CONFIGURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiService;->up()V

    .line 133
    :cond_0
    :goto_0
    return v4

    .line 118
    :cond_1
    const-string v1, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    iput v2, v0, Landroid/os/Message;->what:I

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 127
    :cond_4
    const-string v1, "miui.intent.action.WIFI_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 129
    :cond_5
    const-string v1, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiService;->y(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public ur()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 415
    const-string v3, "key_agreement_remind_again"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 420
    const-string v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 421
    array-length v2, v2

    if-gtz v2, :cond_0

    .line 425
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 426
    const v3, 0x7f090d7a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f090d79

    new-instance v4, Lcom/android/settings/wifi/w;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/w;-><init>(Lcom/android/settings/wifi/MiuiWifiService;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04011e

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 444
    const v0, 0x7f1000b7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->rP:Landroid/widget/CheckBox;

    .line 445
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->rP:Landroid/widget/CheckBox;

    const v4, 0x7f090d77

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 446
    const v0, 0x7f100043

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 447
    const v4, 0x7f090d78

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 448
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 449
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 450
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 451
    goto :goto_0
.end method

.method public us()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->wh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->wb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    instance-of v0, v0, Lcom/android/settings/wifi/openwifi/q;

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 485
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public ut()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uu()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->uu()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public uv()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiService;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->uv()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
