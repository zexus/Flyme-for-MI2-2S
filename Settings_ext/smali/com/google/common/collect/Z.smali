.class final Lcom/google/common/collect/Z;
.super Lcom/google/common/collect/X;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBd:Lcom/google/common/collect/R;

.field aBe:Lcom/google/common/collect/R;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 2

    .prologue
    .line 1066
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/X;-><init>(Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1071
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/Z;->time:J

    .line 1083
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Z;->aBd:Lcom/google/common/collect/R;

    .line 1096
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Z;->aBe:Lcom/google/common/collect/R;

    .line 1067
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1080
    iput-wide p1, p0, Lcom/google/common/collect/Z;->time:J

    .line 1081
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/google/common/collect/Z;->aBd:Lcom/google/common/collect/R;

    .line 1094
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/google/common/collect/Z;->aBe:Lcom/google/common/collect/R;

    .line 1107
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 1075
    iget-wide v0, p0, Lcom/google/common/collect/Z;->time:J

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/common/collect/Z;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/common/collect/Z;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method
