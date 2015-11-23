.class final Lcom/google/common/collect/W;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ad;


# instance fields
.field final aBr:Lcom/google/common/collect/R;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1782
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1783
    iput-object p3, p0, Lcom/google/common/collect/W;->aBr:Lcom/google/common/collect/R;

    .line 1784
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/R;)Lcom/google/common/collect/ad;
    .locals 2

    .prologue
    .line 1798
    new-instance v0, Lcom/google/common/collect/W;

    invoke-virtual {p0}, Lcom/google/common/collect/W;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/W;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/R;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/ad;)V
    .locals 0

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/google/common/collect/W;->clear()V

    .line 1794
    return-void
.end method

.method public wH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/common/collect/W;->aBr:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public wI()Z
    .locals 1

    .prologue
    .line 1803
    const/4 v0, 0x0

    return v0
.end method

.method public wJ()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/google/common/collect/W;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
