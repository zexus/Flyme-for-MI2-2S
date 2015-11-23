.class public Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
.super Lcom/xiaomi/mipush/sdk/i;
.source "NotifyAdsManager.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/d;


# static fields
.field private static aGa:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;


# instance fields
.field private aFY:Landroid/content/SharedPreferences;

.field private aFZ:Ljava/lang/String;

.field private aGb:Lcom/xiaomi/miui/pushads/sdk/h;

.field private aGc:Ljava/lang/String;

.field private aGd:Ljava/lang/String;

.field private aGe:Lcom/xiaomi/miui/pushads/sdk/a/c;

.field private aGf:Ljava/util/ArrayList;

.field private aGg:I

.field private aGh:I

.field private aGi:Ljava/lang/String;

.field private aGj:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;

.field private rr:Ljava/lang/String;


# direct methods
.method public static declared-synchronized An()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
    .locals 2

    .prologue
    .line 340
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGa:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private Ao()V
    .locals 2

    .prologue
    .line 577
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGh:I

    .line 578
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/h;->Am()Ljava/util/ArrayList;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 582
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->Ap()V

    .line 583
    return-void
.end method

.method private Ap()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 633
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache \u4e2a\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 639
    const/4 v0, 0x0

    move v1, v0

    .line 641
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ge v1, v8, :cond_4

    .line 642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/i;

    .line 645
    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFM:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFM:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fc7\u671f\uff0c\u6240\u4ee5\u8df3\u8fc7, lastShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFM:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 647
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 652
    :cond_2
    iget v3, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFN:I

    if-lt v3, v8, :cond_3

    .line 653
    const-string v0, "cache \u7684\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650\uff0c\u4e0d\u6b63\u5e38"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 654
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 659
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 660
    iget-object v3, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFL:Ljava/lang/String;

    iget v0, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFN:I

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFZ:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    const-string v0, "cache \u592a\u591a\uff0c\u5206\u6279\u8fdb\u884c\u4e0b\u8f7d"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 669
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 670
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    .line 461
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    if-gtz v2, :cond_1

    .line 462
    const-string v1, "\u767d\u540d\u5355\u7528\u6237"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    packed-switch v2, :pswitch_data_0

    move v2, v1

    move v3, v1

    .line 481
    :goto_1
    if-le v3, v2, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650---\u5df2\u7ecf\u83b7\u5f97\u6b21\u6570\uff1a "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4e0a\u9650: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    move v0, v1

    .line 487
    goto :goto_0

    .line 470
    :pswitch_0
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    mul-int/lit8 v2, v2, 0x4

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5192\u6ce1\u4e0a\u9650: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    const-string v4, "bubblecount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 475
    :pswitch_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u901a\u77e5\u4e0a\u9650: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    const-string v4, "notifycount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 391
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/l;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/l;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/d;)V

    .line 393
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method private b(Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 491
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGh:I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/h;->a(Ljava/lang/String;JI)V

    .line 494
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/h;->Al()V

    .line 495
    return-void
.end method

.method public static cT(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 676
    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method


# virtual methods
.method public Ai()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/g;->Ak()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGc:Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->Ao()V

    goto :goto_0
.end method

.method public Aj()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c0f\u7c73\u8d26\u6237\u53d1\u751f\u4e86\u6539\u53d8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 534
    iget-boolean v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGj:Z

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGd:Ljava/lang/String;

    .line 539
    const-string v0, ""

    .line 545
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGi:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGi:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u4f7f\u7528\u7684\u662f\u81ea\u5b9a\u4e49\u7684\u8d26\u6237: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGd:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u65e7\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u65b0\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "starttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifycount"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 572
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubblecount"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 555
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mImei:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 558
    :cond_5
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "\u6ca1\u6709 userid, imei onAccountChanged \u91cd\u8bbealias \u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(ILcom/xiaomi/miui/pushads/sdk/a/b;Lcom/xiaomi/miui/pushads/sdk/l;)V
    .locals 4

    .prologue
    .line 415
    if-nez p2, :cond_1

    .line 416
    const-string v0, "\u8fd4\u56de\u5e7f\u544a\u4e3anull"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 422
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    .line 424
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFM:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 426
    iget-object v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFL:Ljava/lang/String;

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFM:J

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->b(Ljava/lang/String;JI)V

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGe:Lcom/xiaomi/miui/pushads/sdk/a/c;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 447
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    const-string v0, "===========\u7ed9APP \u53d1\u9001\u5e7f\u544a\u4fe1\u606f"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGe:Lcom/xiaomi/miui/pushads/sdk/a/c;

    invoke-interface {v0, p2}, Lcom/xiaomi/miui/pushads/sdk/a/c;->d(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    goto :goto_0

    .line 428
    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_3
    if-nez p1, :cond_5

    .line 432
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    if-lez v0, :cond_4

    .line 433
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGg:I

    .line 434
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->An()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dX(I)V

    .line 436
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4e0b\u8f7d\u6210\u529f: id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7c7b\u578b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6210\u529f\u6b21\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->An()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    move-result-object v1

    iget v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dW(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_5
    const-string v0, "com.miui.ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v0, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    :cond_6
    const-string v0, "\u5e7f\u544a\u6570\u91cf\u8d85\u8fc7\u9650\u5236\uff0c\u4e0d\u8fd4\u56de\u7ed9APP"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aGe:Lcom/xiaomi/miui/pushads/sdk/a/c;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 208
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 209
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 210
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 215
    const-string v0, "\u901a\u9053\u8fdb\u884c\u521d\u59cb\u5316OK"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v0, "\u901a\u9053\u521d\u59cb\u5316\u5931\u8d25\uff0c \u5df2\u7ecf\u901a\u77e5\u4e86app\uff0c\u9700\u8981\u91cd\u65b0 open \u901a\u9053"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 271
    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u547d\u4ee4\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    move v1, v2

    .line 275
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 275
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_0
    const-string v0, "set-alias"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 281
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 282
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    const/4 v0, 0x1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u7f6e\u522b\u540d\u6210\u529f: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 281
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 289
    :cond_1
    if-nez v1, :cond_2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u522b\u540d\u5931\u8d25\uff0c\u91cd\u65b0\u8bbe\u7f6e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u6d88\u606f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u6709\u6548alias\uff0c\u5ffd\u7565\u6d88\u606f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->rr:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u4e0d\u540calias \u7684\u6d88\u606f\uff0c\u6ce8\u9500\u65e7\u7684 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cT(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFZ:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public declared-synchronized dW(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 315
    monitor-enter p0

    .line 316
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 322
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 318
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 319
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dX(I)V
    .locals 3

    .prologue
    .line 326
    monitor-enter p0

    .line 328
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 331
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    .line 335
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
