.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v11, 0x43160000    # 150.0f

    const-wide/16 v12, 0x14

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 311
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mStartTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 315
    .local v0, "duration":J
    const-wide/16 v4, 0xc8

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 318
    long-to-float v3, v0

    const/high16 v4, 0x43480000    # 200.0f

    div-float v2, v3, v4

    .line 319
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sub-float v5, v9, v2

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;I)I

    .line 320
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    mul-float v4, v11, v2

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$902(Lcom/android/camera/ui/FocusView;I)I

    .line 321
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v10}, Lcom/android/camera/ui/FocusView;->access$1100(Lcom/android/camera/ui/FocusView;ZZ)V

    goto :goto_0

    .line 327
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 328
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1200(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSuccessTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 330
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x82

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 331
    long-to-float v3, v0

    const/high16 v4, 0x43020000    # 130.0f

    div-float v2, v3, v4

    .line 332
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1500()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1600()I

    move-result v5

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1500()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1402(Lcom/android/camera/ui/FocusView;I)I

    .line 333
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_MIN_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;I)I

    .line 334
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x64

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$902(Lcom/android/camera/ui/FocusView;I)I

    .line 335
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v8}, Lcom/android/camera/ui/FocusView;->access$1100(Lcom/android/camera/ui/FocusView;ZZ)V

    .line 337
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 339
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 345
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 346
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1200(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mFailTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 348
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 350
    const-wide/16 v4, 0x12c

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 351
    const-wide/16 v0, 0x12c

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    # invokes: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 354
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x43340000    # 180.0f

    sub-float v5, v9, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2102(Lcom/android/camera/ui/FocusView;I)I

    .line 355
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2300()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2300()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2202(Lcom/android/camera/ui/FocusView;I)I

    .line 356
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2400()I

    move-result v5

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;I)I

    .line 357
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sub-float v4, v9, v2

    mul-float/2addr v4, v11

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$902(Lcom/android/camera/ui/FocusView;I)I

    .line 358
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v10}, Lcom/android/camera/ui/FocusView;->access$1100(Lcom/android/camera/ui/FocusView;ZZ)V

    goto/16 :goto_0

    .line 365
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->clearMessages()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2500(Lcom/android/camera/ui/FocusView;)V

    .line 367
    const/4 v3, 0x5

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 369
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->reset()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)V

    goto/16 :goto_0

    .line 374
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1200(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 375
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1600()I

    move-result v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1402(Lcom/android/camera/ui/FocusView;I)I

    .line 376
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_MIN_RADIUS:I

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;I)I

    .line 377
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x64

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$902(Lcom/android/camera/ui/FocusView;I)I

    .line 378
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v8}, Lcom/android/camera/ui/FocusView;->access$1100(Lcom/android/camera/ui/FocusView;ZZ)V

    .line 379
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-nez v3, :cond_3

    .line 380
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/camera/ui/FocusView$ExposureView;->setTimeout(Z)V

    .line 381
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto/16 :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
