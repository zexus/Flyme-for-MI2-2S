.class Lcom/google/common/collect/M;
.super Lcom/google/common/collect/F;
.source "MapMakerInternalMap.java"


# instance fields
.field aBd:Lcom/google/common/collect/R;

.field aBe:Lcom/google/common/collect/R;

.field final synthetic aBf:Lcom/google/common/collect/L;


# direct methods
.method constructor <init>(Lcom/google/common/collect/L;)V
    .locals 0

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/google/common/collect/M;->aBf:Lcom/google/common/collect/L;

    invoke-direct {p0}, Lcom/google/common/collect/F;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/google/common/collect/M;->aBd:Lcom/google/common/collect/R;

    .line 3307
    iput-object p0, p0, Lcom/google/common/collect/M;->aBe:Lcom/google/common/collect/R;

    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 0

    .prologue
    .line 3293
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/google/common/collect/M;->aBd:Lcom/google/common/collect/R;

    .line 3305
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 3316
    iput-object p1, p0, Lcom/google/common/collect/M;->aBe:Lcom/google/common/collect/R;

    .line 3317
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/google/common/collect/M;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/google/common/collect/M;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method
