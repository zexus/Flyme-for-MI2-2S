.class final Lcom/google/common/collect/ak;
.super Lcom/google/common/collect/c;
.source "MapMakerInternalMap.java"


# instance fields
.field final synthetic aAY:Lcom/google/common/collect/MapMakerInternalMap;

.field final key:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3777
    iput-object p1, p0, Lcom/google/common/collect/ak;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 3778
    iput-object p2, p0, Lcom/google/common/collect/ak;->key:Ljava/lang/Object;

    .line 3779
    iput-object p3, p0, Lcom/google/common/collect/ak;->value:Ljava/lang/Object;

    .line 3780
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3795
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 3796
    check-cast p1, Ljava/util/Map$Entry;

    .line 3797
    iget-object v1, p0, Lcom/google/common/collect/ak;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ak;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3799
    :cond_0
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/google/common/collect/ak;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/google/common/collect/ak;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/google/common/collect/ak;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ak;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/google/common/collect/ak;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/ak;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3811
    iput-object p1, p0, Lcom/google/common/collect/ak;->value:Ljava/lang/Object;

    .line 3812
    return-object v0
.end method
