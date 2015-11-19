.class public final Lmiui/provider/ExtraNetwork;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraNetwork$DataUsageDetail;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_BLOCKED:Ljava/lang/String; = "miui.intent.action.NETWORK_BLOCKED"

.field public static final ACTION_NETWORK_CONNECTED:Ljava/lang/String; = "miui.intent.action.NETWORK_CONNECTED"

.field public static final BUNDLE_KEY_COMMON:Ljava/lang/String; = "bundle_key_com"

.field public static final BUNDLE_KEY_HAS_MENU:Ljava/lang/String; = "bundle_key_has_menu"

.field public static final BUNDLE_KEY_PURCHASE_FROM:Ljava/lang/String; = "bundle_key_purchase_from"

.field public static final BUNDLE_KEY_SLOTID:Ljava/lang/String; = "bundle_key_slotid"

.field public static final BUNDLE_KEY_TITLE:Ljava/lang/String; = "bundle_key_title"

.field public static final BUNDLE_KEY_URL:Ljava/lang/String; = "bundle_key_url"

.field private static final COLUMN_NAME_MONTH_USED:Ljava/lang/String; = "month_used"

.field private static final COLUMN_NAME_MONTH_WARNING:Ljava/lang/String; = "month_warning"

.field private static final COLUMN_NAME_TODAY_USED:Ljava/lang/String; = "today_used"

.field private static final COLUMN_NAME_TOTAL_LIMIT:Ljava/lang/String; = "total_limit"

.field private static final EXTRA_MIUI_STARTING_WINDOW_LABEL:Ljava/lang/String; = ":miui:starting_window_label"

.field public static final FIREWALL_MOBILE_RULE:Ljava/lang/String; = "mobile_rule"

.field public static final FIREWALL_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/firewall/%s"

.field public static final FIREWALL_WIFI_RULE:Ljava/lang/String; = "wifi_rule"

.field public static final FROM_PKGNAME:Ljava/lang/String; = "from_pkgname"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final MOBILE_RXBYTES:Ljava/lang/String; = "mobile_rxbytes"

.field public static final MOBILE_TXBYTES:Ljava/lang/String; = "mobile_txbytes"

.field private static final NETWORKASSISTANT_PURCHASE_ACTION:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

.field public static final STORAGE_TIME:Ljava/lang/String; = "storage_time"

.field public static final TO_PKGNAME:Ljava/lang/String; = "to_pkgname"

.field public static final TRACK_PURCHASE_FROM_LOCK_SCREEN_TRAFFIC:Ljava/lang/String; = "100010"

.field public static final TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_PAGE:Ljava/lang/String; = "100002"

.field public static final TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_TOOLBAR:Ljava/lang/String; = "100001"

.field public static final TRACK_PURCHASE_FROM_PUSH:Ljava/lang/String; = "100007"

.field public static final TRACK_PURCHASE_FROM_SERCURITY_CENTER_EXAM:Ljava/lang/String; = "100008"

.field public static final TRACK_PURCHASE_FROM_STATUS_BAR:Ljava/lang/String; = "100003"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_DIALOG:Ljava/lang/String; = "100006"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_NOTIFY:Ljava/lang/String; = "100005"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_SORTED:Ljava/lang/String; = "100009"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_WARNING_NOTIFY:Ljava/lang/String; = "100004"

.field private static final TRAFFIC_DISTRIBUTION_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/traffic_distribution"

.field public static final TRAFFIC_PURCHASE_ENABLED:Ljava/lang/String; = "traffic_purchase_enabled"

.field private static final TRAFFIC_PURCHASE_STATUS_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_purchase"

.field private static final TRAFFIC_PURCHASE_STATUS_URI_STR_ISMI:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d"

.field private static final URI_NETWORK_TRAFFIC_INFO:Ljava/lang/String; = "content://com.miui.networkassistant.provider/datausage_status"

.field public static final WIFI_RXBYTES:Ljava/lang/String; = "wifi_rxbytes"

.field public static final WIFI_TXBYTES:Ljava/lang/String; = "wifi_txbytes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method

.method public static getUserDataUsageDetail(Landroid/content/Context;)Lmiui/provider/ExtraNetwork$DataUsageDetail;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    if-eqz p0, :cond_2

    .line 417
    const/4 v12, 0x0

    .line 419
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.miui.networkassistant.provider/datausage_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 420
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 421
    const/4 v13, 0x0

    .line 422
    .local v13, "dataGetted":Z
    if-eqz v12, :cond_1

    .line 423
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "total_limit"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 425
    .local v4, "monthTotal":J
    const-string v0, "month_used"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 426
    .local v6, "monthUsed":J
    const-string v0, "month_warning"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 427
    .local v8, "monthWarning":J
    const-string v0, "today_used"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 428
    .local v10, "todayUsed":J
    new-instance v3, Lmiui/provider/ExtraNetwork$DataUsageDetail;

    invoke-direct/range {v3 .. v11}, Lmiui/provider/ExtraNetwork$DataUsageDetail;-><init>(JJJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    if-eqz v12, :cond_0

    .line 435
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 436
    const/4 v12, 0x0

    .line 440
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "monthTotal":J
    .end local v6    # "monthUsed":J
    .end local v8    # "monthWarning":J
    .end local v10    # "todayUsed":J
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "dataGetted":Z
    :cond_0
    :goto_0
    return-object v3

    .line 434
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "dataGetted":Z
    :cond_1
    if-eqz v12, :cond_2

    .line 435
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 436
    const/4 v12, 0x0

    .line 440
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "dataGetted":Z
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 432
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    if-eqz v12, :cond_2

    .line 435
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 436
    const/4 v12, 0x0

    goto :goto_1

    .line 434
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_3

    .line 435
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 436
    const/4 v12, 0x0

    :cond_3
    throw v0
.end method

.method public static insertTrafficDistribution(Landroid/content/Context;Ljava/lang/String;JJJJ)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toPackageName"    # Ljava/lang/String;
    .param p2, "wifiTxBytes"    # J
    .param p4, "wifiRxBytes"    # J
    .param p6, "mobileTxBytes"    # J
    .param p8, "mobileRxBytes"    # J

    .prologue
    .line 208
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    :cond_0
    const/4 v8, 0x0

    .line 240
    :goto_0
    return v8

    .line 212
    :cond_1
    :try_start_0
    const-string v8, "content://com.miui.networkassistant.provider/traffic_distribution"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 213
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 214
    const-string v1, ""

    .line 215
    .local v1, "imsi":Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 216
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_2

    .line 217
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "from_pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v8, "to_pkgname"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v8, "mobile_rxbytes"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v8, "mobile_txbytes"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v8, "wifi_rxbytes"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v8, "wifi_txbytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v8, "imsi"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v8, "storage_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 231
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 232
    .local v4, "returnUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "lastPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    .line 234
    const/4 v8, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "lastPath":Ljava/lang/String;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "returnUri":Landroid/net/Uri;
    .end local v5    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "mobile_rule"

    invoke-static {p0, p1, v0}, Lmiui/provider/ExtraNetwork;->isNetworkRestrict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isNetworkRestrict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "networkType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 167
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v11

    .line 170
    :cond_1
    const/4 v6, 0x0

    .line 172
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/firewall/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const-string v2, "package_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 180
    .local v9, "rule":I
    if-ne v9, v10, :cond_3

    move v2, v10

    .line 187
    :goto_1
    if-eqz v6, :cond_2

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v11, v2

    goto :goto_0

    :cond_3
    move v2, v11

    .line 180
    goto :goto_1

    .line 187
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "rule":I
    :cond_4
    if-eqz v6, :cond_0

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 184
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 185
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    if-eqz v6, :cond_0

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 187
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public static isTrafficPurchaseSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    if-eqz p0, :cond_0

    .line 252
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/na_traffic_purchase"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/provider/ExtraNetwork;->queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 258
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTrafficPurchaseSupported(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 269
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 271
    :try_start_0
    const-string v3, "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 272
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/provider/ExtraNetwork;->queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 277
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "wifi_rule"

    invoke-static {p0, p1, v0}, Lmiui/provider/ExtraNetwork;->isNetworkRestrict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hasMenu"    # Z
    .param p4, "sourceFrom"    # Ljava/lang/String;
    .param p5, "needNewTask"    # Z

    .prologue
    .line 340
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v2, "bundle_key_title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v2, "bundle_key_has_menu"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "bundle_key_com"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 347
    const-string v2, ":miui:starting_window_label"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    if-eqz p5, :cond_0

    .line 349
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 362
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_slotid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    const-string v2, "bundle_key_com"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 366
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 368
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "sourceFrom"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_slotid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "bundle_key_com"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 383
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFrom"    # Ljava/lang/String;

    .prologue
    .line 320
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "bundle_key_com"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 324
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method private static queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 281
    const/4 v6, 0x0

    .line 282
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 284
    .local v8, "result":Z
    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "traffic_purchase_enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 294
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    if-eqz v6, :cond_1

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_1
    :goto_0
    return v8

    .line 291
    :catch_0
    move-exception v7

    .line 292
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    if-eqz v6, :cond_1

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 294
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static registerFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v5, 0x1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.networkassistant.provider/firewall/%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    return-void
.end method

.method public static setMobileRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .prologue
    .line 114
    const-string v0, "mobile_rule"

    invoke-static {p0, p1, v0, p2}, Lmiui/provider/ExtraNetwork;->setNetworkRestrict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static setNetworkRestrict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "networkType"    # Ljava/lang/String;
    .param p3, "isRestrict"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    :try_start_0
    const-string v6, "content://com.miui.networkassistant.provider/firewall/%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 134
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v1, "params":Landroid/content/ContentValues;
    if-nez p3, :cond_0

    move v6, v4

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, p2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 136
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v4, :cond_1

    .line 141
    .end local v1    # "params":Landroid/content/ContentValues;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return v4

    .restart local v1    # "params":Landroid/content/ContentValues;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    move v6, v5

    .line 135
    goto :goto_0

    :cond_1
    move v4, v5

    .line 136
    goto :goto_1

    .line 138
    .end local v1    # "params":Landroid/content/ContentValues;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v4, v5

    .line 141
    goto :goto_1
.end method

.method public static setWifiRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .prologue
    .line 126
    const-string v0, "wifi_rule"

    invoke-static {p0, p1, v0, p2}, Lmiui/provider/ExtraNetwork;->setNetworkRestrict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static unRegisterFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    return-void
.end method
