.class final Lcom/android/settings_ext/applications/ProcessStatsDetail$2;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ProcStatsEntry$Service;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ProcStatsEntry$Service;->mDuration:J

    move-wide v2, v0

    .line 229
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ProcStatsEntry$Service;

    iget-wide v4, v0, Lcom/android/settings_ext/applications/ProcStatsEntry$Service;->mDuration:J

    .line 230
    :cond_0
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 231
    const/4 v0, 0x1

    .line 235
    :goto_1
    return v0

    :cond_1
    move-wide v2, v4

    .line 228
    goto :goto_0

    .line 232
    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 233
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 235
    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 224
    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/applications/ProcessStatsDetail$2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method
