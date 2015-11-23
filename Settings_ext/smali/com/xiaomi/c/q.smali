.class Lcom/xiaomi/c/q;
.super Ljava/util/TimerTask;
.source "UploadHostStatHelper.java"


# instance fields
.field final synthetic aHC:Lcom/xiaomi/c/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/c/p;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xiaomi/c/q;->aHC:Lcom/xiaomi/c/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/xiaomi/c/q;->aHC:Lcom/xiaomi/c/p;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/c/q;->aHC:Lcom/xiaomi/c/p;

    invoke-static {v2}, Lcom/xiaomi/c/p;->a(Lcom/xiaomi/c/p;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/c/r;

    .line 87
    invoke-interface {v0}, Lcom/xiaomi/c/r;->AX()Ljava/util/List;

    move-result-object v2

    .line 88
    invoke-interface {v0}, Lcom/xiaomi/c/r;->AY()D

    move-result-wide v4

    .line 90
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaomi/c/q;->aHC:Lcom/xiaomi/c/p;

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/c/p;->a(Lcom/xiaomi/c/p;Ljava/util/List;D)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadHostStat exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/thrift/TException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/c/q;->aHC:Lcom/xiaomi/c/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/c/p;->a(Lcom/xiaomi/c/p;Z)Z

    .line 97
    return-void
.end method
