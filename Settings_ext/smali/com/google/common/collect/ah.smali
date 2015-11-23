.class final Lcom/google/common/collect/ah;
.super Lcom/google/common/collect/af;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBd:Lcom/google/common/collect/R;

.field aBe:Lcom/google/common/collect/R;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 2

    .prologue
    .line 1579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/af;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1584
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/ah;->time:J

    .line 1596
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ah;->aBd:Lcom/google/common/collect/R;

    .line 1609
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ah;->aBe:Lcom/google/common/collect/R;

    .line 1580
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1593
    iput-wide p1, p0, Lcom/google/common/collect/ah;->time:J

    .line 1594
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/google/common/collect/ah;->aBd:Lcom/google/common/collect/R;

    .line 1607
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/google/common/collect/ah;->aBe:Lcom/google/common/collect/R;

    .line 1620
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 1588
    iget-wide v0, p0, Lcom/google/common/collect/ah;->time:J

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/common/collect/ah;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/common/collect/ah;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method
