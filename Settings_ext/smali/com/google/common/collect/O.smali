.class abstract Lcom/google/common/collect/O;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"


# instance fields
.field final synthetic aAY:Lcom/google/common/collect/MapMakerInternalMap;

.field aBg:I

.field aBh:I

.field aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field aBj:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field aBk:Lcom/google/common/collect/R;

.field aBl:Lcom/google/common/collect/ak;

.field aBm:Lcom/google/common/collect/ak;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1

    .prologue
    .line 3656
    iput-object p1, p0, Lcom/google/common/collect/O;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/O;->aBg:I

    .line 3658
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/O;->aBh:I

    .line 3659
    invoke-virtual {p0}, Lcom/google/common/collect/O;->advance()V

    .line 3660
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .prologue
    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/O;->aBl:Lcom/google/common/collect/ak;

    .line 3665
    invoke-virtual {p0}, Lcom/google/common/collect/O;->xN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3683
    :cond_0
    :goto_0
    return-void

    .line 3669
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/O;->xO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3673
    :cond_2
    iget v0, p0, Lcom/google/common/collect/O;->aBg:I

    if-ltz v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/google/common/collect/O;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/O;->aBg:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/O;->aBg:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/O;->aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3675
    iget-object v0, p0, Lcom/google/common/collect/O;->aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 3676
    iget-object v0, p0, Lcom/google/common/collect/O;->aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/O;->aBj:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3677
    iget-object v0, p0, Lcom/google/common/collect/O;->aBj:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/O;->aBh:I

    .line 3678
    invoke-virtual {p0}, Lcom/google/common/collect/O;->xO()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/google/common/collect/O;->aBl:Lcom/google/common/collect/ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m(Lcom/google/common/collect/R;)Z
    .locals 4

    .prologue
    .line 3719
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/R;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3720
    iget-object v1, p0, Lcom/google/common/collect/O;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/R;)Ljava/lang/Object;

    move-result-object v1

    .line 3721
    if-eqz v1, :cond_0

    .line 3722
    new-instance v2, Lcom/google/common/collect/ak;

    iget-object v3, p0, Lcom/google/common/collect/O;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/ak;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/O;->aBl:Lcom/google/common/collect/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3723
    const/4 v0, 0x1

    .line 3729
    iget-object v1, p0, Lcom/google/common/collect/O;->aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->yb()V

    :goto_0
    return v0

    .line 3726
    :cond_0
    const/4 v0, 0x0

    .line 3729
    iget-object v1, p0, Lcom/google/common/collect/O;->aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->yb()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/O;->aBi:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->yb()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/google/common/collect/O;->aBm:Lcom/google/common/collect/ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/k;->checkState(Z)V

    .line 3748
    iget-object v0, p0, Lcom/google/common/collect/O;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/O;->aBm:Lcom/google/common/collect/ak;

    invoke-virtual {v1}, Lcom/google/common/collect/ak;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/O;->aBm:Lcom/google/common/collect/ak;

    .line 3750
    return-void

    .line 3747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xN()Z
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    if-eqz v0, :cond_1

    .line 3690
    iget-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    invoke-interface {v0}, Lcom/google/common/collect/R;->xE()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    if-eqz v0, :cond_1

    .line 3691
    iget-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/O;->m(Lcom/google/common/collect/R;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    const/4 v0, 0x1

    .line 3696
    :goto_1
    return v0

    .line 3690
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    invoke-interface {v0}, Lcom/google/common/collect/R;->xE()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    goto :goto_0

    .line 3696
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method xO()Z
    .locals 3

    .prologue
    .line 3703
    :cond_0
    iget v0, p0, Lcom/google/common/collect/O;->aBh:I

    if-ltz v0, :cond_2

    .line 3704
    iget-object v0, p0, Lcom/google/common/collect/O;->aBj:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/O;->aBh:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/O;->aBh:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/R;

    iput-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    if-eqz v0, :cond_0

    .line 3705
    iget-object v0, p0, Lcom/google/common/collect/O;->aBk:Lcom/google/common/collect/R;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/O;->m(Lcom/google/common/collect/R;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/O;->xN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    :cond_1
    const/4 v0, 0x1

    .line 3710
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xP()Lcom/google/common/collect/ak;
    .locals 1

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/google/common/collect/O;->aBl:Lcom/google/common/collect/ak;

    if-nez v0, :cond_0

    .line 3739
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3741
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/O;->aBl:Lcom/google/common/collect/ak;

    iput-object v0, p0, Lcom/google/common/collect/O;->aBm:Lcom/google/common/collect/ak;

    .line 3742
    invoke-virtual {p0}, Lcom/google/common/collect/O;->advance()V

    .line 3743
    iget-object v0, p0, Lcom/google/common/collect/O;->aBm:Lcom/google/common/collect/ak;

    return-object v0
.end method
