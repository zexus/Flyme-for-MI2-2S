.class Lcom/google/common/collect/af;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field final aBp:Lcom/google/common/collect/R;

.field volatile aBq:Lcom/google/common/collect/ad;

.field final hash:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1482
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1550
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xz()Lcom/google/common/collect/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/af;->aBq:Lcom/google/common/collect/ad;

    .line 1483
    iput p3, p0, Lcom/google/common/collect/af;->hash:I

    .line 1484
    iput-object p4, p0, Lcom/google/common/collect/af;->aBp:Lcom/google/common/collect/R;

    .line 1485
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ad;)V
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/common/collect/af;->aBq:Lcom/google/common/collect/ad;

    .line 1560
    iput-object p1, p0, Lcom/google/common/collect/af;->aBq:Lcom/google/common/collect/ad;

    .line 1561
    invoke-interface {v0, p1}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ad;)V

    .line 1562
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1489
    invoke-virtual {p0}, Lcom/google/common/collect/af;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1533
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xD()Lcom/google/common/collect/ad;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/google/common/collect/af;->aBq:Lcom/google/common/collect/ad;

    return-object v0
.end method

.method public xE()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/common/collect/af;->aBp:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xF()I
    .locals 1

    .prologue
    .line 1566
    iget v0, p0, Lcom/google/common/collect/af;->hash:I

    return v0
.end method

.method public xG()J
    .locals 1

    .prologue
    .line 1496
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
