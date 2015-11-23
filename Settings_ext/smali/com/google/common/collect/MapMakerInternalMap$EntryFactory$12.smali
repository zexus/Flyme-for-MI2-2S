.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/D;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/R;Lcom/google/common/collect/R;)Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/R;Lcom/google/common/collect/R;)Lcom/google/common/collect/R;

    move-result-object v0

    .line 509
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;->d(Lcom/google/common/collect/R;Lcom/google/common/collect/R;)V

    .line 510
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;->e(Lcom/google/common/collect/R;Lcom/google/common/collect/R;)V

    .line 511
    return-object v0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/R;)Lcom/google/common/collect/R;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lcom/google/common/collect/ai;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    return-object v0
.end method
