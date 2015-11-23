.class final Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "MapMakerInternalMap.java"


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/C;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1

    .prologue
    .line 4042
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/C;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4044
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 4052
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4053
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->a(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 4054
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->xs()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    .line 4055
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->b(Ljava/io/ObjectInputStream;)V

    .line 4056
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4059
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->aAJ:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 4047
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4048
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->a(Ljava/io/ObjectOutputStream;)V

    .line 4049
    return-void
.end method
