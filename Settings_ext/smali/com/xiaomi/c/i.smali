.class Lcom/xiaomi/c/i;
.super Lcom/xiaomi/c/b;
.source "HostManager.java"


# instance fields
.field final synthetic aHt:Lcom/xiaomi/c/f;

.field aHu:Lcom/xiaomi/c/b;

.field final synthetic aHv:Lcom/xiaomi/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/c/f;Ljava/lang/String;Lcom/xiaomi/c/b;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcom/xiaomi/c/i;->aHt:Lcom/xiaomi/c/f;

    iput-object p3, p0, Lcom/xiaomi/c/i;->aHv:Lcom/xiaomi/c/b;

    invoke-direct {p0, p2}, Lcom/xiaomi/c/b;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaomi/c/i;->aHv:Lcom/xiaomi/c/b;

    iput-object v0, p0, Lcom/xiaomi/c/i;->aHu:Lcom/xiaomi/c/b;

    return-void
.end method


# virtual methods
.method public AI()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/xiaomi/c/a;)V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/i;->aHu:Lcom/xiaomi/c/b;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaomi/c/i;->aHu:Lcom/xiaomi/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/c/b;->a(Ljava/lang/String;Lcom/xiaomi/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_0
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bH(Z)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/xiaomi/c/i;->aHu:Lcom/xiaomi/c/b;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaomi/c/i;->aHu:Lcom/xiaomi/c/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/c/b;->bH(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    :cond_0
    sget-object v2, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    sget-object v0, Lcom/xiaomi/c/f;->aHf:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaomi/c/i;->host:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 297
    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    monitor-exit p0

    return-object v1

    .line 300
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
