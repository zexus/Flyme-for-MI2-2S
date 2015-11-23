.class final Lcom/google/common/collect/ag;
.super Lcom/google/common/collect/af;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBa:Lcom/google/common/collect/R;

.field aBb:Lcom/google/common/collect/R;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/af;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1632
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ag;->aBa:Lcom/google/common/collect/R;

    .line 1645
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ag;->aBb:Lcom/google/common/collect/R;

    .line 1628
    return-void
.end method


# virtual methods
.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/google/common/collect/ag;->aBa:Lcom/google/common/collect/R;

    .line 1643
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/google/common/collect/ag;->aBb:Lcom/google/common/collect/R;

    .line 1656
    return-void
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/common/collect/ag;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/google/common/collect/ag;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
