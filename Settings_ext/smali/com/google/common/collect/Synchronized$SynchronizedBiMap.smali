.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/d;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient aBT:Ljava/util/Set;


# virtual methods
.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->wG()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public wG()Ljava/util/Set;
    .locals 3

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->aBT:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->yl()Lcom/google/common/collect/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/d;->wG()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->aBT:Ljava/util/Set;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->aBT:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic wQ()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->yl()Lcom/google/common/collect/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic wR()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->yl()Lcom/google/common/collect/d;

    move-result-object v0

    return-object v0
.end method

.method yl()Lcom/google/common/collect/d;
    .locals 1

    .prologue
    .line 1118
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->wQ()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/d;

    return-object v0
.end method
