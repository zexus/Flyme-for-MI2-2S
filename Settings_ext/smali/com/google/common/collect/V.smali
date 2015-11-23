.class final Lcom/google/common/collect/V;
.super Lcom/google/common/collect/S;
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
    .line 1405
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/S;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1410
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/V;->time:J

    .line 1422
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/V;->aBd:Lcom/google/common/collect/R;

    .line 1435
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/V;->aBe:Lcom/google/common/collect/R;

    .line 1450
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/V;->aBa:Lcom/google/common/collect/R;

    .line 1463
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/V;->aBb:Lcom/google/common/collect/R;

    .line 1406
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1419
    iput-wide p1, p0, Lcom/google/common/collect/V;->time:J

    .line 1420
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/google/common/collect/V;->aBd:Lcom/google/common/collect/R;

    .line 1433
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/google/common/collect/V;->aBe:Lcom/google/common/collect/R;

    .line 1446
    return-void
.end method

.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/google/common/collect/V;->aBa:Lcom/google/common/collect/R;

    .line 1461
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/google/common/collect/V;->aBb:Lcom/google/common/collect/R;

    .line 1474
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 1414
    iget-wide v0, p0, Lcom/google/common/collect/V;->time:J

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/common/collect/V;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/common/collect/V;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/google/common/collect/V;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/common/collect/V;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
