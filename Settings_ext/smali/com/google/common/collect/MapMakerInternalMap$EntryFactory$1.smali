.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/D;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/R;)Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/google/common/collect/X;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/collect/X;-><init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V

    return-object v0
.end method
