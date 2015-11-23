.class final Lcom/google/common/collect/i;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/ad;


# instance fields
.field volatile aAd:Lcom/google/common/collect/ad;

.field final computingFunction:Lcom/google/common/base/b;


# direct methods
.method public constructor <init>(Lcom/google/common/base/b;)V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xz()Lcom/google/common/collect/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i;->aAd:Lcom/google/common/collect/ad;

    .line 290
    iput-object p1, p0, Lcom/google/common/collect/i;->computingFunction:Lcom/google/common/base/b;

    .line 291
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/R;)Lcom/google/common/collect/ad;
    .locals 0

    .prologue
    .line 307
    return-object p0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/i;->computingFunction:Lcom/google/common/base/b;

    invoke-interface {v0, p1}, Lcom/google/common/base/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    new-instance v1, Lcom/google/common/collect/h;

    invoke-direct {v1, v0}, Lcom/google/common/collect/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/i;->b(Lcom/google/common/collect/ad;)V

    .line 360
    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Lcom/google/common/collect/g;

    invoke-direct {v1, v0}, Lcom/google/common/collect/g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/i;->b(Lcom/google/common/collect/ad;)V

    .line 356
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/google/common/collect/ad;)V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i;->b(Lcom/google/common/collect/ad;)V

    .line 348
    return-void
.end method

.method b(Lcom/google/common/collect/ad;)V
    .locals 2

    .prologue
    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/i;->aAd:Lcom/google/common/collect/ad;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->aAH:Lcom/google/common/collect/ad;

    if-ne v0, v1, :cond_0

    .line 366
    iput-object p1, p0, Lcom/google/common/collect/i;->aAd:Lcom/google/common/collect/ad;

    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 369
    :cond_0
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public wH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public wI()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public wJ()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/common/collect/i;->aAd:Lcom/google/common/collect/ad;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->aAH:Lcom/google/common/collect/ad;

    if-ne v0, v1, :cond_1

    .line 321
    const/4 v1, 0x0

    .line 323
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/i;->aAd:Lcom/google/common/collect/ad;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->aAH:Lcom/google/common/collect/ad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_0

    .line 326
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const/4 v1, 0x1

    .line 329
    goto :goto_0

    .line 331
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    if-eqz v1, :cond_1

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/i;->aAd:Lcom/google/common/collect/ad;

    invoke-interface {v0}, Lcom/google/common/collect/ad;->wJ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 333
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
.end method
