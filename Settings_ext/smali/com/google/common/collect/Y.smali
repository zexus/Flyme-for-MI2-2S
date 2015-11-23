.class final Lcom/google/common/collect/Y;
.super Lcom/google/common/collect/X;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBa:Lcom/google/common/collect/R;

.field aBb:Lcom/google/common/collect/R;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/X;-><init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1118
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Y;->aBa:Lcom/google/common/collect/R;

    .line 1131
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Y;->aBb:Lcom/google/common/collect/R;

    .line 1114
    return-void
.end method


# virtual methods
.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/google/common/collect/Y;->aBa:Lcom/google/common/collect/R;

    .line 1129
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/google/common/collect/Y;->aBb:Lcom/google/common/collect/R;

    .line 1142
    return-void
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/common/collect/Y;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/common/collect/Y;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
