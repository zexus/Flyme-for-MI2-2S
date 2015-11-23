.class Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableCollection.java"


# instance fields
.field private final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    .line 223
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->wN()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public wN()Lcom/google/common/collect/ay;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/v;->c([Ljava/lang/Object;)Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method
