.class Lcom/android/camera/ui/V6EffectCropView$1;
.super Landroid/os/Handler;
.source "V6EffectCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6EffectCropView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectCropView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 575
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 591
    :goto_0
    return-void

    .line 577
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectCropView;->access$100(Lcom/android/camera/ui/V6EffectCropView;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 578
    .local v2, "duration":J
    const/high16 v0, 0x3f800000    # 1.0f

    .line 579
    .local v0, "delta":F
    const-wide/16 v4, 0x258

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectCropView;->access$300(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    long-to-float v4, v2

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J
    invoke-static {v5}, Lcom/android/camera/ui/V6EffectCropView;->access$200(Lcom/android/camera/ui/V6EffectCropView;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 582
    const/4 v1, 0x1

    const-wide/16 v4, 0x1e

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/camera/ui/V6EffectCropView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I
    invoke-static {v4}, Lcom/android/camera/ui/V6EffectCropView;->access$500(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I
    invoke-static {v5}, Lcom/android/camera/ui/V6EffectCropView;->access$600(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    add-int/2addr v4, v5

    # setter for: Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I
    invoke-static {v1, v4}, Lcom/android/camera/ui/V6EffectCropView;->access$402(Lcom/android/camera/ui/V6EffectCropView;I)I

    .line 585
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # invokes: Lcom/android/camera/ui/V6EffectCropView;->normalizeRangeWidth()V
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectCropView;->access$700(Lcom/android/camera/ui/V6EffectCropView;)V

    .line 586
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/android/camera/ui/V6EffectCropView;->access$800(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;
    invoke-static {v5}, Lcom/android/camera/ui/V6EffectCropView;->access$900(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;
    invoke-static {v6}, Lcom/android/camera/ui/V6EffectCropView;->access$1000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F
    invoke-static {v7}, Lcom/android/camera/ui/V6EffectCropView;->access$1100(Lcom/android/camera/ui/V6EffectCropView;)F

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/camera/effect/EffectController;->setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
