.class Lcom/google/common/collect/J;
.super Lcom/google/common/collect/F;
.source "MapMakerInternalMap.java"


# instance fields
.field aBa:Lcom/google/common/collect/R;

.field aBb:Lcom/google/common/collect/R;

.field final synthetic aBc:Lcom/google/common/collect/I;


# direct methods
.method constructor <init>(Lcom/google/common/collect/I;)V
    .locals 0

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/google/common/collect/J;->aBc:Lcom/google/common/collect/I;

    invoke-direct {p0}, Lcom/google/common/collect/F;-><init>()V

    .line 3159
    iput-object p0, p0, Lcom/google/common/collect/J;->aBa:Lcom/google/common/collect/R;

    .line 3171
    iput-object p0, p0, Lcom/google/common/collect/J;->aBb:Lcom/google/common/collect/R;

    return-void
.end method


# virtual methods
.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/google/common/collect/J;->aBa:Lcom/google/common/collect/R;

    .line 3169
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/google/common/collect/J;->aBb:Lcom/google/common/collect/R;

    .line 3181
    return-void
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/google/common/collect/J;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/common/collect/J;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
