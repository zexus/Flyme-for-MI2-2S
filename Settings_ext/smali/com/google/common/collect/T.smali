.class final Lcom/google/common/collect/T;
.super Lcom/google/common/collect/S;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBa:Lcom/google/common/collect/R;

.field aBb:Lcom/google/common/collect/R;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1369
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/S;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1374
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/T;->aBa:Lcom/google/common/collect/R;

    .line 1387
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/T;->aBb:Lcom/google/common/collect/R;

    .line 1370
    return-void
.end method


# virtual methods
.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/google/common/collect/T;->aBa:Lcom/google/common/collect/R;

    .line 1385
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/google/common/collect/T;->aBb:Lcom/google/common/collect/R;

    .line 1398
    return-void
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/common/collect/T;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/google/common/collect/T;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
