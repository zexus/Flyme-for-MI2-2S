.class public Lcom/xiaomi/miui/pushads/sdk/b/c;
.super Ljava/lang/Object;
.source "AdsLogSender.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/b/j;


# static fields
.field private static aGK:Lcom/xiaomi/miui/pushads/sdk/b/c;


# instance fields
.field private aGL:Lcom/xiaomi/miui/pushads/sdk/b/b;

.field private aGM:Ljava/util/HashMap;

.field private aGN:I

.field private aGO:I

.field private aGc:Ljava/lang/String;

.field private aGd:Ljava/lang/String;

.field private aGf:Ljava/util/ArrayList;

.field private aGh:I

.field private aGr:Landroid/content/BroadcastReceiver;

.field private aGu:Ljava/lang/String;

.field private aGv:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFailCount:I

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGN:I

    .line 80
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGO:I

    .line 81
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    .line 82
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGh:I

    .line 85
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/g;->Ak()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGc:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/g;->cr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mImei:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/g;->cs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGd:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGu:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGv:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "logcache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/miui/pushads/sdk/b/b;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGL:Lcom/xiaomi/miui/pushads/sdk/b/b;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGM:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGf:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/b/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/miui/pushads/sdk/b/d;-><init>(Lcom/xiaomi/miui/pushads/sdk/b/c;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/b/c;->Aw()V

    .line 113
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/g;->ct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/b/c;->Ao()V

    .line 116
    :cond_0
    return-void
.end method

.method public static declared-synchronized AB()Lcom/xiaomi/miui/pushads/sdk/b/c;
    .locals 2

    .prologue
    .line 146
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGK:Lcom/xiaomi/miui/pushads/sdk/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private AD()V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/g;->ct(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache \u4e2a\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 235
    const/4 v0, 0x0

    move v1, v0

    .line 236
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_2

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/b/a;

    .line 238
    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/b/c;->b(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache \u592a\u591a\uff0c\u4e0b\u6b21\u53d1\u9001 left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 246
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private Ao()V
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGh:I

    .line 128
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGL:Lcom/xiaomi/miui/pushads/sdk/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/b/b;->Am()Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6cache\u5e76\u53d1\u9001  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/g;->cp(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/b/c;->AD()V

    .line 133
    return-void
.end method

.method private Aw()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/b/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/miui/pushads/sdk/b/f;-><init>(Lcom/xiaomi/miui/pushads/sdk/b/j;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGr:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 291
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "imei"

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mImei:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/b/h;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    :cond_0
    const-string v0, "actionType"

    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v0, "actionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 305
    const/4 v3, 0x0

    .line 306
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/a/d;

    iget-object v0, v0, Lcom/xiaomi/miui/pushads/sdk/a/d;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 316
    :goto_1
    if-nez v0, :cond_3

    .line 317
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 320
    :goto_2
    const-string v3, "adId"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/a/d;

    iget-wide v6, v0, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGG:J

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 321
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 310
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/a/d;

    iget-object v0, v0, Lcom/xiaomi/miui/pushads/sdk/a/d;->content:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 313
    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v0, "com.xiaomi.miui.ads.pushsdk"

    const-string v2, "content \u4e0d\u662fjson\u4e32"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_1

    .line 324
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 325
    const-string v1, "adList"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0

    :cond_3
    move-object v2, v0

    goto :goto_2
.end method

.method private static a(Lcom/xiaomi/miui/pushads/sdk/b/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 356
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 358
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    .line 361
    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-direct {v2, p3, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->c(Lcom/xiaomi/miui/pushads/sdk/b/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-direct {v2, p3, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->b(Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGM:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/b/a;->aGJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGO:I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/b/e;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGu:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGv:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/xiaomi/miui/pushads/sdk/b/e;-><init>(Lcom/xiaomi/miui/pushads/sdk/b/j;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 262
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGM:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/b/a;->aGJ:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private c(Lcom/xiaomi/miui/pushads/sdk/b/a;)Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/g;->ct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/b/c;->d(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGh:I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGL:Lcom/xiaomi/miui/pushads/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/b/b;->a(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 351
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGL:Lcom/xiaomi/miui/pushads/sdk/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/b/b;->Al()V

    .line 352
    return-void
.end method

.method public static declared-synchronized g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/b/c;
    .locals 2

    .prologue
    .line 137
    const-class v1, Lcom/xiaomi/miui/pushads/sdk/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGK:Lcom/xiaomi/miui/pushads/sdk/b/c;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/b/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGK:Lcom/xiaomi/miui/pushads/sdk/b/c;

    .line 141
    :cond_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGK:Lcom/xiaomi/miui/pushads/sdk/b/c;

    invoke-static {v0, p0}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Lcom/xiaomi/miui/pushads/sdk/b/c;Landroid/content/Context;)V

    .line 142
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGK:Lcom/xiaomi/miui/pushads/sdk/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public AC()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f51\u7edc\u6539\u53d8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/g;->cp(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/g;->ct(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/g;->Ak()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGc:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/b/c;->Ao()V

    goto :goto_0
.end method

.method public Aj()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGd:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public a(Lcom/xiaomi/miui/pushads/sdk/a/d;)V
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "click"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGB:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGM:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/b/a;->aGJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/b/a;->aGJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGM:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->d(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGM:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/b/a;->aGJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGN:I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aGN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/h;->cY(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/miui/pushads/sdk/a/d;)V
    .locals 4

    .prologue
    .line 179
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "remove"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGB:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/miui/pushads/sdk/a/d;)V
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "received"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aGB:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method
