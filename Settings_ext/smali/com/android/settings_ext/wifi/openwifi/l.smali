.class public abstract Lcom/android/settings_ext/wifi/openwifi/l;
.super Ljava/lang/Object;
.source "OpenWifiController.java"


# static fields
.field private static ayA:J

.field public static ayB:Ljava/lang/String;

.field private static ayC:Landroid/app/Notification;


# instance fields
.field protected final ayf:Ljava/lang/String;

.field protected final ayy:Ljava/lang/String;

.field private ayz:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field protected mImei:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    .line 87
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayf:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    .line 90
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mImei:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mImei:Ljava/lang/String;

    .line 94
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings_ext/wifi/openwifi/l;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:1f:7a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Lcom/android/settings_ext/wifi/openwifi/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings_ext/wifi/openwifi/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/app/Notification$Builder;ZI)V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x0

    const v1, 0x7f090ce7

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings_ext/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZZI)V

    .line 191
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/app/Notification$Builder;ZZI)V
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 195
    const v0, 0x7f0201ee

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 197
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 198
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 199
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    .line 202
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 203
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    iput-object v0, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 207
    iget-object v0, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 209
    :cond_0
    iget-object v0, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/MiuiNotification;->setMessageCount(I)V

    .line 212
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 213
    invoke-virtual {v0, p4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 214
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 378
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ext/wifi/MiuiWifiSettings;->atB:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 382
    :cond_0
    if-nez p1, :cond_1

    .line 383
    sget-object p1, Lcom/android/settings_ext/wifi/MiuiWifiService;->atl:Landroid/net/Uri;

    .line 385
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ext/wifi/c;->bA(Landroid/content/Context;)Lcom/android/settings_ext/wifi/c;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p0, p2}, Lcom/android/settings_ext/wifi/c;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 387
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/settings_ext/wifi/c;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 389
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    const-string v1, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v1, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "miui.intent.extra.BSSID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;I)V
    .locals 2

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/openwifi/m;

    .line 331
    invoke-interface {v0, p2}, Lcom/android/settings_ext/wifi/openwifi/m;->dq(I)V

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public static bO(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 280
    invoke-static {p0}, Lcom/android/settings_ext/wifi/aG;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 284
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 287
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 288
    if-eqz v1, :cond_2

    .line 289
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 290
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :cond_2
    const/4 v3, 0x0

    .line 299
    const/high16 v1, -0x80000000

    .line 300
    if-eqz v2, :cond_5

    .line 301
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 302
    iget-boolean v2, v0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    if-eqz v2, :cond_4

    .line 305
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->a(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-nez v2, :cond_3

    .line 310
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p0, v2, v6}, Lcom/android/settings_ext/wifi/openwifi/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings_ext/wifi/openwifi/l;

    move-result-object v2

    .line 312
    if-eqz v2, :cond_7

    iget v7, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v1, v7, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 313
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move-object v1, v2

    :goto_3
    move-object v3, v1

    move v1, v0

    .line 316
    goto :goto_2

    .line 320
    :cond_5
    if-eqz v3, :cond_6

    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    .line 321
    invoke-virtual {v3, v1}, Lcom/android/settings_ext/wifi/openwifi/l;->dr(I)V

    goto/16 :goto_0

    .line 323
    :cond_6
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 324
    const v1, 0x7f090cea

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method private static bP(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 426
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 427
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 428
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 429
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 431
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    iget-boolean v1, v0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    if-eqz v1, :cond_1

    .line 433
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings_ext/wifi/bm;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    :cond_1
    return-void
.end method

.method public static r(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const v4, 0x7f090ce7

    .line 400
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 401
    const v1, 0x7f090cea

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 402
    if-eqz p1, :cond_3

    .line 403
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 404
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 405
    if-eqz v2, :cond_2

    .line 406
    invoke-static {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->bP(Landroid/content/Context;)V

    .line 407
    const-string v1, ""

    .line 408
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 409
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    :cond_0
    sget-object v2, Lcom/android/settings_ext/wifi/openwifi/l;->ayB:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings_ext/wifi/openwifi/l;->ayB:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    sget-object v1, Lcom/android/settings_ext/wifi/openwifi/l;->ayC:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 413
    sget-object v1, Lcom/android/settings_ext/wifi/openwifi/l;->ayC:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings_ext/wifi/openwifi/l;->ayA:J

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    const v1, 0x7f090cfd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 421
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 422
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings_ext/wifi/openwifi/l;->ayA:J

    goto :goto_0
.end method

.method public static wd()J
    .locals 2

    .prologue
    .line 246
    sget-wide v0, Lcom/android/settings_ext/wifi/openwifi/l;->ayA:J

    return-wide v0
.end method

.method private wg()V
    .locals 3

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.aciton.FREE_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.analytics.AnalyticService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "miui.intent.extra.FREE_WIFI_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v1, "miui.intent.extra.FREE_WIFI_RESULT"

    iget v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string v1, "miui.intent.extra.FREE_WIFI_SSID"

    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 371
    return-void
.end method


# virtual methods
.method public bU(Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v1, 0x7f090cec

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/wifi/openwifi/l;->v(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayz:Landroid/net/Uri;

    .line 263
    return-void
.end method

.method public dr(I)V
    .locals 10

    .prologue
    const v9, 0x7f090cea

    const/4 v8, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    const-string v2, "ap_notification_time"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 115
    sub-int v2, v3, v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 117
    const-string v2, "ap_notification_time"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayf:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 123
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 124
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings_ext/wifi/openwifi/FreeWifiDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v3, "wifi_provider"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "wifi_config"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    const-string v1, "miui.intent.extra.FREE_WIFI_SIGNAL_LEVEL"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "miui.intent.extra.FREE_WIFI_BSSID"

    iget-object v3, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayf:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v1, v8, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 138
    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v4, 0x7f090ceb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 139
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v8, v9}, Lcom/android/settings_ext/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZI)V

    goto/16 :goto_0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayf:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 271
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 272
    const-string v0, ""

    .line 273
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method protected getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, ""

    return-object v0
.end method

.method protected getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/eK;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v0, ""

    .line 228
    :cond_0
    const-string v1, "+86"

    .line 229
    const-string v1, "0086"

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_1
    :goto_0
    return-object v0

    .line 233
    :cond_2
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const-string v1, "0086"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/util/ArrayList;)Z
    .locals 9

    .prologue
    const v8, 0x7f090cf4

    const/4 v2, -0x6

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 337
    iput v3, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v4, 0x7f090cf1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v5, 0x7f090ceb

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ext/wifi/openwifi/l;->v(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 340
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ext/wifi/openwifi/l;->b(Ljava/util/ArrayList;I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->wa()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->wb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v4, 0x7f090cf2

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v4, 0x7f090ce7

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/openwifi/l;->bU(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/wifi/openwifi/l;->ayC:Landroid/app/Notification;

    .line 346
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    sput-object v0, Lcom/android/settings_ext/wifi/openwifi/l;->ayB:Ljava/lang/String;

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings_ext/wifi/openwifi/l;->ayA:J

    move v0, v1

    .line 354
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/wifi/openwifi/l;->b(Ljava/util/ArrayList;I)V

    .line 356
    if-ne v0, v2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayz:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayf:Ljava/lang/String;

    invoke-static {v0, v2, v4, v5}, Lcom/android/settings_ext/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->wg()V

    .line 361
    iget v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/openwifi/l;->wc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/openwifi/l;->bU(Ljava/lang/String;)Landroid/app/Notification;

    .line 351
    const/4 v0, -0x1

    .line 352
    iget-object v4, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 361
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public uu()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    return v0
.end method

.method public abstract uv()I
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 159
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x7f090ce7

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZI)V

    .line 162
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public abstract wa()I
.end method

.method public wb()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wc()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected we()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wf()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayz:Landroid/net/Uri;

    return-object v0
.end method

.method public wh()Z
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wi()Z
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 464
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/settings_ext/wifi/openwifi/l;->ayy:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
