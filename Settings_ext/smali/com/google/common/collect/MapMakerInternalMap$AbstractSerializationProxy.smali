.class abstract Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.super Lcom/google/common/collect/j;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field transient aAJ:Ljava/util/concurrent/ConcurrentMap;

.field final concurrencyLevel:I

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/C;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/C;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1

    .prologue
    .line 3967
    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    .line 3968
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 3969
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 3970
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3971
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 3972
    iput-wide p5, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    .line 3973
    iput-wide p7, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    .line 3974
    iput p9, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    .line 3975
    iput p10, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 3976
    iput-object p11, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/C;

    .line 3977
    iput-object p12, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    .line 3978
    return-void
.end method


# virtual methods
.method a(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3996
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 3997
    new-instance v1, Lcom/google/common/collect/MapMaker;

    invoke-direct {v1}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MapMaker;->dB(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->dD(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 4004
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/C;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/C;)Lcom/google/common/collect/GenericMapMaker;

    .line 4005
    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 4006
    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 4008
    :cond_0
    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 4009
    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 4011
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 4012
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->dC(I)Lcom/google/common/collect/MapMaker;

    .line 4014
    :cond_2
    return-object v0
.end method

.method a(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 3986
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3987
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3988
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3989
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 3991
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3992
    return-void
.end method

.method b(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 4020
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 4021
    if-nez v0, :cond_0

    .line 4027
    return-void

    .line 4024
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 4025
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected wP()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected synthetic wQ()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->wP()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic wR()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->wP()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method
