.class Lcom/google/common/collect/ComputingConcurrentHashMap;
.super Lcom/google/common/collect/MapMakerInternalMap;
.source "ComputingConcurrentHashMap.java"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/b;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 52
    invoke-static {p2}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/b;

    .line 53
    return-void
.end method


# virtual methods
.method dw(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    return-object v0
.end method

.method synthetic dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->dw(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method

.method w(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 15

    .prologue
    .line 379
    new-instance v1, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v5, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v6, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->expireAfterWriteNanos:J

    iget-wide v8, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->expireAfterAccessNanos:J

    iget v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->maximumSize:I

    iget v11, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->concurrencyLevel:I

    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->removalListener:Lcom/google/common/collect/C;

    iget-object v14, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/b;

    move-object v13, p0

    invoke-direct/range {v1 .. v14}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/C;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/b;)V

    return-object v1
.end method

.method x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->dw(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/b;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILcom/google/common/base/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
