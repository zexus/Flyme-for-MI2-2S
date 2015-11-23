.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$2;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/D;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/R;Ljava/lang/Object;)Lcom/google/common/collect/ad;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/google/common/collect/W;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/common/collect/W;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/R;)V

    return-object v0
.end method

.method yh()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/google/common/base/Equivalences;->wB()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method
