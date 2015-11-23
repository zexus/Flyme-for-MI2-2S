.class final Lcom/google/common/collect/aa;
.super Lcom/google/common/collect/X;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBa:Lcom/google/common/collect/R;

.field aBb:Lcom/google/common/collect/R;

.field aBd:Lcom/google/common/collect/R;

.field aBe:Lcom/google/common/collect/R;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 2

    .prologue
    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/X;-><init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1153
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aa;->time:J

    .line 1165
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aa;->aBd:Lcom/google/common/collect/R;

    .line 1178
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aa;->aBe:Lcom/google/common/collect/R;

    .line 1193
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aa;->aBa:Lcom/google/common/collect/R;

    .line 1206
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aa;->aBb:Lcom/google/common/collect/R;

    .line 1149
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1162
    iput-wide p1, p0, Lcom/google/common/collect/aa;->time:J

    .line 1163
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/common/collect/aa;->aBd:Lcom/google/common/collect/R;

    .line 1176
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/google/common/collect/aa;->aBe:Lcom/google/common/collect/R;

    .line 1189
    return-void
.end method

.method public i(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/google/common/collect/aa;->aBa:Lcom/google/common/collect/R;

    .line 1204
    return-void
.end method

.method public j(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/google/common/collect/aa;->aBb:Lcom/google/common/collect/R;

    .line 1217
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 1157
    iget-wide v0, p0, Lcom/google/common/collect/aa;->time:J

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/aa;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/common/collect/aa;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xJ()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/common/collect/aa;->aBa:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xK()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/common/collect/aa;->aBb:Lcom/google/common/collect/R;

    return-object v0
.end method
