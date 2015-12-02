.class Lcom/android/camera/ui/FocusView$ExposureView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView$ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FocusView$ExposureView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 771
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z
    invoke-static {v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3800(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v5

    aget v5, v5, v0

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v7

    aget v7, v7, v6

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v7, v7, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v7, v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v8

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->isInCircle(FFF)Z
    invoke-static {v2, v3, v5, v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3900(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4000(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4000(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    const v2, 0x7f0c0082

    move v3, v1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 781
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_focus_view"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z
    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$502(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    :cond_1
    :goto_0
    move v0, v6

    .line 791
    :cond_2
    return v0

    .line 783
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v3

    aget v3, v3, v0

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v4

    aget v4, v4, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4100(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3fa66666    # 1.3f

    mul-float/2addr v4, v5

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->isInCircle(FFF)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3900(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v4

    aget v0, v4, v0

    int-to-float v0, v0

    sub-float v0, v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v4

    aget v4, v4, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I
    invoke-static {v2, v0, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4300(Lcom/android/camera/ui/FocusView$ExposureView;FF)I

    move-result v0

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4202(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 785
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$302(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 786
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v1

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4402(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 787
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4500(Lcom/android/camera/ui/FocusView$ExposureView;)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 749
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$300(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 750
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v7

    aget v7, v7, v2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v8}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v8

    aget v8, v8, v4

    int-to-float v8, v8

    sub-float/2addr v7, v8

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->getTangentVelocity(FFFF)I
    invoke-static {v5, v6, v7, p3, p4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3700(Lcom/android/camera/ui/FocusView$ExposureView;FFFF)I

    move-result v3

    .line 753
    .local v3, "velocity":I
    if-lez v3, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    move v2, v4

    .line 755
    .local v2, "needToIncrease":Z
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    if-eqz v2, :cond_1

    .line 756
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v0, v5, 0x3c

    .line 758
    .local v0, "max":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v1, v5, 0x3c

    .line 760
    .local v1, "min":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2900(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    move-result-object v5

    invoke-virtual {v5, v3, v1, v0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->fling(III)V

    .line 761
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3300(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 763
    .end local v0    # "max":I
    .end local v1    # "min":I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z
    invoke-static {v5, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$402(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 766
    .end local v2    # "needToIncrease":Z
    .end local v3    # "velocity":I
    :goto_1
    return v4

    .line 753
    .restart local v3    # "velocity":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    if-lez v5, :cond_0

    move v2, v4

    goto :goto_0

    .end local v3    # "velocity":I
    :cond_3
    move v4, v2

    .line 766
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 797
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$300(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 798
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v7

    aget v7, v7, v3

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v8}, Lcom/android/camera/ui/FocusView$ExposureView;->access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v8

    aget v8, v8, v4

    int-to-float v8, v8

    sub-float/2addr v7, v8

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I
    invoke-static {v5, v6, v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4300(Lcom/android/camera/ui/FocusView$ExposureView;FF)I

    move-result v2

    .line 799
    .local v2, "theta":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 800
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v6

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I
    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4402(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 801
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v5, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4202(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 802
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v7

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->getAngleOffset(II)I
    invoke-static {v5, v6, v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4600(Lcom/android/camera/ui/FocusView$ExposureView;II)I

    move-result v0

    .line 804
    .local v0, "delta":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3800(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 820
    .end local v0    # "delta":I
    .end local v2    # "theta":I
    :cond_0
    :goto_0
    return v3

    .line 806
    .restart local v0    # "delta":I
    .restart local v2    # "theta":I
    :cond_1
    if-lez v0, :cond_5

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_4

    move v1, v4

    .line 808
    .local v1, "needToIncrease":Z
    :goto_1
    if-eqz v1, :cond_7

    .line 809
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z
    invoke-static {v5, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4702(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 810
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V
    invoke-static {v3, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3000(Lcom/android/camera/ui/FocusView$ExposureView;I)V

    .line 816
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$402(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .end local v0    # "delta":I
    .end local v1    # "needToIncrease":Z
    :cond_3
    move v3, v4

    .line 818
    goto :goto_0

    .restart local v0    # "delta":I
    :cond_4
    move v1, v3

    .line 806
    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    if-lez v5, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1

    .line 811
    .restart local v1    # "needToIncrease":Z
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4700(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 812
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4702(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 813
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    if-lez v0, :cond_8

    const/16 v3, 0x1d

    :goto_3
    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V
    invoke-static {v5, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3000(Lcom/android/camera/ui/FocusView$ExposureView;I)V

    goto :goto_2

    :cond_8
    const/16 v3, -0x1d

    goto :goto_3
.end method
