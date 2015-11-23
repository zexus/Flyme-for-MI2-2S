.class Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final aAH:Lcom/google/common/collect/ad;

.field static final aAI:Ljava/util/Queue;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final transient aAD:I

.field final transient aAE:I

.field final transient aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field final transient aAG:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field final concurrencyLevel:I

.field entrySet:Ljava/util/Set;

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;

.field keySet:Ljava/util/Set;

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/C;

.field final removalNotificationQueue:Ljava/util/Queue;

.field final ticker:Lcom/google/common/base/n;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

    .line 630
    new-instance v0, Lcom/google/common/collect/D;

    invoke-direct {v0}, Lcom/google/common/collect/D;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->aAH:Lcom/google/common/collect/ad;

    .line 920
    new-instance v0, Lcom/google/common/collect/E;

    invoke-direct {v0}, Lcom/google/common/collect/E;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->aAI:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xl()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 199
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xn()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 200
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xo()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 202
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xi()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 203
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xj()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 205
    iget v0, p1, Lcom/google/common/collect/MapMaker;->maximumSize:I

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    .line 206
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 207
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xu()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xt()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAG:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 210
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xr()Lcom/google/common/base/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/n;

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->wS()Lcom/google/common/collect/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/C;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/C;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->aAh:Lcom/google/common/collect/GenericMapMaker$NullListener;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xB()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->xk()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 228
    :goto_1
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xt()Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    if-gt v5, v6, :cond_3

    .line 229
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 230
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 232
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAE:I

    .line 233
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAD:I

    .line 235
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->dF(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 237
    div-int v3, v0, v1

    .line 238
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 239
    add-int/lit8 v0, v3, 0x1

    .line 243
    :goto_2
    if-ge v2, v0, :cond_4

    .line 244
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 249
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 250
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    rem-int v1, v3, v1

    .line 251
    :goto_3
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v3, v3

    if-ge v4, v3, :cond_7

    .line 252
    if-ne v4, v1, :cond_5

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->w(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v5

    aput-object v5, v3, v4

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 259
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    if-ge v4, v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->w(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    aput-object v1, v0, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 264
    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method static b(Lcom/google/common/collect/R;Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1979
    invoke-interface {p0, p1}, Lcom/google/common/collect/R;->g(Lcom/google/common/collect/R;)V

    .line 1980
    invoke-interface {p1, p0}, Lcom/google/common/collect/R;->h(Lcom/google/common/collect/R;)V

    .line 1981
    return-void
.end method

.method static c(Lcom/google/common/collect/R;Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 2011
    invoke-interface {p0, p1}, Lcom/google/common/collect/R;->i(Lcom/google/common/collect/R;)V

    .line 2012
    invoke-interface {p1, p0}, Lcom/google/common/collect/R;->j(Lcom/google/common/collect/R;)V

    .line 2013
    return-void
.end method

.method static dE(I)I
    .locals 3

    .prologue
    .line 1863
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1864
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1865
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1866
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1867
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1868
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static e(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1985
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    .line 1986
    invoke-interface {p0, v0}, Lcom/google/common/collect/R;->g(Lcom/google/common/collect/R;)V

    .line 1987
    invoke-interface {p0, v0}, Lcom/google/common/collect/R;->h(Lcom/google/common/collect/R;)V

    .line 1988
    return-void
.end method

.method static f(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 2017
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    .line 2018
    invoke-interface {p0, v0}, Lcom/google/common/collect/R;->i(Lcom/google/common/collect/R;)V

    .line 2019
    invoke-interface {p0, v0}, Lcom/google/common/collect/R;->j(Lcom/google/common/collect/R;)V

    .line 2020
    return-void
.end method

.method static xA()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 917
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->aBn:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method static xB()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 952
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->aAI:Ljava/util/Queue;

    return-object v0
.end method

.method static xz()Lcom/google/common/collect/ad;
    .locals 1

    .prologue
    .line 666
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->aAH:Lcom/google/common/collect/ad;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/common/collect/R;Lcom/google/common/collect/R;)Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1886
    invoke-interface {p1}, Lcom/google/common/collect/R;->xF()I

    move-result v0

    .line 1887
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/R;Lcom/google/common/collect/R;)Lcom/google/common/collect/R;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/R;)Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1877
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/R;)Lcom/google/common/collect/R;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/R;Ljava/lang/Object;)Lcom/google/common/collect/ad;
    .locals 2

    .prologue
    .line 1896
    invoke-interface {p1}, Lcom/google/common/collect/R;->xF()I

    move-result v0

    .line 1897
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/R;Ljava/lang/Object;)Lcom/google/common/collect/ad;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/R;)V
    .locals 2

    .prologue
    .line 1912
    invoke-interface {p1}, Lcom/google/common/collect/R;->xF()I

    move-result v0

    .line 1913
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/R;I)Z

    .line 1914
    return-void
.end method

.method a(Lcom/google/common/collect/R;J)Z
    .locals 4

    .prologue
    .line 1974
    invoke-interface {p1}, Lcom/google/common/collect/R;->xG()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/google/common/collect/R;)Z
    .locals 1

    .prologue
    .line 1922
    invoke-interface {p1}, Lcom/google/common/collect/R;->xF()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Lcom/google/common/collect/R;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/google/common/collect/R;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1946
    invoke-interface {p1}, Lcom/google/common/collect/R;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-object v0

    .line 1949
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/R;->xD()Lcom/google/common/collect/ad;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ad;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_0

    .line 1954
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xu()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/R;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1957
    goto :goto_0
.end method

.method c(Lcom/google/common/collect/ad;)V
    .locals 3

    .prologue
    .line 1906
    invoke-interface {p1}, Lcom/google/common/collect/ad;->wH()Lcom/google/common/collect/R;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Lcom/google/common/collect/R;->xF()I

    move-result v1

    .line 1908
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/R;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/ad;)Z

    .line 1909
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3615
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3616
    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clear()V

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3618
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3507
    if-nez p1, :cond_0

    .line 3508
    const/4 v0, 0x0

    .line 3511
    :goto_0
    return v0

    .line 3510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3511
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 3516
    if-nez p1, :cond_0

    .line 3517
    const/4 v0, 0x0

    .line 3550
    :goto_0
    return v0

    .line 3525
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3526
    const-wide/16 v4, -0x1

    .line 3527
    const/4 v0, 0x0

    move v6, v0

    move-wide v8, v4

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_5

    .line 3528
    const-wide/16 v2, 0x0

    .line 3529
    array-length v10, v7

    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_4

    aget-object v3, v7, v2

    .line 3532
    iget v0, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3534
    iget-object v11, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3535
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3536
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/R;

    :goto_4
    if-eqz v0, :cond_2

    .line 3537
    invoke-virtual {v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Lcom/google/common/collect/R;)Ljava/lang/Object;

    move-result-object v12

    .line 3538
    if-eqz v12, :cond_1

    iget-object v13, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v13, p1, v12}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3539
    const/4 v0, 0x1

    goto :goto_0

    .line 3536
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/R;->xE()Lcom/google/common/collect/R;

    move-result-object v0

    goto :goto_4

    .line 3535
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3543
    :cond_3
    iget v0, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 3529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3545
    :cond_4
    cmp-long v0, v4, v8

    if-nez v0, :cond_6

    .line 3550
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3527
    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v8, v4

    goto :goto_1
.end method

.method d(Lcom/google/common/collect/R;)Z
    .locals 2

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/n;

    invoke-virtual {v0}, Lcom/google/common/base/n;->wE()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/R;J)Z

    move-result v0

    return v0
.end method

.method final dF(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 2024
    new-array v0, p1, [Lcom/google/common/collect/MapMakerInternalMap$Segment;

    return-object v0
.end method

.method dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 3

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAE:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAD:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 3641
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/H;

    invoke-direct {v0, p0}, Lcom/google/common/collect/H;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3475
    if-nez p1, :cond_0

    .line 3476
    const/4 v0, 0x0

    .line 3479
    :goto_0
    return-object v0

    .line 3478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3479
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3440
    .line 3441
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move v0, v1

    move-wide v2, v4

    .line 3442
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3443
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_1

    .line 3460
    :cond_0
    :goto_1
    return v1

    .line 3446
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3449
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3450
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3451
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v7, :cond_0

    .line 3454
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3456
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3460
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 3625
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Q;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Q;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 3555
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3558
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 3571
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3574
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 3563
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    invoke-static {p2}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3566
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method q(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->q(Ljava/lang/Object;)I

    move-result v0

    .line 1902
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->dE(I)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3578
    if-nez p1, :cond_0

    .line 3579
    const/4 v0, 0x0

    .line 3582
    :goto_0
    return-object v0

    .line 3581
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3582
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3587
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3588
    :cond_0
    const/4 v0, 0x0

    .line 3591
    :goto_0
    return v0

    .line 3590
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3591
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3607
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {p2}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3610
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3596
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3597
    invoke-static {p3}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    if-nez p2, :cond_0

    .line 3599
    const/4 v0, 0x0

    .line 3602
    :goto_0
    return v0

    .line 3601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->q(Ljava/lang/Object;)I

    move-result v0

    .line 3602
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->dx(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3465
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->aAF:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3466
    const-wide/16 v2, 0x0

    .line 3467
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 3468
    aget-object v4, v1, v0

    iget v4, v4, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3470
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->D(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 3633
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

.method w(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 1937
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 3938
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    iget-wide v8, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    iget-object v12, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/C;

    move-object v13, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/C;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v1
.end method

.method xC()V
    .locals 4

    .prologue
    .line 1999
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    if-eqz v0, :cond_0

    .line 2001
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/C;

    invoke-interface {v1, v0}, Lcom/google/common/collect/C;->a(Lcom/google/common/collect/MapMaker$RemovalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2006
    :cond_0
    return-void
.end method

.method xt()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xu()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->xw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xv()Z
    .locals 4

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xw()Z
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xx()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBs:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method xy()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aBs:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
