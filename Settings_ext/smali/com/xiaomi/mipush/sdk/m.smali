.class public Lcom/xiaomi/mipush/sdk/m;
.super Ljava/lang/Object;
.source "PushMessageProcessor.java"


# static fields
.field private static aFw:Lcom/xiaomi/mipush/sdk/m;

.field private static aFy:Ljava/util/Queue;

.field private static lock:Ljava/lang/Object;


# instance fields
.field private aFx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/m;->aFw:Lcom/xiaomi/mipush/sdk/m;

    .line 499
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/m;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    .line 71
    :cond_0
    return-void
.end method

.method private static K(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 502
    sget-object v2, Lcom/xiaomi/mipush/sdk/m;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 503
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 504
    sget-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 505
    const-string v1, "pref_msg_ids"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 507
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    .line 508
    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 509
    sget-object v7, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    const/4 v0, 0x1

    monitor-exit v2

    .line 523
    :goto_1
    return v0

    .line 515
    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v4, 0xa

    if-le v1, v4, :cond_2

    .line 517
    sget-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 519
    :cond_2
    sget-object v1, Lcom/xiaomi/mipush/sdk/m;->aFy:Ljava/util/Queue;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/xiaomi/a/a/f/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 521
    const-string v4, "pref_msg_ids"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    monitor-exit v2

    goto :goto_1

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 528
    if-eqz p2, :cond_0

    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-object v1

    .line 531
    :cond_1
    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    sget-object v2, Lcom/xiaomi/push/service/B;->aJp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 584
    :goto_1
    if-eqz v0, :cond_0

    .line 585
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 589
    if-eqz v2, :cond_0

    move-object v1, v0

    .line 590
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 539
    goto :goto_1

    .line 540
    :cond_2
    sget-object v2, Lcom/xiaomi/push/service/B;->aJq:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    if-eqz v0, :cond_a

    .line 545
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .line 546
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 547
    :catch_1
    move-exception v2

    .line 548
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_3
    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 552
    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 554
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 556
    :try_start_4
    const-string v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    const-string v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    move-object v0, v2

    .line 562
    goto/16 :goto_1

    .line 559
    :catch_2
    move-exception v0

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause by intent_flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 563
    :cond_5
    sget-object v2, Lcom/xiaomi/push/service/B;->aJr:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 565
    const-string v0, "web_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    if-eqz v0, :cond_9

    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 572
    :goto_4
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 575
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 576
    :try_start_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 578
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 579
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 592
    :catch_4
    move-exception v0

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 547
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v2, v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 12

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 246
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;

    move-result-object v0

    .line 249
    if-nez v0, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-object v5

    .line 253
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing a message, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 262
    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->aFt:[I

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 293
    const-string v0, "receive a message in pause state. drop it"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 257
    const-string v0, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v4, v0

    .line 264
    check-cast v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .line 265
    iget-wide v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    iget-object v1, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_1
    const-string v0, "register"

    iget-wide v2, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    .line 277
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/p;->Af()V

    goto/16 :goto_0

    .line 281
    :pswitch_2
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .line 282
    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->clear()V

    .line 284
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ce(Landroid/content/Context;)V

    .line 286
    :cond_3
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->zV()V

    goto/16 :goto_0

    .line 296
    :cond_4
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 297
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->El()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v3

    .line 298
    if-nez v3, :cond_5

    .line 299
    const-string v0, "receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_5
    if-eqz p2, :cond_6

    .line 305
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 306
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    iget-object v6, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v2, v4, v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->J(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-gez v1, :cond_9

    .line 315
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->B(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    :cond_7
    :goto_3
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v1, :cond_1d

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 324
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v2, "jobkey"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 327
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 329
    :goto_5
    if-nez p2, :cond_a

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/m;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop a duplicate message, key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 369
    :goto_6
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto/16 :goto_0

    .line 308
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v4, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 316
    :cond_9
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->H(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-gez v1, :cond_7

    .line 318
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->F(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 332
    :cond_a
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v4

    if-nez v4, :cond_b

    if-nez p2, :cond_b

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/t;->c(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 336
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)V

    goto/16 :goto_0

    .line 339
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive a message, msgid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", jobkey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 340
    if-eqz p2, :cond_1b

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v2

    const-string v4, "notify_effect"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 342
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v2

    .line 343
    const-string v0, "notify_effect"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 346
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 347
    if-nez v0, :cond_c

    .line 348
    const-string v0, "Getting Intent fail from ignore reg message. "

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_c
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMessage;->Di()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 353
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 357
    :cond_e
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mipush/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_0

    .line 359
    sget-object v3, Lcom/xiaomi/push/service/B;->aJr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 360
    const-string v0, "key_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    move-object v6, v0

    .line 377
    check-cast v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    .line 378
    iget-wide v0, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_10

    .line 379
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->F(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    :cond_10
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_7
    const-string v0, "subscribe-topic"

    iget-wide v2, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    iget-object v4, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    move-object v6, v0

    .line 392
    check-cast v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    .line 393
    iget-wide v0, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_11

    .line 394
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->G(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    :cond_11
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :goto_8
    const-string v0, "unsubscibe-topic"

    iget-wide v2, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    iget-object v4, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_5
    move-object v5, v0

    .line 407
    check-cast v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    .line 408
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->DO()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->DR()Ljava/util/List;

    move-result-object v3

    .line 410
    iget-wide v6, v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    cmp-long v1, v6, v10

    if-nez v1, :cond_17

    .line 411
    const-string v1, "accept-time"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_13

    .line 413
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "00:00"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "00:00"

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 415
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/xiaomi/mipush/sdk/a;->setPaused(Z)V

    .line 419
    :goto_9
    const-string v1, "GMT+08"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 434
    :goto_a
    iget-wide v2, v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    iget-object v4, v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v5

    goto/16 :goto_0

    .line 417
    :cond_12
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/xiaomi/mipush/sdk/a;->setPaused(Z)V

    goto :goto_9

    .line 420
    :cond_13
    const-string v1, "set-alias"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 422
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->B(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_a

    .line 423
    :cond_14
    const-string v1, "unset-alias"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 425
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->C(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_a

    .line 426
    :cond_15
    const-string v1, "set-account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 428
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->D(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_a

    .line 429
    :cond_16
    const-string v1, "unset-account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 431
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->E(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    move-object v1, v3

    goto/16 :goto_a

    .line 439
    :pswitch_6
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 440
    const-string v1, "registration id expired"

    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 441
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->cf(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 442
    :cond_18
    const-string v1, "client_info_update_ok"

    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "app_version"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/a;->cK(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    move-object v1, v5

    goto/16 :goto_8

    :cond_1a
    move-object v1, v5

    goto/16 :goto_7

    :cond_1b
    move-object v5, v1

    goto/16 :goto_6

    :cond_1c
    move-object v2, v1

    goto/16 :goto_5

    :cond_1d
    move-object v1, v5

    goto/16 :goto_4

    :cond_1e
    move-object v1, v5

    goto/16 :goto_1

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 207
    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-object v1

    .line 214
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: receive a message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v2

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message arrived: processing an arrived message, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 223
    sget-object v3, Lcom/xiaomi/mipush/sdk/n;->aFt:[I

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 226
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->El()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v2

    .line 227
    if-nez v2, :cond_1

    .line 228
    const-string v0, "message arrived: receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 218
    const-string v0, "message arrived: receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 233
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v0

    .line 236
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->bG(Z)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message arrived: receive a message, msgid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jobkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move-object v1, v0

    .line 238
    goto/16 :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 5

    .prologue
    .line 474
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 475
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 476
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 477
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 478
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Dq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->L(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 479
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dN(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOT:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 483
    return-void
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 487
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 488
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 489
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->El()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->Dk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->L(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 490
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dN(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dO(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOT:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v0, v2, p2}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 497
    return-void
.end method

.method public static cn(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/xiaomi/mipush/sdk/m;->aFw:Lcom/xiaomi/mipush/sdk/m;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/xiaomi/mipush/sdk/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/m;->aFw:Lcom/xiaomi/mipush/sdk/m;

    .line 63
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/m;->aFw:Lcom/xiaomi/mipush/sdk/m;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive an intent from server, action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 76
    const-string v0, "mrt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 81
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 82
    const-string v3, "mipush_notified"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 83
    if-nez v2, :cond_1

    .line 84
    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 202
    :goto_0
    return-object v0

    .line 87
    :cond_1
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 89
    :try_start_0
    invoke-static {v4, v2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 91
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v5

    .line 92
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v6

    .line 94
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ActionType;->aOS:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v7, v8, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->isPaused()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v3, :cond_3

    .line 97
    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v7

    const-string v8, "mrt"

    invoke-virtual {v7, v8, v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    const-string v7, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-direct {p0, v4}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 105
    :cond_3
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v0

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ActionType;->aOS:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v7, :cond_6

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DU()Z

    move-result v0

    if-nez v0, :cond_6

    .line 107
    invoke-static {v4}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    const-string v2, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move-object v0, v1

    .line 112
    goto :goto_0

    .line 108
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 115
    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v7, "notify_effect"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    :cond_6
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->zK()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->aOO:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eq v0, v6, :cond_a

    .line 131
    invoke-static {v4}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    invoke-direct {p0, v4, v3, v2}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :cond_7
    const-string v0, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move-object v0, v1

    .line 125
    goto/16 :goto_0

    .line 134
    :cond_8
    const-string v0, "receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    :cond_9
    :goto_2
    move-object v0, v1

    .line 202
    goto/16 :goto_0

    .line 137
    :cond_a
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->zK()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->zL()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    iget-object v0, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOP:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v2, :cond_b

    .line 139
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/a;->clear()V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ce(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->zV()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 143
    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ch(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 151
    :catch_1
    move-exception v0

    .line 152
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 146
    :cond_c
    :try_start_2
    invoke-direct {p0, v4, v3, v2}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :cond_d
    const-string v0, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 155
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    .line 157
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 159
    :try_start_3
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 160
    if-eqz v2, :cond_e

    .line 161
    invoke-static {v1, v2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_4

    .line 166
    :cond_e
    :goto_3
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    .line 167
    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->F(J)V

    .line 168
    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a error message. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_code"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_f
    const-string v0, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 174
    if-nez v0, :cond_10

    .line 175
    const-string v0, "message arrived: receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_10
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 180
    :try_start_4
    invoke-static {v2, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 181
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/m;->aFx:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 183
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zK()Z

    move-result v4

    if-nez v4, :cond_12

    .line 184
    invoke-static {v2}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 185
    const-string v0, "message arrived: receive ignore reg message invalid!"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/thrift/TException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 196
    :catch_2
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 187
    :cond_11
    :try_start_5
    const-string v0, "message arrived: receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/thrift/TException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 198
    :catch_3
    move-exception v0

    .line 199
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 190
    :cond_12
    :try_start_6
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zK()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zL()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 191
    const-string v0, "message arrived: app info is invalidated"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 193
    :cond_13
    invoke-direct {p0, v2, v0}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :try_end_6
    .catch Lorg/apache/thrift/TException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    .line 163
    :catch_4
    move-exception v2

    goto/16 :goto_3
.end method

.method public a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 16

    .prologue
    .line 456
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    :goto_0
    return-object p3

    .line 459
    :cond_0
    const-wide/16 v4, 0x5a0

    .line 460
    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    int-to-long v6, v2

    .line 461
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 462
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 463
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 464
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 465
    const-wide/16 v14, 0x3c

    mul-long/2addr v8, v14

    add-long/2addr v8, v10

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    rem-long/2addr v8, v4

    .line 466
    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v12

    add-long/2addr v2, v10

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    .line 467
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
