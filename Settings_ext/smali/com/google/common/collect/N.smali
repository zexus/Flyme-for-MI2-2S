.class Lcom/google/common/collect/N;
.super Lcom/google/common/collect/b;
.source "MapMakerInternalMap.java"


# instance fields
.field final synthetic aBf:Lcom/google/common/collect/L;


# direct methods
.method constructor <init>(Lcom/google/common/collect/L;Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/google/common/collect/N;->aBf:Lcom/google/common/collect/L;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected l(Lcom/google/common/collect/R;)Lcom/google/common/collect/R;
    .locals 2

    .prologue
    .line 3402
    invoke-interface {p1}, Lcom/google/common/collect/R;->xH()Lcom/google/common/collect/R;

    move-result-object v0

    .line 3403
    iget-object v1, p0, Lcom/google/common/collect/N;->aBf:Lcom/google/common/collect/L;

    iget-object v1, v1, Lcom/google/common/collect/L;->aAZ:Lcom/google/common/collect/R;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected synthetic w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3399
    check-cast p1, Lcom/google/common/collect/R;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/N;->l(Lcom/google/common/collect/R;)Lcom/google/common/collect/R;

    move-result-object v0

    return-object v0
.end method
