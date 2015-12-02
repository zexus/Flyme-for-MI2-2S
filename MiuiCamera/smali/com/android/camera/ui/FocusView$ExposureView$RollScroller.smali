.class Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
.super Ljava/lang/Object;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView$ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollScroller"
.end annotation


# instance fields
.field private mDuration:J

.field private mFinalOrientation:I

.field private mFinished:Z

.field private mMode:I

.field private mOrientation:I

.field private mStartTime:J

.field final synthetic this$1:Lcom/android/camera/ui/FocusView$ExposureView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 1

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 990
    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    .prologue
    .line 978
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 978
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    return p1
.end method

.method private getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 1048
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getDecelerate(F)F

    move-result v0

    .line 1051
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getLinear(F)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public computeOffset()I
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1017
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    if-eqz v4, :cond_0

    .line 1040
    :goto_0
    return v6

    .line 1020
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mStartTime:J

    sub-long v2, v8, v10

    .line 1021
    .local v2, "duration":J
    iget-wide v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    cmp-long v4, v2, v8

    if-ltz v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 1022
    iget-wide v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    .line 1023
    iget-wide v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    .line 1025
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    int-to-float v4, v4

    long-to-float v7, v2

    iget-wide v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v4, v7

    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    .line 1029
    .local v0, "currentOrientation":I
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    iget v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    sub-int v1, v4, v7

    .line 1031
    .local v1, "offset":I
    :goto_2
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 1032
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    if-eqz v4, :cond_2

    .line 1033
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 1034
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 1035
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v4

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v5, :cond_2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$5000(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1037
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3300(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    move v6, v1

    .line 1040
    goto/16 :goto_0

    .end local v0    # "currentOrientation":I
    .end local v1    # "offset":I
    :cond_3
    move v4, v6

    .line 1021
    goto :goto_1

    .line 1029
    .restart local v0    # "currentOrientation":I
    :cond_4
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    sub-int v1, v0, v4

    goto :goto_2
.end method

.method public fling(III)V
    .locals 8
    .param p1, "velocity"    # I
    .param p2, "minOffset"    # I
    .param p3, "maxOffset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 993
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mStartTime:J

    .line 994
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    .line 995
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 996
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 997
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 998
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 999
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 1000
    iput-boolean v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 1002
    :cond_0
    iput v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    .line 1003
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v1

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$5002(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 1004
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 1005
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    return v0
.end method

.method public scroll(IJ)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v2, 0x0

    .line 1008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mStartTime:J

    .line 1009
    iput-wide p2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    .line 1010
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 1011
    iput v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 1012
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 1013
    iput v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    .line 1014
    return-void
.end method
