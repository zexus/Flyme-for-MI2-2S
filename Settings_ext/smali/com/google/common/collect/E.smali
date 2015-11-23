.class final Lcom/google/common/collect/E;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 943
    invoke-static {}, Lcom/google/common/collect/v;->xg()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method
