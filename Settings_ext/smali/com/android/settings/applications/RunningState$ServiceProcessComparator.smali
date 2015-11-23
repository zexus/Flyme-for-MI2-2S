.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic KO:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->KO:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 708
    iget v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    if-eq v2, v3, :cond_3

    .line 709
    iget v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->KO:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->Ju:I

    if-ne v2, v3, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    iget v2, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->KO:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->Ju:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 711
    :cond_2
    iget v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 713
    :cond_3
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->Lq:Z

    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->Lq:Z

    if-eq v2, v3, :cond_4

    .line 715
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->Lq:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 717
    :cond_4
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_6

    .line 719
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    .line 721
    :cond_6
    iget-wide v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->KX:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->KX:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 724
    iget-wide v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->KX:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->KX:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 726
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 706
    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->a(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
