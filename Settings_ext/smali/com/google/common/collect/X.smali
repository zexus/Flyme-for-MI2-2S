.class Lcom/google/common/collect/X;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field final aBp:Lcom/google/common/collect/R;

.field volatile aBq:Lcom/google/common/collect/ad;

.field final hash:I

.field final key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xz()Lcom/google/common/collect/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->aBq:Lcom/google/common/collect/ad;

    .line 970
    iput-object p1, p0, Lcom/google/common/collect/X;->key:Ljava/lang/Object;

    .line 971
    iput p2, p0, Lcom/google/common/collect/X;->hash:I

    .line 972
    iput-object p3, p0, Lcom/google/common/collect/X;->aBp:Lcom/google/common/collect/R;

    .line 973
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 989
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ad;)V
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/common/collect/X;->aBq:Lcom/google/common/collect/ad;

    .line 1048
    iput-object p1, p0, Lcom/google/common/collect/X;->aBq:Lcom/google/common/collect/ad;

    .line 1049
    invoke-interface {v0, p1}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ad;)V

    .line 1050
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 999
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/collect/X;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xD()Lcom/google/common/collect/ad;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/common/collect/X;->aBq:Lcom/google/common/collect/ad;

    return-object v0
.end method

.method public xE()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/X;->aBp:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xF()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/common/collect/X;->hash:I

    return v0
.end method

.method public xG()J
    .locals 1

    .prologue
    .line 984
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 994
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1016
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
