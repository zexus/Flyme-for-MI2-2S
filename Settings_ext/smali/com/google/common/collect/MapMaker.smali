.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# instance fields
.field aAu:Z

.field aAv:I

.field aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field keyEquivalence:Lcom/google/common/base/Equivalence;

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field ticker:Lcom/google/common/base/n;

.field valueEquivalence:Lcom/google/common/base/Equivalence;

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 145
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 124
    iput v0, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    .line 125
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 126
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 131
    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 132
    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 145
    return-void
.end method

.method private b(JLjava/util/concurrent/TimeUnit;)V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-void

    :cond_0
    move v0, v2

    .line 477
    goto :goto_0

    :cond_1
    move v0, v2

    .line 479
    goto :goto_1

    :cond_2
    move v0, v2

    .line 481
    goto :goto_2
.end method

.method private xh()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/common/collect/C;)Lcom/google/common/collect/GenericMapMaker;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 564
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->removalListener:Lcom/google/common/collect/C;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/k;->checkState(Z)V

    .line 569
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/C;

    .line 570
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 571
    return-object p0

    .line 564
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 3

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 467
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 468
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->aAA:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 473
    return-object p0
.end method

.method a(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 163
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 164
    return-object p0

    :cond_0
    move v0, v2

    .line 161
    goto :goto_0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 340
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBs:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 342
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 344
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 338
    goto :goto_0
.end method

.method public a(Lcom/google/common/base/b;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/google/common/collect/MapMaker;->xh()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/b;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/b;)V

    goto :goto_0
.end method

.method b(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 184
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 185
    return-object p0

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0
.end method

.method b(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 413
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBs:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 415
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 417
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 411
    goto :goto_0
.end method

.method c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 3

    .prologue
    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 516
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 517
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->aAA:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 522
    return-object p0
.end method

.method public dB(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget v0, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-ltz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/k;->checkArgument(Z)V

    .line 207
    iput p1, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    .line 208
    return-object p0

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v1, v2

    .line 206
    goto :goto_1
.end method

.method dC(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 239
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 241
    if-ltz p1, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "maximum size must not be negative"

    invoke-static {v2, v0}, Lcom/google/common/base/k;->a(ZLjava/lang/Object;)V

    .line 242
    iput p1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 243
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    .line 244
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-nez v0, :cond_1

    .line 246
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->aAB:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 248
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 239
    goto :goto_0
.end method

.method public dD(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/k;->checkArgument(Z)V

    .line 275
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 276
    return-object p0

    :cond_0
    move v0, v2

    .line 272
    goto :goto_0

    :cond_1
    move v1, v2

    .line 274
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    .line 680
    invoke-static {p0}, Lcom/google/common/base/f;->u(Ljava/lang/Object;)Lcom/google/common/base/h;

    move-result-object v0

    .line 681
    iget v1, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    if-eq v1, v3, :cond_0

    .line 682
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->p(Ljava/lang/String;I)Lcom/google/common/base/h;

    .line 684
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 685
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->p(Ljava/lang/String;I)Lcom/google/common/base/h;

    .line 687
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v3, :cond_2

    .line 688
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->p(Ljava/lang/String;I)Lcom/google/common/base/h;

    .line 690
    :cond_2
    iget-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 691
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 693
    :cond_3
    iget-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 694
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 696
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    .line 697
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 699
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 700
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/h;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 702
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 703
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/h;->v(Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 705
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 706
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/h;->v(Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 708
    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->removalListener:Lcom/google/common/collect/C;

    if-eqz v1, :cond_9

    .line 709
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/h;->v(Ljava/lang/Object;)Lcom/google/common/base/h;

    .line 711
    :cond_9
    invoke-virtual {v0}, Lcom/google/common/base/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method xi()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->xn()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->yh()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method xj()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->xo()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->yh()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method xk()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->aAv:I

    goto :goto_0
.end method

.method xl()I
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method public xm()Lcom/google/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBu:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method xn()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBs:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method xo()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBs:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method xp()J
    .locals 4

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method xq()J
    .locals 4

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    goto :goto_0
.end method

.method xr()Lcom/google/common/base/n;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->ticker:Lcom/google/common/base/n;

    invoke-static {}, Lcom/google/common/base/n;->wF()Lcom/google/common/base/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/n;

    return-object v0
.end method

.method public xs()Ljava/util/concurrent/ConcurrentMap;
    .locals 4

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->aAu:Z

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->xk()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->xl()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 591
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    :goto_1
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_1
.end method
