.class Lcom/android/camera/module/CameraModule$MainHandler;
.super Landroid/os/Handler;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "x1"    # Lcom/android/camera/module/CameraModule$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x14

    const/4 v4, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 385
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->initializeFirstTime()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1300(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0

    .line 395
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    .line 405
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1000(Lcom/android/camera/module/CameraModule;)V

    .line 408
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$1100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 415
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v9, v0, Lcom/android/camera/module/CameraModule;->mIgnoreFocusChanged:Z

    .line 416
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto :goto_0

    .line 421
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1400(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 426
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1500(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 431
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->access$1202(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 432
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->startPreviewDone()V

    .line 433
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 434
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->updateModePreference()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v9, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v9}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->onSettingsBack()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1700(Lcom/android/camera/module/CameraModule;)V

    .line 443
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 444
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1800(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 449
    :pswitch_a
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SurfaceViewFrame;->setSurfaceViewVisible(Z)V

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    goto/16 :goto_0

    .line 459
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onOpenCameraException()V

    goto/16 :goto_0

    .line 464
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 465
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # setter for: Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z
    invoke-static {v0, v9}, Lcom/android/camera/module/CameraModule;->access$1902(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_0

    .line 466
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    const-wide/16 v4, 0x320

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 472
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v9}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    goto/16 :goto_0

    .line 479
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1900(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # setter for: Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z
    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->access$1902(Lcom/android/camera/module/CameraModule;Z)Z

    .line 481
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_a

    .line 482
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 484
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v9}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    goto/16 :goto_0

    .line 490
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 493
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v9, v2}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 494
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 495
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto/16 :goto_0

    .line 497
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$2200(Lcom/android/camera/module/CameraModule;)I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # operator++ for: Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$2208(Lcom/android/camera/module/CameraModule;)I

    .line 499
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry do-capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2200(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 507
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto/16 :goto_0

    .line 512
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraPicker;->isFromGesture()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6CameraPicker;->getDirection()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setSwitchCameraGestureInfo(ZZ)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 520
    :pswitch_11
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_c

    .line 521
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 522
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    # invokes: Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(II)V
    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->access$2500(Lcom/android/camera/module/CameraModule;II)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 528
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 526
    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->notifySwitchCameraDone()V

    goto :goto_1

    .line 533
    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_d

    .line 534
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 535
    .local v8, "message":Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v8, Landroid/os/Message;->arg1:I

    .line 536
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, v8, Landroid/os/Message;->arg2:I

    .line 537
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    iget v1, v8, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioCaptureManager;->setDelayStep(I)V

    .line 538
    iget v0, v8, Landroid/os/Message;->arg2:I

    int-to-long v0, v0

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/camera/module/CameraModule$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 539
    iget v0, v8, Landroid/os/Message;->arg1:I

    if-ge v0, v2, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    goto/16 :goto_0

    .line 544
    .end local v8    # "message":Landroid/os/Message;
    :cond_d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 545
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v2, 0x1

    # invokes: Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V
    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;J)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->traceDelayCaptureEvents()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$2700(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 551
    :pswitch_13
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V
    invoke-static {v0, v1, v9}, Lcom/android/camera/module/CameraModule;->access$2800(Lcom/android/camera/module/CameraModule;IZ)V

    goto/16 :goto_0

    .line 556
    :pswitch_14
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenHint;->showObjectTrackHint(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    goto/16 :goto_0

    .line 561
    :pswitch_15
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V
    invoke-static {v0, v9}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;Z)V

    .line 564
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v0

    if-nez v0, :cond_e

    .line 565
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->animateSlide()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3000(Lcom/android/camera/module/CameraModule;)V

    .line 569
    :cond_e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 571
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J
    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->access$2002(Lcom/android/camera/module/CameraModule;J)J

    goto/16 :goto_0

    .line 577
    :pswitch_16
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->isBusy()Z

    move-result v0

    if-nez v0, :cond_f

    .line 578
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    goto/16 :goto_0

    .line 580
    :cond_f
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 587
    :pswitch_17
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v9}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    .line 592
    :pswitch_18
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onClick()V

    goto/16 :goto_0

    .line 600
    :pswitch_19
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->sendBurstCommand()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3100(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 605
    :pswitch_1a
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->setOrientationParameter()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3200(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 610
    :pswitch_1b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->applyPreferenceChange()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3300(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 615
    :pswitch_1c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/camera/module/CameraModule;->setOrientation(I)V
    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;I)V

    goto/16 :goto_0

    .line 620
    :pswitch_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_11

    move v6, v9

    .line 621
    .local v6, "enterFBMode":Z
    :goto_2
    if-eqz v6, :cond_12

    .line 622
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v0, :cond_10

    .line 623
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/Camera$FaceDetectionListener;

    .line 624
    .local v7, "listener":Landroid/hardware/Camera$FaceDetectionListener;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 626
    .end local v7    # "listener":Landroid/hardware/Camera$FaceDetectionListener;
    :cond_10
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v9, v9}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto/16 :goto_0

    .end local v6    # "enterFBMode":Z
    :cond_11
    move v6, v1

    .line 620
    goto :goto_2

    .line 628
    .restart local v6    # "enterFBMode":Z
    :cond_12
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_13

    .line 630
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto/16 :goto_0

    .line 633
    :cond_13
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto/16 :goto_0

    .line 640
    .end local v6    # "enterFBMode":Z
    :pswitch_1e
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_14

    move v0, v9

    :goto_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-lez v3, :cond_15

    :goto_4
    # invokes: Lcom/android/camera/module/CameraModule;->handleUpdateFaceView(ZZ)V
    invoke-static {v2, v0, v9}, Lcom/android/camera/module/CameraModule;->access$3500(Lcom/android/camera/module/CameraModule;ZZ)V

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto :goto_3

    :cond_15
    move v9, v1

    goto :goto_4

    .line 645
    :pswitch_1f
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v9}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto/16 :goto_0

    .line 651
    :pswitch_20
    const-string v0, "Camera"

    const-string v1, "No continuous shot callback!"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_a
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_d
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method
