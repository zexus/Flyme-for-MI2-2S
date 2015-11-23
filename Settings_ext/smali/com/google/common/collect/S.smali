.class Lcom/google/common/collect/S;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field final aBp:Lcom/google/common/collect/R;

.field volatile aBq:Lcom/google/common/collect/ad;

.field final hash:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1225
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1292
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xz()Lcom/google/common/collect/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/S;->aBq:Lcom/google/common/collect/ad;

    .line 1226
    iput p3, p0, Lcom/google/common/collect/S;->hash:I

    .line 1227
    iput-object p4, p0, Lcom/google/common/collect/S;->aBp:Lcom/google/common/collect/R;

    .line 1228
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ad;)V
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/common/collect/S;->aBq:Lcom/google/common/collect/ad;

    .line 1302
    iput-object p1, p0, Lcom/google/common/collect/S;->aBq:Lcom/google/common/collect/ad;

    .line 1303
    invoke-interface {v0, p1}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ad;)V

    .line 1304
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/google/common/collect/S;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 1

    .prologue
    .line 1285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xD()Lcom/google/common/collect/ad;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/common/collect/S;->aBq:Lcom/google/common/collect/ad;

    return-object v0
.end method

.method public xE()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/common/collect/S;->aBp:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xF()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/google/common/collect/S;->hash:I

    return v0
.end method

.method public xG()J
    .locals 1

    .prologue
    .line 1238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
