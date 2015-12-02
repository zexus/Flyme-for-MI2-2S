.class public Lcom/android/camera/module/PanoramaModule;
.super Lcom/android/camera/module/BaseModule;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;,
        Lcom/android/camera/module/PanoramaModule$ProgressData;,
        Lcom/android/camera/module/PanoramaModule$MosaicJpeg;,
        Lcom/android/camera/module/PanoramaModule$SetupCameraThread;
    }
.end annotation


# instance fields
.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mCurrentRotation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mHorizontalViewAngle:F

.field private mLocation:Landroid/location/Location;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicHandler:Landroid/os/Handler;

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mMosaicThread:Landroid/os/HandlerThread;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPanoramaViewRoot:Landroid/view/ViewGroup;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreviewArea:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressArea:Lcom/android/camera/ui/RotateLayout;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewControlArea:Landroid/view/View;

.field private mReviewLayout:Landroid/view/View;

.field private mReviewRotate:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveMosaicThread:Ljava/lang/Thread;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mSnapshotFocusMode:Ljava/lang/String;

.field private mStartMoveHintArea:Landroid/view/View;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 160
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 161
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRotation:I

    .line 1397
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->setupCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/PanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/PanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/PanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/module/PanoramaModule;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/PanoramaModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mUsingFrontCamera:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/module/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/module/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->configMosaicPreview()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/PanoramaModule;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mCancelComputation:Z

    .line 1049
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1051
    monitor-exit v1

    .line 1052
    return-void

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkProgressAreaOrientation()V
    .locals 3

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getCurrentOrientation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mOrientationCompensation:I

    if-eq v0, v1, :cond_0

    .line 1098
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mOrientationCompensation:I

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/PanoramaModule;->updateRotateLayout(ILandroid/view/View;)V

    .line 1099
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1101
    :cond_0
    return-void
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview()V
    .locals 5

    .prologue
    .line 539
    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    .line 540
    .local v2, "w":I
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    .line 541
    .local v0, "h":I
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->stopCameraPreview()V

    .line 542
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 543
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-nez v3, :cond_2

    .line 544
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 553
    .local v1, "isLandscape":Z
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v3}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 554
    :cond_0
    new-instance v3, Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v4, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 557
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v3}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 558
    iget-boolean v3, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v3, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->resetToPreview()V

    .line 561
    :cond_1
    return-void

    .line 547
    .end local v1    # "isLandscape":Z
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 548
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0

    .line 551
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 529
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 714
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->inflatePanoramaView()V

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPanoramaViewRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    .line 716
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureLayout:Landroid/view/View;

    .line 717
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 718
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorFlag(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$6;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 732
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 734
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 735
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 737
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 738
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    .line 739
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 740
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewCancelButton:Landroid/view/View;

    .line 741
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewCancelButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$7;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    .line 749
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 752
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 753
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    .line 754
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    .line 755
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    .line 757
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f04000f

    invoke-direct {v0, v1, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 758
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/PanoramaModule;->setOrientationIndicator(IZ)V

    .line 759
    return-void
.end method

.method private getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 10
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 463
    invoke-static {}, Lcom/android/camera/Device;->isLowQualityPanorama()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v3, 0x356

    .line 464
    .local v3, "maxWidth":I
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isLowQualityPanorama()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v2, 0x1e0

    .line 465
    .local v2, "maxHeight":I
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v4, "out":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_3

    .line 468
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 469
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v6, v3, :cond_0

    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    if-gt v6, v2, :cond_0

    .line 470
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 463
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    const/16 v3, 0x500

    goto :goto_0

    .line 464
    .restart local v3    # "maxWidth":I
    :cond_2
    const/16 v2, 0x2d0

    goto :goto_1

    .line 474
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v2    # "maxHeight":I
    .restart local v4    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v6, v4, v8, v9}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v6

    return-object v6
.end method

.method private getRotatables()[Lcom/android/camera/ui/Rotatable;
    .locals 3

    .prologue
    .line 777
    const/16 v1, 0x8

    new-array v0, v1, [Lcom/android/camera/ui/Rotatable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const v1, 0x7f0c001f

    invoke-virtual {p0, v1}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v0, v1

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    aput-object v1, v0, v2

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    aput-object v2, v0, v1

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    aput-object v1, v0, v2

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mReviewCancelButton:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    aput-object v1, v0, v2

    .line 787
    .local v0, "rotateLayout":[Lcom/android/camera/ui/Rotatable;
    return-object v0
.end method

.method private hideTooFastIndication()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 1159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1395
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1387
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1390
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 3

    .prologue
    .line 919
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 920
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 922
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraId:I

    .line 923
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 924
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 925
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 926
    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraId:I

    .line 928
    :cond_0
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    .line 1044
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1045
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 451
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 452
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 453
    iput-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    .line 456
    :cond_0
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->releaseCamera()V

    .line 1433
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitForRelease:Z

    .line 1435
    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1069
    iput v1, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 1075
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->setVisibility(I)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->animateIn(Ljava/lang/Runnable;I)V

    .line 1080
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 1082
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 1084
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->setVisibility(I)V

    .line 1085
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 1089
    invoke-virtual {p0, v3}, Lcom/android/camera/module/PanoramaModule;->enableCameraControls(Z)V

    .line 1093
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->checkProgressAreaOrientation()V

    .line 1094
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1383
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1384
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->reset()V

    .line 1105
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->startCameraPreview()V

    .line 1106
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1040
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 15
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 1125
    if-eqz p1, :cond_1

    .line 1126
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00d4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    invoke-static {v2, v4, v5}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 1128
    .local v3, "filename":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-wide v4, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    const/4 v11, 0x0

    move/from16 v7, p4

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v2 .. v11}, Lcom/android/camera/storage/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object v14

    .line 1130
    .local v14, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v4, "capture_nums_panorama"

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1131
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v4, "camera_picture_taken_key"

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1132
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1133
    if-eqz v14, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v14}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1135
    invoke-static {v3}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1136
    .local v12, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    iget-wide v4, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    move/from16 v0, p4

    invoke-static {v12, v0, v2, v4, v5}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    .line 1137
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v13, "newFile":Ljava/io/File;
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2, v14, v4, v5}, Lcom/android/camera/storage/Storage;->updateImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)Z

    .line 1142
    .end local v3    # "filename":Ljava/lang/String;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "newFile":Ljava/io/File;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v14

    :cond_1
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 438
    .local v0, "cameraId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 440
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraOrientation:I

    .line 441
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mUsingFrontCamera:Z

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 444
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/android/camera/module/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 445
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/android/camera/module/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 446
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x0

    .line 478
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 479
    .local v5, "size":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_0

    .line 480
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Can not find suitable preview size for panorama"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 482
    :cond_0
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iput v7, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    .line 483
    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    iput v7, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    .line 485
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preview h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v7, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 488
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 489
    .local v1, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 490
    .local v2, "last":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v4, v7, v10

    .line 491
    .local v4, "minFps":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x1

    aget v3, v7, v8

    .line 492
    .local v3, "maxFps":I
    invoke-virtual {p1, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 493
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preview fps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    .line 496
    .local v6, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 497
    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 503
    :goto_0
    invoke-virtual {p1, v10}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 504
    invoke-virtual {p1, v10}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 506
    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v8, "pref_camera_antibanding_key"

    const v9, 0x7f0e00ca

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/camera/module/PanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "antiBanding":Ljava/lang/String;
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "antiBanding value ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/module/PanoramaModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 511
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 513
    :cond_1
    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v7}, Lcom/android/camera/module/PanoramaModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 514
    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v7}, Lcom/android/camera/module/PanoramaModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/camera/module/PanoramaModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 516
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v7

    iput v7, p0, Lcom/android/camera/module/PanoramaModule;->mHorizontalViewAngle:F

    .line 517
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v7

    iput v7, p0, Lcom/android/camera/module/PanoramaModule;->mVerticalViewAngle:F

    .line 518
    return-void

    .line 500
    .end local v0    # "antiBanding":Ljava/lang/String;
    :cond_2
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set the focus mode to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because the mode is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x10e

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1109
    if-eqz p1, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1111
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRotation:I

    if-ne v0, v2, :cond_2

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1117
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->animateOut(Ljava/lang/Runnable;I)V

    .line 1119
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 1122
    return-void

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1349
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->stopCameraPreview()V

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1356
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1357
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1360
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1361
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1363
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1364
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1369
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1372
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    .line 1373
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .param p1, "aborted"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 649
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->hideTooFastIndication()V

    .line 650
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 651
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->stopCameraPreview()V

    .line 653
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 657
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_2

    .line 658
    new-instance v0, Lcom/android/camera/module/PanoramaModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/PanoramaModule$5;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 676
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setEnabled(Z)V

    .line 677
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    .line 678
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOnAwhile()V

    .line 679
    return-void
.end method

.method private switchToCameraMode()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 932
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->switchToOtherMode(I)V

    .line 933
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 532
    const-string v0, "pref_camera_panoramamode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .param p1, "panningRateXInDegree"    # F
    .param p2, "panningRateYInDegree"    # F
    .param p3, "progressHorizontalAngle"    # F
    .param p4, "progressVerticalAngle"    # F

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 693
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 698
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->showTooFastIndication()V

    .line 704
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    float-to-int v0, p3

    .line 708
    .local v0, "angleInMajorDirection":I
    :goto_1
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRotation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRotation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    :cond_1
    neg-int v0, v0

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 711
    return-void

    .line 702
    .end local v0    # "angleInMajorDirection":I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 704
    :cond_4
    float-to-int v0, p4

    goto :goto_1
.end method


# virtual methods
.method public checkActivityOrientation()V
    .locals 2

    .prologue
    .line 1424
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1428
    :cond_0
    return-void
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
    .locals 13
    .param p1, "highRes"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1295
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1296
    .local v8, "mosaicReturnCode":I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1331
    :goto_0
    return-object v5

    .line 1298
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1299
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto :goto_0

    .line 1302
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1303
    .local v1, "imageData":[B
    if-nez v1, :cond_2

    .line 1304
    const-string v2, "PanoramaActivity"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto :goto_0

    .line 1308
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1309
    .local v7, "len":I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1311
    .local v3, "width":I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1313
    .local v4, "height":I
    const-string v2, "PanoramaActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1317
    :cond_3
    const-string v2, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto/16 :goto_0

    .line 1322
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1323
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1324
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1326
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;[BII)V

    goto/16 :goto_0

    .line 1327
    :catch_0
    move-exception v6

    .line 1328
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "PanoramaActivity"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1329
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto/16 :goto_0
.end method

.method protected getCameraRotation()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 521
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 522
    .local v0, "pixelInfo":Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 524
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 352
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraLC;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraPadOne;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    .end local p3    # "extra1":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 370
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v3, v4

    .line 418
    goto :goto_0

    .line 372
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/camera/module/PanoramaModule;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 376
    :sswitch_1
    if-nez p1, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    .line 378
    iget v4, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    if-nez v4, :cond_0

    .line 379
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v5, "capture_times_shutter"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p3

    .line 383
    check-cast v2, Landroid/graphics/Point;

    .local v2, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 384
    check-cast v0, Landroid/graphics/Point;

    .line 385
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_0

    .line 387
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v2    # "start":Landroid/graphics/Point;
    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 388
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 393
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_2
    new-instance v1, Lcom/android/camera/module/PanoramaModule$3;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/module/PanoramaModule$3;-><init>(Lcom/android/camera/module/PanoramaModule;Ljava/lang/Object;)V

    .line 399
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 402
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 403
    iget-object v4, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    goto :goto_0

    .line 410
    .end local v1    # "r":Ljava/lang/Runnable;
    :sswitch_3
    iput-boolean v3, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    .line 411
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V

    goto/16 :goto_0

    .line 415
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->openSettingActivity()V

    goto/16 :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0043 -> :sswitch_0
        0x7f0c0045 -> :sswitch_1
        0x7f0c0049 -> :sswitch_2
        0x7f0c005f -> :sswitch_3
        0x7f0c0088 -> :sswitch_3
        0x7f0c008b -> :sswitch_4
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 939
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->onBack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->onBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return v3

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewCancelButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 948
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V

    goto :goto_0
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 216
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->createContentView()V

    .line 217
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->loadCameraPreferences()V

    .line 218
    iput v4, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 219
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->createContentView()V

    .line 220
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 222
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v5, v4}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 224
    new-instance v2, Lcom/android/camera/module/PanoramaModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/PanoramaModule$1;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 250
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "panoramaAsynchronousMosaicing"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    .line 251
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 252
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicHandler:Landroid/os/Handler;

    .line 253
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 254
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "Panorama"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 256
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 258
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0e00eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 260
    const v2, 0x7f0e00d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 261
    const v2, 0x7f0e00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 262
    const v2, 0x7f0e00e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 264
    new-instance v2, Lcom/android/camera/module/PanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/PanoramaModule$2;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 340
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 345
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 346
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 848
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 878
    :goto_0
    return v1

    .line 851
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 878
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 854
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    .line 861
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    .line 869
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/PanoramaModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 851
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 892
    :goto_0
    return v0

    .line 886
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 892
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 889
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 886
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "oldl"    # I
    .param p7, "oldt"    # I
    .param p8, "oldr"    # I
    .param p9, "oldb"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/view/View;IIII)V

    .line 570
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    :cond_0
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1229
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 1230
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    if-ne v1, v2, :cond_1

    .line 1236
    invoke-direct {p0, v2}, Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V

    .line 1237
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->reset()V

    .line 1240
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1241
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->releaseResources()V

    .line 1245
    :goto_1
    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1246
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1247
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->cancelHighResComputation()V

    .line 1249
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :cond_2
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    .line 1255
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 1258
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_3

    .line 1259
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 1260
    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 1263
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_4

    .line 1264
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1265
    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1267
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->resetScreenOn()V

    .line 1268
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 1270
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1271
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1273
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1243
    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/module/PanoramaModule;->mWaitForRelease:Z

    goto :goto_1

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public onPauseBeforeSuper()V
    .locals 0

    .prologue
    .line 1224
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 1225
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1176
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 1177
    iput v4, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 1180
    iget-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitForRelease:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 1181
    :cond_0
    new-instance v0, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    .line 1182
    .local v0, "setupCameraThread":Lcom/android/camera/module/PanoramaModule$SetupCameraThread;
    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->start()V

    .line 1184
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->hasCameraException()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1189
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onOpenCameraException()V

    .line 1220
    .end local v0    # "setupCameraThread":Lcom/android/camera/module/PanoramaModule$SetupCameraThread;
    :goto_1
    return-void

    .line 1193
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/module/PanoramaModule;->mWaitForRelease:Z

    .line 1194
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 1196
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 1197
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1198
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 1201
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1202
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1205
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1206
    iget-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1207
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 1208
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1209
    new-instance v1, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;

    invoke-direct {v1, p0, v6}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1217
    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 1218
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1219
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOnAwhile()V

    goto :goto_1

    .line 1211
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 1214
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1215
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->configMosaicPreview()V

    goto :goto_2

    .line 1185
    .restart local v0    # "setupCameraThread":Lcom/android/camera/module/PanoramaModule$SetupCameraThread;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 1165
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 1167
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 1168
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    .line 1170
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V

    .line 1172
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 902
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 907
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->playCameraSound(I)V

    .line 908
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->startCapture()V

    goto :goto_0

    .line 911
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->playCameraSound(I)V

    .line 912
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V

    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 916
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1279
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 1281
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->releaseResources()V

    .line 1284
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1377
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1378
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOnAwhile()V

    .line 1379
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 424
    const-string v1, "from_where"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 427
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 429
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 2
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 837
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    .line 839
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    if-nez v0, :cond_0

    .line 840
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 954
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 955
    new-instance v0, Lcom/android/camera/module/PanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/module/PanoramaModule$8;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    .line 979
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 980
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 2

    .prologue
    .line 1032
    new-instance v0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    .line 1033
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->reportProgress()V

    .line 1035
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 762
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->getRotatables()[Lcom/android/camera/ui/Rotatable;

    move-result-object v5

    .line 763
    .local v5, "rotatables":[Lcom/android/camera/ui/Rotatable;
    const/4 v9, 0x3

    new-array v7, v9, [Landroid/view/View;

    iget-object v9, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    aput-object v9, v7, v8

    iget-object v9, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    aput-object v9, v7, v1

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    aput-object v10, v7, v9

    .line 764
    .local v7, "views":[Landroid/view/View;
    iget-object v9, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v9}, Lcom/android/camera/ui/RotateLayout;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 765
    .local v1, "changeProgressArea":Z
    :goto_0
    move-object v0, v7

    .local v0, "arr$":[Landroid/view/View;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 766
    .local v6, "v":Landroid/view/View;
    iget-object v8, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    if-ne v6, v8, :cond_0

    if-eqz v1, :cond_1

    .line 767
    :cond_0
    invoke-virtual {p0, p1, v6}, Lcom/android/camera/module/PanoramaModule;->updateRotateLayout(ILandroid/view/View;)V

    .line 765
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "changeProgressArea":Z
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    move v1, v8

    .line 764
    goto :goto_0

    .line 769
    .restart local v0    # "arr$":[Landroid/view/View;
    .restart local v1    # "changeProgressArea":Z
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    .line 770
    .local v3, "indicator":Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    if-ne v3, v8, :cond_4

    if-eqz v1, :cond_5

    .line 771
    :cond_4
    invoke-interface {v3, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 769
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 773
    .end local v3    # "indicator":Lcom/android/camera/ui/Rotatable;
    :cond_6
    iput p1, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRotation:I

    .line 774
    return-void
.end method

.method public startCapture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 597
    iput-boolean v2, p0, Lcom/android/camera/module/PanoramaModule;->mCancelComputation:Z

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    .line 599
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicPreviewRenderer;->setFramesUpdated(Z)V

    .line 600
    iput v3, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 602
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    .line 603
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 604
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$4;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setEnabled(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    .line 628
    invoke-virtual {p0, v2}, Lcom/android/camera/module/PanoramaModule;->enableCameraControls(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 630
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 631
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    .line 632
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6SeekBarIndicator;->setVisibility(I)V

    .line 633
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 636
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 639
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 642
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 643
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 644
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOn()V

    .line 645
    return-void
.end method

.method protected updateRotateLayout(ILandroid/view/View;)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0b0011

    const v4, 0x7f0b0010

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 791
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 794
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 832
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void

    .line 796
    :sswitch_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 797
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    if-ne v1, p2, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 799
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 800
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 801
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 805
    :sswitch_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 806
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    if-ne v1, p2, :cond_0

    .line 807
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 808
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 809
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 810
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 814
    :sswitch_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 815
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    if-ne v1, p2, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 817
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 818
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 819
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 823
    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 824
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;

    if-ne v1, p2, :cond_0

    .line 825
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 826
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 827
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 828
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 794
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
