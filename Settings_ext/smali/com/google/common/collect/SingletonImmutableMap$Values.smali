.class Lcom/google/common/collect/SingletonImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SingletonImmutableMap.java"


# instance fields
.field final singleValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap$Values;->wN()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public wN()Lcom/google/common/collect/ay;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/v;->A(Ljava/lang/Object;)Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method
