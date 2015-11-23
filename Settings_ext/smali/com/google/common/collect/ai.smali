.class final Lcom/google/common/collect/ai;
.super Lcom/google/common/collect/af;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBa:Lcom/google/common/collect/R;

.field aBb:Lcom/google/common/collect/R;

.field aBd:Lcom/google/common/collect/R;

.field aBe:Lcom/google/common/collect/R;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 2

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/af;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/ai;->time:J

    .line 1680
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ai;->aBd:Lcom/google/common/collect/R;

    .line 1693
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ai;->aBe:Lcom/google/common/collect/R;

    .line 1708
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ai;->aBa:Lcom/google/common/collect/R;

    .line 1721
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ai;->aBb:Lcom/google/common/collect/R;

    .line 1664
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/google/common/collect/ai;->time:J

    .line 1678
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/google/common/collect/ai;->aBd:Lcom/google/common/collect/R;

    .line 1691
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/common/collect/ai;->aBe:Lcom/google/common/collect/R;

    .line 1704
    return-void
.end method

.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/google/common/collect/ai;->aBa:Lcom/google/common/collect/R;

    .line 1719
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/google/common/collect/ai;->aBb:Lcom/google/common/collect/R;

    .line 1732
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/google/common/collect/ai;->time:J

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/common/collect/ai;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/ai;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/ai;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/ai;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
