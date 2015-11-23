.class public Lcom/xiaomi/push/service/C;
.super Lcom/xiaomi/push/service/L;
.source "PushHostManagerFactory.java"

# interfaces
.implements Lcom/xiaomi/c/j;


# instance fields
.field private aIr:Lcom/xiaomi/push/service/XMPushService;

.field private aJw:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xiaomi/push/service/L;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaomi/push/service/C;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 42
    return-void
.end method

.method public static d(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 6

    .prologue
    .line 25
    new-instance v1, Lcom/xiaomi/push/service/C;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/C;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 26
    invoke-static {}, Lcom/xiaomi/push/service/J;->BQ()Lcom/xiaomi/push/service/J;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/L;)V

    .line 28
    invoke-static {}, Lcom/xiaomi/push/service/J;->BQ()Lcom/xiaomi/push/service/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/J;->BR()Lcom/xiaomi/push/b/b;

    move-result-object v2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/push/b/b;->Bl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v2}, Lcom/xiaomi/push/b/b;->Bl()Z

    move-result v0

    .line 34
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    invoke-static {v1}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/c/j;)V

    .line 37
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/g;

    invoke-direct {v2}, Lcom/xiaomi/push/service/g;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/c/f;->a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;)Lcom/xiaomi/c/f;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/xiaomi/push/service/D;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/D;-><init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/b/b;)V
    .locals 7

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/xiaomi/push/b/b;->Bl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch to BucketV2 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/b;->Bk()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    .line 90
    const-class v6, Lcom/xiaomi/c/f;

    monitor-enter v6

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b/b;->Bk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    instance-of v0, v0, Lcom/xiaomi/c/l;

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/c/j;)V

    .line 94
    iget-object v0, p0, Lcom/xiaomi/push/service/C;->aIr:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/g;

    invoke-direct {v2}, Lcom/xiaomi/push/service/g;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/c/f;->a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    monitor-exit v6

    .line 104
    :cond_1
    return-void

    .line 97
    :cond_2
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/c/l;

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/c/j;)V

    .line 99
    iget-object v0, p0, Lcom/xiaomi/push/service/C;->aIr:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/g;

    invoke-direct {v2}, Lcom/xiaomi/push/service/g;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/c/f;->a(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/xiaomi/push/b/d;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/xiaomi/push/b/d;->Bt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/service/C;->aJw:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch bucket :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/d;->Bs()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/push/service/C;->aJw:J

    .line 56
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/xiaomi/c/f;->clear()V

    .line 58
    invoke-virtual {v0}, Lcom/xiaomi/c/f;->AR()V

    .line 60
    iget-object v2, p0, Lcom/xiaomi/push/service/C;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->Ca()Lcom/xiaomi/smack/a;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->Cm()Lcom/xiaomi/smack/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/c/f;->de(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/xiaomi/c/b;->AJ()Ljava/util/ArrayList;

    move-result-object v4

    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 74
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string v0, "bucket changed, force reconnect"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/C;->aIr:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 78
    iget-object v0, p0, Lcom/xiaomi/push/service/C;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    .line 83
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
