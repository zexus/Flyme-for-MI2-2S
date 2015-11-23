.class public Lcom/xiaomi/push/service/d;
.super Landroid/os/HandlerThread;
.source "ConnectionJobController.java"


# instance fields
.field private volatile aIu:J

.field private volatile aIv:Z

.field private aIw:Ljava/util/List;

.field private volatile mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/d;->aIu:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/d;->aIv:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/d;->aIw:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/d;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/xiaomi/push/service/d;->aIu:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/d;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/xiaomi/push/service/d;->aIv:Z

    return p1
.end method


# virtual methods
.method public BB()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/d;->ee(I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/ab;J)V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/xiaomi/push/service/d;->aIw:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 98
    iget v2, p1, Lcom/xiaomi/push/service/ab;->type:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 99
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 105
    :goto_0
    monitor-exit v1

    .line 106
    return-void

    .line 102
    :cond_0
    const-string v0, "the job is pended, the controller is not ready."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->aIw:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public ee(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public ef(I)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 4

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/xiaomi/push/service/d;->aIv:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/d;->aIu:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLooperPrepared()V
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/xiaomi/push/service/e;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/d;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/e;-><init>(Lcom/xiaomi/push/service/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/d;->mHandler:Landroid/os/Handler;

    .line 47
    iget-object v2, p0, Lcom/xiaomi/push/service/d;->aIw:Ljava/util/List;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->aIw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 49
    const-string v1, "executing the pending job."

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 50
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/push/service/ab;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/ab;J)V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/d;->aIw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    return-void
.end method
