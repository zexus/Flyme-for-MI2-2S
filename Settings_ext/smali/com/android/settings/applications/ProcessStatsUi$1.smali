.class final Lcom/android/settings/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 82
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 88
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsUi$1;->a(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
