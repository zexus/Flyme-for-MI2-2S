.class final Lcom/google/common/collect/aj;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ad;


# instance fields
.field final aBr:Lcom/google/common/collect/R;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1743
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1744
    iput-object p3, p0, Lcom/google/common/collect/aj;->aBr:Lcom/google/common/collect/R;

    .line 1745
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/R;)Lcom/google/common/collect/ad;
    .locals 2

    .prologue
    .line 1760
    new-instance v0, Lcom/google/common/collect/aj;

    invoke-virtual {p0}, Lcom/google/common/collect/aj;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/aj;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/R;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/ad;)V
    .locals 0

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->clear()V

    .line 1755
    return-void
.end method

.method public wH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/google/common/collect/aj;->aBr:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public wI()Z
    .locals 1

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public wJ()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
