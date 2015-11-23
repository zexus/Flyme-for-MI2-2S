.class public Lcom/xiaomi/c/f;
.super Ljava/lang/Object;
.source "HostManager.java"


# static fields
.field protected static aHf:Ljava/util/Map;

.field private static aHo:Lcom/xiaomi/c/f;

.field private static aHp:Lcom/xiaomi/c/j;

.field private static aHq:Ljava/lang/String;

.field private static aHr:Ljava/lang/String;

.field protected static aHs:Z


# instance fields
.field protected aFx:Landroid/content/Context;

.field protected aHe:Ljava/util/Map;

.field private aHg:Lcom/xiaomi/c/e;

.field protected aHh:Lcom/xiaomi/c/k;

.field private aHi:Ljava/lang/String;

.field private aHj:J

.field private final aHk:J

.field private aHl:J

.field private aHm:Ljava/lang/String;

.field private aHn:Lcom/xiaomi/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    .line 621
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/c/f;->aHs:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    .line 76
    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaomi/c/f;->aHi:Ljava/lang/String;

    .line 78
    iput-wide v2, p0, Lcom/xiaomi/c/f;->aHj:J

    .line 79
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/xiaomi/c/f;->aHk:J

    .line 80
    iput-wide v2, p0, Lcom/xiaomi/c/f;->aHl:J

    .line 81
    const-string v0, "isp_prov_city_country_ip"

    iput-object v0, p0, Lcom/xiaomi/c/f;->aHm:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/xiaomi/c/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/c/g;-><init>(Lcom/xiaomi/c/f;)V

    iput-object v0, p0, Lcom/xiaomi/c/f;->aHn:Lcom/xiaomi/c/r;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    .line 175
    :cond_0
    iput-object p3, p0, Lcom/xiaomi/c/f;->aHh:Lcom/xiaomi/c/k;

    .line 177
    if-nez p2, :cond_1

    .line 178
    new-instance v0, Lcom/xiaomi/c/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/c/h;-><init>(Lcom/xiaomi/c/f;)V

    iput-object v0, p0, Lcom/xiaomi/c/f;->aHg:Lcom/xiaomi/c/e;

    .line 187
    :goto_0
    iput-object p4, p0, Lcom/xiaomi/c/f;->aHi:Ljava/lang/String;

    .line 188
    if-eqz p5, :cond_2

    :goto_1
    sput-object p5, Lcom/xiaomi/c/f;->aHq:Ljava/lang/String;

    .line 189
    if-eqz p6, :cond_3

    :goto_2
    sput-object p6, Lcom/xiaomi/c/f;->aHr:Ljava/lang/String;

    .line 190
    return-void

    .line 185
    :cond_1
    iput-object p2, p0, Lcom/xiaomi/c/f;->aHg:Lcom/xiaomi/c/e;

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/c/f;->zN()Ljava/lang/String;

    move-result-object p6

    goto :goto_2
.end method

.method public static declared-synchronized AP()Lcom/xiaomi/c/f;
    .locals 3

    .prologue
    .line 110
    const-class v1, Lcom/xiaomi/c/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "the host manager is not initialized yet."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 114
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 661
    sget-object v0, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 662
    sget-object v1, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    monitor-enter v1

    .line 663
    if-nez v0, :cond_1

    .line 664
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v2, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_0
    :goto_0
    monitor-exit v1

    .line 673
    return-void

    .line 668
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 717
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    const-string v0, ""

    .line 727
    :goto_0
    return-object v0

    .line 720
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 722
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 727
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 148
    const-class v7, Lcom/xiaomi/c/f;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    if-nez v0, :cond_1

    .line 149
    sget-object v0, Lcom/xiaomi/c/f;->aHp:Lcom/xiaomi/c/j;

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lcom/xiaomi/c/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/c/f;-><init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    .line 155
    :goto_0
    sget-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/xiaomi/c/p;->Bb()Lcom/xiaomi/c/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/xiaomi/c/p;->init(Landroid/content/Context;)V

    .line 159
    :cond_0
    invoke-static {}, Lcom/xiaomi/c/p;->Bb()Lcom/xiaomi/c/p;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    iget-object v1, v1, Lcom/xiaomi/c/f;->aHn:Lcom/xiaomi/c/r;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/p;->a(Lcom/xiaomi/c/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    monitor-exit v7

    return-void

    .line 153
    :cond_2
    :try_start_1
    sget-object v0, Lcom/xiaomi/c/f;->aHp:Lcom/xiaomi/c/j;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/c/j;->a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;)Lcom/xiaomi/c/f;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized a(Lcom/xiaomi/c/j;)V
    .locals 3

    .prologue
    .line 118
    const-class v1, Lcom/xiaomi/c/f;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/xiaomi/c/f;->aHp:Lcom/xiaomi/c/j;

    .line 119
    invoke-static {}, Lcom/xiaomi/c/p;->Bb()Lcom/xiaomi/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/xiaomi/c/p;->Bb()Lcom/xiaomi/c/p;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;

    iget-object v2, v2, Lcom/xiaomi/c/f;->aHn:Lcom/xiaomi/c/r;

    invoke-virtual {v0, v2}, Lcom/xiaomi/c/p;->b(Lcom/xiaomi/c/r;)V

    .line 122
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/c/f;->aHo:Lcom/xiaomi/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v1

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 731
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 732
    :cond_0
    const-string v0, ""

    .line 740
    :goto_0
    return-object v0

    .line 734
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 737
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 740
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    const-string p1, "unknown"

    .line 848
    :cond_0
    :goto_0
    return-object p1

    .line 845
    :cond_1
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const-string p1, "WIFI"

    goto :goto_0
.end method

.method private j(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18

    .prologue
    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/c/f;->purge()V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v3

    .line 369
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/c/f;->AT()Z

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    sget-object v3, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    monitor-enter v3

    .line 378
    :try_start_2
    sget-object v2, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 379
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 380
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/c/f;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/c/f;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 394
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/a/a/e/a;->ca(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "wifi"

    .line 395
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/c/f;->aHi:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/f;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 397
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    const-string v3, "OK"

    const-string v6, "S"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 400
    const-string v3, "R"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 401
    const-string v3, "province"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 402
    const-string v3, "city"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 403
    const-string v3, "isp"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 404
    const-string v3, "ip"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 405
    const-string v3, "country"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 407
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 409
    const-string v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/c/f;->AQ()Ljava/lang/String;

    move-result-object v2

    .line 413
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get bucket: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " isp:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hosts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 416
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_e

    .line 417
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 419
    if-nez v12, :cond_8

    .line 420
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no bucket found for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 416
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 394
    :cond_7
    const-string v2, "wap"

    goto/16 :goto_3

    .line 424
    :cond_8
    new-instance v13, Lcom/xiaomi/c/b;

    invoke-direct {v13, v2}, Lcom/xiaomi/c/b;-><init>(Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v2, v14, :cond_a

    .line 426
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 427
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 429
    new-instance v15, Lcom/xiaomi/c/s;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    sub-int v16, v16, v2

    move/from16 v0, v16

    invoke-direct {v15, v14, v0}, Lcom/xiaomi/c/s;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v15}, Lcom/xiaomi/c/b;->a(Lcom/xiaomi/c/s;)V

    .line 425
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 433
    :cond_a
    invoke-virtual {v5, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    iput-object v10, v13, Lcom/xiaomi/c/b;->aGW:Ljava/lang/String;

    .line 436
    iput-object v6, v13, Lcom/xiaomi/c/b;->province:Ljava/lang/String;

    .line 437
    iput-object v8, v13, Lcom/xiaomi/c/b;->isp:Ljava/lang/String;

    .line 438
    iput-object v9, v13, Lcom/xiaomi/c/b;->ip:Ljava/lang/String;

    .line 439
    iput-object v7, v13, Lcom/xiaomi/c/b;->city:Ljava/lang/String;

    .line 440
    const-string v2, "stat-percent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 441
    const-string v2, "stat-percent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/c/b;->b(D)V

    .line 444
    :cond_b
    const-string v2, "stat-domain"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 445
    const-string v2, "stat-domain"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/xiaomi/c/b;->da(Ljava/lang/String;)V

    .line 448
    :cond_c
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 449
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v14, v2

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/c/b;->G(J)V

    .line 452
    :cond_d
    invoke-virtual {v13}, Lcom/xiaomi/c/b;->AK()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xiaomi/c/f;->di(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 457
    :catch_0
    move-exception v2

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get bucket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 465
    :cond_e
    :goto_7
    const/4 v2, 0x0

    move v4, v2

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_10

    .line 466
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/c/b;

    .line 467
    if-eqz v2, :cond_f

    .line 468
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/c/f;->a(Ljava/lang/String;Lcom/xiaomi/c/b;)V

    .line 465
    :cond_f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8

    .line 459
    :catch_1
    move-exception v2

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get bucket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_7

    .line 461
    :catch_2
    move-exception v2

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get bucket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_7

    .line 472
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/c/f;->AU()V

    .line 473
    return-object v5
.end method

.method private zN()Ljava/lang/String;
    .locals 3

    .prologue
    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_0

    .line 858
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-object v0

    .line 860
    :catch_0
    move-exception v0

    .line 863
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public AQ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "unknown"

    .line 225
    :goto_0
    return-object v0

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 204
    if-nez v0, :cond_1

    .line 205
    const-string v0, "unknown"

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 208
    if-nez v0, :cond_2

    .line 209
    const-string v0, "unknown"

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 213
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 215
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 225
    :cond_4
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public AR()V
    .locals 5

    .prologue
    .line 574
    .line 575
    iget-object v2, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v2

    .line 576
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->AT()Z

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 580
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/c;

    .line 582
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/c/c;->AN()Lcom/xiaomi/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-direct {p0, v3}, Lcom/xiaomi/c/f;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 590
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 591
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/c/b;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/c/f;->a(Ljava/lang/String;Lcom/xiaomi/c/b;)V

    .line 590
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 586
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 595
    :cond_3
    return-void
.end method

.method protected AS()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 598
    .line 600
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/c/f;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    .line 614
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load host exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 616
    invoke-static {v2}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    .line 618
    :goto_2
    return-object v0

    .line 611
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 616
    invoke-static {v2}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 613
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method protected AT()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 624
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 625
    :try_start_0
    sget-boolean v2, Lcom/xiaomi/c/f;->aHs:Z

    if-nez v2, :cond_1

    .line 626
    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/c/f;->aHs:Z

    .line 627
    iget-object v2, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->AS()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 631
    invoke-virtual {p0, v2}, Lcom/xiaomi/c/f;->dj(Ljava/lang/String;)V

    .line 632
    const-string v2, "loading the new hosts succeed"

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :try_start_2
    monitor-exit v1

    .line 642
    :goto_0
    return v0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load host exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 641
    :cond_0
    monitor-exit v1

    .line 642
    const/4 v0, 0x0

    goto :goto_0

    .line 639
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public AU()V
    .locals 4

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->purge()V

    .line 681
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/c/f;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 686
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 688
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->AW()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 691
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 700
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 694
    :catch_1
    move-exception v0

    .line 695
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 696
    :catch_2
    move-exception v0

    .line 697
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public AV()Ljava/util/ArrayList;
    .locals 23

    .prologue
    .line 750
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v9

    .line 751
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/c/c;

    .line 754
    if-eqz v2, :cond_0

    .line 755
    invoke-virtual {v2}, Lcom/xiaomi/c/c;->AO()Ljava/util/ArrayList;

    move-result-object v2

    .line 756
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/c/b;

    .line 759
    invoke-virtual {v2}, Lcom/xiaomi/c/b;->AK()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 760
    if-nez v3, :cond_b

    .line 761
    new-instance v3, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-direct {v3}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;-><init>()V

    .line 762
    const-string v4, "httpapi"

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cv(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 763
    iget-object v4, v2, Lcom/xiaomi/c/b;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cz(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 764
    iget-object v4, v2, Lcom/xiaomi/c/b;->aGU:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/c/f;->dh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cy(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/c/f;->aHi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cw(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 766
    sget-object v4, Lcom/xiaomi/c/f;->aHr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cx(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 767
    sget-object v4, Lcom/xiaomi/c/f;->aHq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cA(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cB(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/c/f;->zN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->cC(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 770
    new-instance v4, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-direct {v4}, Lcom/xiaomi/common/logger/thrift/mfs/Location;-><init>()V

    .line 771
    iget-object v5, v2, Lcom/xiaomi/c/b;->city:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->cH(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 772
    iget-object v5, v2, Lcom/xiaomi/c/b;->aGW:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->cF(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 773
    iget-object v5, v2, Lcom/xiaomi/c/b;->province:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->cG(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 774
    iget-object v5, v2, Lcom/xiaomi/c/b;->isp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->cI(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 775
    invoke-virtual {v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->a(Lcom/xiaomi/common/logger/thrift/mfs/Location;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 776
    invoke-virtual {v2}, Lcom/xiaomi/c/b;->AK()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    .line 779
    :goto_1
    new-instance v13, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    invoke-direct {v13}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;-><init>()V

    .line 780
    iget-object v3, v2, Lcom/xiaomi/c/b;->host:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->cu(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    .line 781
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 782
    invoke-virtual {v2}, Lcom/xiaomi/c/b;->AL()Ljava/util/ArrayList;

    move-result-object v2

    .line 784
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/c/s;

    .line 785
    invoke-virtual {v2}, Lcom/xiaomi/c/s;->Bd()Ljava/util/ArrayList;

    move-result-object v16

    .line 787
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 788
    new-instance v17, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    invoke-direct/range {v17 .. v17}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;-><init>()V

    .line 789
    iget-object v2, v2, Lcom/xiaomi/c/s;->host:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->cE(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 791
    const/4 v7, 0x0

    .line 792
    const/4 v6, 0x0

    .line 793
    const-wide/16 v4, 0x0

    .line 794
    const/4 v3, 0x0

    .line 795
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 796
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/c/a;

    .line 797
    invoke-virtual {v2}, Lcom/xiaomi/c/a;->AE()I

    move-result v19

    if-ltz v19, :cond_3

    .line 798
    add-int/lit8 v7, v7, 0x1

    .line 799
    invoke-virtual {v2}, Lcom/xiaomi/c/a;->AF()J

    move-result-wide v20

    add-long v4, v4, v20

    .line 800
    int-to-long v0, v3

    move-wide/from16 v20, v0

    invoke-virtual {v2}, Lcom/xiaomi/c/a;->getSize()J

    move-result-wide v2

    add-long v2, v2, v20

    long-to-int v2, v2

    move v3, v6

    move v6, v7

    :goto_4
    move v7, v6

    move v6, v3

    move v3, v2

    .line 812
    goto :goto_3

    .line 802
    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/c/a;->AG()Ljava/lang/String;

    move-result-object v19

    .line 803
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 804
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_4
    add-int/lit8 v2, v6, 0x1

    move v6, v7

    move/from16 v22, v2

    move v2, v3

    move/from16 v3, v22

    goto :goto_4

    .line 804
    :cond_5
    const/4 v2, 0x1

    goto :goto_5

    .line 814
    :cond_6
    invoke-virtual/range {v17 .. v18}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->b(Ljava/util/Map;)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 815
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->dP(I)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 816
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->dO(I)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 817
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->E(J)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 818
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->dQ(I)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 819
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 839
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 823
    :cond_7
    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 824
    invoke-virtual {v13, v14}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->v(Ljava/util/List;)Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    .line 825
    invoke-virtual {v8, v13}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->c(Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;)V

    goto/16 :goto_0

    .line 831
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 832
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 833
    invoke-virtual {v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->ze()I

    move-result v5

    if-lez v5, :cond_9

    .line 834
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 838
    :cond_a
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    :cond_b
    move-object v8, v3

    goto/16 :goto_1
.end method

.method protected AW()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 905
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 906
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 907
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/c;

    .line 908
    invoke-virtual {v0}, Lcom/xiaomi/c/c;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 910
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uuid"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "list"

    const-string v5, ","

    invoke-static {p1, v5}, Lcom/xiaomi/c/f;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v3, "resolver.gslb.mi-idc.com"

    invoke-virtual {p0, v3}, Lcom/xiaomi/c/f;->df(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v3

    .line 489
    const-string v4, "http://%1$s/gslb/gslb/getbucket.asp?ver=3.0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "resolver.gslb.mi-idc.com"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 490
    if-nez v3, :cond_0

    .line 491
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 499
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 500
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 493
    :cond_0
    invoke-virtual {v3, v4}, Lcom/xiaomi/c/b;->cZ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHh:Lcom/xiaomi/c/k;

    if-nez v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    new-instance v5, Ljava/net/URL;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/xiaomi/a/a/e/a;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 517
    :cond_2
    :goto_3
    return-object v1

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHh:Lcom/xiaomi/c/k;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/xiaomi/c/k;->dk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 514
    :cond_4
    if-eqz v0, :cond_2

    .line 515
    throw v0

    .line 509
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/c/b;)V
    .locals 3

    .prologue
    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the argument is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHg:Lcom/xiaomi/c/e;

    invoke-interface {v0, p1}, Lcom/xiaomi/c/e;->dc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->AT()Z

    .line 558
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/c;

    .line 560
    invoke-virtual {v0, p2}, Lcom/xiaomi/c/c;->b(Lcom/xiaomi/c/b;)V

    .line 566
    :goto_0
    monitor-exit v1

    .line 568
    :cond_2
    return-void

    .line 562
    :cond_3
    new-instance v0, Lcom/xiaomi/c/c;

    invoke-direct {v0, p1}, Lcom/xiaomi/c/c;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, p2}, Lcom/xiaomi/c/c;->b(Lcom/xiaomi/c/b;)V

    .line 564
    iget-object v2, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 524
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 526
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dd(Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 2

    .prologue
    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the url is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 241
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/c/f;->i(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    move-result-object v0

    return-object v0
.end method

.method public de(Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/c/f;->i(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    move-result-object v0

    return-object v0
.end method

.method protected df(Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 2

    .prologue
    .line 316
    .line 317
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->AT()Z

    .line 319
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/c;

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/xiaomi/c/c;->AN()Lcom/xiaomi/c/b;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dg(Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 6

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/c/f;->aHl:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/c/f;->aHj:J

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/f;->aHl:J

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-direct {p0, v0}, Lcom/xiaomi/c/f;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/b;

    .line 342
    if-eqz v0, :cond_0

    .line 343
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/c/f;->aHj:J

    .line 351
    :goto_0
    return-object v0

    .line 346
    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/c/f;->aHj:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 347
    iget-wide v0, p0, Lcom/xiaomi/c/f;->aHj:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/c/f;->aHj:J

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public di(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/xiaomi/c/f;->aHm:Ljava/lang/String;

    .line 895
    return-void
.end method

.method protected dj(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 915
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 917
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 918
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 919
    new-instance v3, Lcom/xiaomi/c/c;

    invoke-direct {v3}, Lcom/xiaomi/c/c;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/c/c;->k(Lorg/json/JSONObject;)Lcom/xiaomi/c/c;

    move-result-object v3

    .line 920
    iget-object v4, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/xiaomi/c/c;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 922
    :cond_0
    monitor-exit v1

    .line 923
    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    const-string v0, "resolver.gslb.mi-idc.com"

    return-object v0
.end method

.method protected getProcessName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 703
    iget-object v0, p0, Lcom/xiaomi/c/f;->aFx:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_1

    .line 707
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 708
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 709
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 713
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.xiaomi"

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Z)Lcom/xiaomi/c/b;
    .locals 2

    .prologue
    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHg:Lcom/xiaomi/c/e;

    invoke-interface {v0, p1}, Lcom/xiaomi/c/e;->dc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    const/4 v0, 0x0

    .line 312
    :cond_1
    :goto_0
    return-object v0

    .line 267
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/c/f;->df(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/c/b;->AI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_3
    if-eqz p2, :cond_4

    .line 273
    invoke-virtual {p0, p1}, Lcom/xiaomi/c/f;->dg(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 275
    goto :goto_0

    .line 279
    :cond_4
    new-instance v1, Lcom/xiaomi/c/i;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/c/i;-><init>(Lcom/xiaomi/c/f;Ljava/lang/String;Lcom/xiaomi/c/b;)V

    move-object v0, v1

    .line 312
    goto :goto_0
.end method

.method public purge()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 870
    iget-object v4, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    monitor-enter v4

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/c;

    .line 872
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaomi/c/c;->bI(Z)V

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 876
    :goto_1
    if-nez v0, :cond_2

    .line 877
    const/4 v3, 0x1

    .line 878
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/c/c;

    invoke-virtual {v1}, Lcom/xiaomi/c/c;->AO()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/xiaomi/c/f;->aHe:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 882
    goto :goto_1

    .line 886
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    return-void

    :cond_3
    move v0, v3

    goto :goto_1
.end method
