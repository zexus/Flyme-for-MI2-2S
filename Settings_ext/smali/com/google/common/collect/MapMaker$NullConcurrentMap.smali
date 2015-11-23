.class Lcom/google/common/collect/MapMaker$NullConcurrentMap;
.super Ljava/util/AbstractMap;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

.field private final removalListener:Lcom/google/common/collect/C;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 1

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 847
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->wS()Lcom/google/common/collect/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/C;

    .line 848
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->aAw:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 849
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 913
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 871
    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/C;

    invoke-interface {v1, v0}, Lcom/google/common/collect/C;->a(Lcom/google/common/collect/MapMaker$RemovalNotification;)V

    .line 872
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 876
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-static {p2}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 879
    const/4 v0, 0x0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 884
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 899
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-static {p2}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 906
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-static {p3}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const/4 v0, 0x0

    return v0
.end method
