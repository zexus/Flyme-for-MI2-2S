.class final Lcom/google/common/collect/EmptyImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "EmptyImmutableMap.java"


# static fields
.field static final aAe:Lcom/google/common/collect/EmptyImmutableMap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/common/collect/EmptyImmutableMap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableMap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableMap;->aAe:Lcom/google/common/collect/EmptyImmutableMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->wK()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Ljava/util/Map;

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->wL()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMap;->aAe:Lcom/google/common/collect/EmptyImmutableMap;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "{}"

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->wM()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public wK()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->xc()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public wL()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->xc()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public wM()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/common/collect/ImmutableCollection;->aAk:Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method
