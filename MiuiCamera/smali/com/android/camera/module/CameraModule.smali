.class public Lcom/android/camera/module/CameraModule;
.super Lcom/android/camera/module/BaseModule;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/CameraModule$BurstSpeedController;,
        Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;,
        Lcom/android/camera/module/CameraModule$AutoFocusCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegPictureCallback;,
        Lcom/android/camera/module/CameraModule$RawPictureCallback;,
        Lcom/android/camera/module/CameraModule$PostViewPictureCallback;,
        Lcom/android/camera/module/CameraModule$ShutterCallback;,
        Lcom/android/camera/module/CameraModule$MainHandler;,
        Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    }
.end annotation


# static fields
.field protected static final BURST_SHOOTING_COUNT:I


# instance fields
.field protected m3ALocked:Z

.field private mAFEndLogTimes:I

.field private mAeLockSupported:Z

.field protected mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

.field private final mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field protected mAwbLockSupported:Z

.field private mBurstShotTitle:Ljava/lang/String;

.field private mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

.field private mCameraDisplayOrientation:I

.field private mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

.field protected volatile mCameraState:I

.field public mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field protected mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field protected mFoundFace:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsCountDown:Z

.field protected mIsImageCaptureIntent:Z

.field mIsRecreateCameraScreenNail:Z

.field private mIsSaveCaptureImage:Z

.field protected mIsZSLMode:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mKeepBitmapTexture:Z

.field private mLastFreezeHDRTime:J

.field private mLastIsEffect:Z

.field private mLastShutterButtonClickTime:J

.field private mLongPressedAutoFocus:Z

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field protected mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field protected mMultiSnapStatus:Z

.field protected mMultiSnapStopRequest:Z

.field private mNeedAutoFocus:Z

.field private mOnResumeTime:J

.field private mPendingCapture:Z

.field private mPendingMultiCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field protected mReceivedJpegCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRestartPreview:Z

.field private mSaveUri:Landroid/net/Uri;

.field protected mSceneMode:Ljava/lang/String;

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSetCameraParameter:I

.field private mShootOrientation:I

.field private mShootRotation:F

.field private final mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSnapshotOnIdle:Z

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field protected mTotalJpegCallbackNum:I

.field private mUpdateImageTitle:Z

.field private mUpdateSet:I

.field private mUpdateSettingView:Ljava/lang/Runnable;

.field protected mVolumeLongPress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/android/camera/Device;->getBurstShootCount()I

    move-result v0

    sput v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 118
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 119
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 120
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 177
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 196
    new-instance v0, Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    .line 206
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 214
    new-instance v0, Lcom/android/camera/module/CameraModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$1;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 247
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 248
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 253
    new-instance v0, Lcom/android/camera/module/CameraModule$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    .line 254
    new-instance v0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 256
    new-instance v0, Lcom/android/camera/module/CameraModule$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 258
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    .line 260
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    .line 284
    new-instance v0, Lcom/android/camera/module/CameraModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    .line 293
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 294
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 295
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 297
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 300
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 810
    new-instance v0, Lcom/android/camera/module/CameraModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$2;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1694
    new-instance v0, Lcom/android/camera/module/CameraModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$3;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSettingView:Ljava/lang/Runnable;

    .line 3884
    new-instance v0, Lcom/android/camera/module/CameraModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$6;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 4227
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSettingsBack()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2208(Lcom/android/camera/module/CameraModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/CameraModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/module/CameraModule;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->traceDelayCaptureEvents()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/module/CameraModule;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/module/CameraModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->sendBurstCommand()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceChange()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/module/CameraModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateHold()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4000(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/camera/module/CameraModule;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeImage([BI)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/module/CameraModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    return v0
.end method

.method static synthetic access$4800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/camera/module/CameraModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # [B

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopMultiSnap()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$6100(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/camera/module/CameraModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return p1
.end method

.method static synthetic access$6108(Lcom/android/camera/module/CameraModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/camera/module/CameraModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFocusManager()V

    return-void
.end method

.method private animateCapture()V
    .locals 2

    .prologue
    .line 3753
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 3754
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3755
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPanel;->onCapture()V

    .line 3760
    :cond_0
    :goto_0
    return-void

    .line 3757
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 3741
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 3742
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 3744
    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 3747
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 3748
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    .line 3750
    :cond_0
    return-void
.end method

.method private applyPreferenceChange()V
    .locals 1

    .prologue
    .line 4289
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4290
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4292
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4293
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 4294
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 4296
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 4297
    return-void
.end method

.method private applyPreferenceSettingsLater()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 1951
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 1952
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1956
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 2762
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRestartPreview()V
    .locals 2

    .prologue
    .line 4209
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4210
    const-string v0, "Camera"

    const-string v1, "Restarting Preview... Camera Mode Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4212
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 4213
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 4214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 4217
    :cond_0
    return-void
.end method

.method private couldEnableObjectTrack()Z
    .locals 2

    .prologue
    .line 4032
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAttach()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 2109
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v10, :cond_0

    .line 2184
    :goto_0
    return-void

    .line 2112
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 2113
    .local v2, "data":[B
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    if-eqz v10, :cond_1

    .line 2114
    invoke-direct {p0, v2}, Lcom/android/camera/module/CameraModule;->saveJpegData([B)V

    .line 2116
    :cond_1
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 2121
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_2

    .line 2122
    const/4 v6, 0x0

    .line 2124
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2125
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2126
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 2128
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2134
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V

    .line 2135
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2129
    :catch_0
    move-exception v3

    .line 2131
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v10, "Camera"

    const-string v11, "IOException when doAttach"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2134
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V

    .line 2135
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2134
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    .line 2135
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2138
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2139
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    invoke-static {v10}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 2140
    .local v5, "orientation":I
    invoke-static {v0, v5}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2141
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "inline-data"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "data"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2143
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 2147
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "orientation":I
    :cond_3
    const/4 v9, 0x0

    .line 2148
    .local v9, "tempUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2150
    .local v8, "tempStream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v11, "crop-temp"

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2151
    .local v7, "path":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2152
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v11, "crop-temp"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 2153
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2154
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2155
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 2165
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2167
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2168
    .local v4, "newExtras":Landroid/os/Bundle;
    const-string v10, "circle"

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2169
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_4
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_5

    .line 2172
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2177
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v1, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2180
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2182
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v1, v11}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2156
    .end local v1    # "cropIntent":Landroid/content/Intent;
    .end local v4    # "newExtras":Landroid/os/Bundle;
    .end local v7    # "path":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 2157
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2158
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2165
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2160
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 2161
    .local v3, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2162
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2165
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2174
    .restart local v4    # "newExtras":Landroid/os/Bundle;
    .restart local v7    # "path":Ljava/io/File;
    :cond_5
    const-string v10, "return-data"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/Camera;
    .param p1, "isBackCamera"    # Z
    .param p2, "isImageCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    .line 1653
    if-nez p2, :cond_0

    .line 1654
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_0
    const-string v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    invoke-static {}, Lcom/android/camera/Device;->isDelayCaptureSeperated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1661
    const-string v1, "pref_camera_ubifocus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_2
    const-string v1, "pref_camera_manual_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1664
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1665
    const-string v1, "pref_camera_gradienter_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez v1, :cond_4

    .line 1669
    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1671
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1672
    const-string v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    :cond_5
    sget-boolean v1, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v1, :cond_6

    .line 1675
    const-string v1, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1677
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1678
    const-string v1, "pref_camera_tilt_shift_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFishEyeMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1681
    const-string v1, "pref_camera_fisheye_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_8
    return-object v0
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 1370
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleDelayShutter()V
    .locals 4

    .prologue
    const/16 v1, 0x1d

    .line 1959
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1960
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1961
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1970
    :cond_0
    :goto_0
    return-void

    .line 1966
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto :goto_0
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    const/4 v1, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    .line 721
    .local v0, "view":Lcom/android/camera/ui/FaceView;
    if-eqz p1, :cond_3

    .line 722
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 724
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 725
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 726
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 727
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 728
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 736
    :cond_2
    :goto_0
    return-void

    .line 731
    :cond_3
    if-eqz p2, :cond_4

    .line 732
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 734
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideLoadUI(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    return-void

    .line 1577
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3560
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->ignoreTouchEvent(Z)V

    .line 3562
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 3563
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 3564
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 3565
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 3566
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 3567
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 3569
    :cond_0
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 2

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 665
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    .line 666
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    .line 667
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    .line 668
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 669
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3798
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3799
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    .line 3802
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    .line 3803
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    .line 3804
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    .line 3805
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    .line 3807
    return-void

    :cond_0
    move v0, v2

    .line 3799
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3802
    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 690
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 11

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2722
    .local v3, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v6, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2730
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 2731
    .local v9, "display":Landroid/view/Display;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 2732
    .local v10, "point":Landroid/graphics/Point;
    invoke-virtual {v9, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2733
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, v10, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2734
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, v10, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2735
    return-void

    .line 2722
    .end local v9    # "display":Landroid/view/Display;
    .end local v10    # "point":Landroid/graphics/Point;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4051
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 4052
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4053
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4054
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 4055
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4056
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4057
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 4058
    const/4 v0, 0x1

    .line 4060
    :cond_0
    return v0
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 712
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 714
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 717
    :cond_0
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 2457
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2459
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2460
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2461
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2462
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2463
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 2465
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3525
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3871
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3872
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3873
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3874
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "captureAfterLaunch"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3875
    const-string v4, "captureAfterLaunch"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3876
    .local v2, "result":Z
    const-string v4, "captureAfterLaunch"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3877
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3881
    .end local v1    # "myExtras":Landroid/os/Bundle;
    .end local v2    # "result":Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isCountDownMode()Z
    .locals 1

    .prologue
    .line 2248
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_delay_capture_mode"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 2891
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2893
    :cond_0
    const/4 v0, 0x0

    .line 2895
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSelectingCapturedImage()Z
    .locals 1

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->isVisibleWithAnimationDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShutterButtonClickable()Z
    .locals 1

    .prologue
    .line 2306
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 679
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3786
    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/view/View;IIII)V

    .line 3416
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3417
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 3418
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 3420
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3422
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3423
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    .line 3425
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 3426
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 3597
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 3598
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3599
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3600
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restorePreferences()V

    .line 3605
    :cond_0
    :goto_0
    return-void

    .line 3601
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3602
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3603
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "whiteBalance"    # Ljava/lang/String;
    .param p3, "exposureMode"    # Ljava/lang/String;
    .param p4, "focusMode"    # Ljava/lang/String;
    .param p5, "isoValue"    # Ljava/lang/String;
    .param p6, "effectValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1605
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p5, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPage;->overrideSettings([Ljava/lang/String;)V

    .line 1620
    :goto_0
    return-void

    .line 1613
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPage;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 5

    .prologue
    .line 1582
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1583
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    sget-boolean v2, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v2, :cond_2

    .line 1587
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    goto :goto_0

    .line 1590
    :cond_2
    new-instance v0, Lcom/android/camera/PictureSize;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    .line 1593
    .local v0, "pictureSize":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1594
    iget v2, v0, Lcom/android/camera/PictureSize;->width:I

    iget v3, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v1

    .line 1595
    .local v1, "style":I
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v1, v2, :cond_0

    .line 1596
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1597
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto :goto_0
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 3572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3573
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 3574
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 3578
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3579
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3580
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 4360
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4362
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 4363
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 4364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 4365
    return-void
.end method

.method private resetGradienter()V
    .locals 2

    .prologue
    .line 4220
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4221
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 4222
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 4224
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3780
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3781
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3782
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3790
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 3792
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->reloadPreference()V

    .line 3793
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 3794
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 3795
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2399
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2400
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2401
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 2404
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2406
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 2407
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2408
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2410
    :cond_0
    return-void
.end method

.method private resumePreview()V
    .locals 2

    .prologue
    .line 2514
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2515
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2516
    return-void
.end method

.method private saveJpegData([B)V
    .locals 15
    .param p1, "data"    # [B

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2092
    .local v0, "s":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 2093
    .local v7, "loc":Landroid/location/Location;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v11

    .line 2095
    .local v11, "orientation":I
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v1, v11

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 2096
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2097
    .local v8, "width":I
    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2102
    .local v9, "height":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 2104
    .local v3, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v14}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 2106
    return-void

    .line 2099
    .end local v3    # "title":Ljava/lang/String;
    .end local v8    # "width":I
    .end local v9    # "height":I
    :cond_0
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2100
    .restart local v8    # "width":I
    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v9    # "height":I
    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2369
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2370
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    .local v1, "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v2, v6

    aput-object v5, v2, v4

    const/4 v3, 0x2

    const-string v4, "pref_qc_camera_exposuretime_key"

    aput-object v4, v2, v3

    aput-object v5, v2, v7

    const/4 v3, 0x4

    const-string v4, "pref_camera_face_beauty_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v4, "pref_camera_shader_coloreffect_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2378
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2379
    .local v0, "flash":Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2381
    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2382
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2384
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2387
    .end local v0    # "flash":Ljava/lang/String;
    .end local v1    # "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2388
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2389
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2390
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2391
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 2392
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2393
    return-void
.end method

.method private sendBurstCommand()V
    .locals 7

    .prologue
    .line 1225
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1229
    monitor-exit v1

    .line 1231
    :cond_0
    return-void

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendDoCaptureMessage(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0xf

    .line 3863
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 3864
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3867
    :cond_0
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    .line 2990
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    .line 2991
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    .line 2992
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2993
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2994
    return-void
.end method

.method private setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1999
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 2000
    :cond_1
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    .line 2002
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 2005
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 2007
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 2008
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    .line 2009
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 2010
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    goto :goto_0
.end method

.method private setOrientationParameter()V
    .locals 5

    .prologue
    .line 2019
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-nez v2, :cond_4

    .line 2021
    const/4 v0, 0x0

    .line 2023
    .local v0, "changeFlag":Z
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2024
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 2025
    .local v1, "newRotation":I
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getRotation()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2026
    const/4 v0, 0x1

    .line 2027
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2033
    .end local v1    # "newRotation":I
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2034
    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "xiaomi-preview-rotation"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2037
    const/4 v0, 0x1

    .line 2038
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "xiaomi-preview-rotation"

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2041
    :cond_2
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2043
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2046
    .end local v0    # "changeFlag":Z
    :cond_4
    return-void
.end method

.method private setPictureOrientation()V
    .locals 1

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    .line 4339
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    .line 4340
    return-void

    .line 4338
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    goto :goto_0
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 3811
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3812
    .local v0, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(D)V

    .line 3814
    return-void
.end method

.method private setupCaptureParams()V
    .locals 3

    .prologue
    .line 3531
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3532
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3533
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    .line 3534
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    .line 3535
    const-string v1, "save-image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    .line 3537
    :cond_0
    return-void
.end method

.method private showObjectTrackToastIfNeeded()V
    .locals 4

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_tap_screen_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4131
    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3542
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3543
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->ignoreTouchEvent(Z)V

    .line 3544
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3545
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeInvisible()V

    .line 3546
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 3547
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 3548
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 3549
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 3550
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 3551
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 3555
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 3557
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 697
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 702
    :cond_1
    return-void
.end method

.method private stopMultiSnap()V
    .locals 4

    .prologue
    .line 2413
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    .line 2414
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 2415
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 2418
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2423
    :goto_0
    return-void

    .line 2421
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3052
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3053
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3055
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 3056
    const-string v0, "Camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 3058
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 3062
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3063
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3068
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 3069
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 3071
    :cond_2
    return-void

    .line 3065
    :cond_3
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3631
    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 3688
    :goto_0
    return-void

    .line 3632
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 3633
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3634
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 3636
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v3}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 3637
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3639
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to switch camera. id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    iget v3, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 3641
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 3642
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3643
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 3644
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 3645
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 3646
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 3647
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 3648
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 3649
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 3650
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3652
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 3653
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 3654
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6EdgeShutterView;->cancelAnimation()V

    .line 3655
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3656
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 3657
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 3658
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 3660
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->hasCameraException()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3665
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onOpenCameraException()V

    goto/16 :goto_0

    .line 3668
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3, v4}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 3669
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    .line 3670
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v5

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 3671
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3672
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 3673
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    .line 3674
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    .line 3675
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6FlashButton;->avoidTorchOpen()Z

    .line 3676
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3677
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3680
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 3681
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 3682
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 3683
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 3684
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 3685
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    .line 3686
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    .line 3687
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 3670
    goto :goto_2

    .line 3661
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3586
    :goto_0
    return-void

    .line 3584
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3585
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 4

    .prologue
    .line 3842
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_0

    .line 3843
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 3845
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCaptureAfterLaunch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    .line 3847
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_2

    .line 3849
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3850
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 3851
    .local v0, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "off"

    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3852
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3853
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6FlashButton;->setValue(Ljava/lang/String;)V

    .line 3854
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3857
    .end local v0    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    .line 3858
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 3860
    :cond_2
    return-void
.end method

.method private traceDelayCaptureEvents()V
    .locals 3

    .prologue
    .line 4343
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4344
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_audio"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4356
    :cond_0
    :goto_0
    return-void

    .line 4346
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4347
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    .line 4348
    .local v0, "countTimes":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4349
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down_3s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4350
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 4351
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down_5s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4352
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4353
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down_10s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3429
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 3430
    move v0, p1

    .line 3431
    .local v0, "tmp":I
    move p1, p2

    .line 3432
    move p2, v0

    .line 3435
    .end local v0    # "tmp":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_2

    .line 3438
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 3439
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 3443
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3444
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ObjectView;->setPreviewSize(II)V

    .line 3446
    :cond_3
    return-void
.end method

.method private updateHDRPreference()V
    .locals 3

    .prologue
    .line 4173
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4174
    .local v0, "hdrMode":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    .line 4175
    .local v1, "mutexhdr":I
    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 4177
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4178
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 4184
    :goto_0
    return-void

    .line 4179
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4180
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 4182
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private updateModePreference()V
    .locals 5

    .prologue
    .line 3691
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3718
    :cond_0
    :goto_0
    return-void

    .line 3692
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    .line 3693
    .local v1, "hdr":I
    if-eqz v1, :cond_2

    .line 3695
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 3697
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 3707
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 3708
    .local v0, "effect":I
    const/16 v3, 0xd

    if-ne v3, v0, :cond_5

    .line 3709
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    goto :goto_0

    .line 3698
    .end local v0    # "effect":I
    :cond_2
    const-string v3, "pref_camera_hand_night_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3699
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_1

    .line 3700
    :cond_3
    const-string v3, "pref_camera_ubifocus_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3701
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_1

    .line 3703
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 3711
    .restart local v0    # "effect":I
    :cond_5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v2

    .line 3712
    .local v2, "index":I
    if-eq v0, v2, :cond_0

    .line 3715
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceSettingsLater()V

    goto :goto_0
.end method

.method private updateMutexModeUI(Z)V
    .locals 2
    .param p1, "done"    # Z

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 1551
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0e0182

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1558
    :cond_1
    const v0, 0x7f0e0180

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 1562
    :cond_2
    const-string v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0e013a

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x3d090

    if-gt v0, v1, :cond_3

    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1566
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1568
    :cond_4
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1625
    const-string v0, "auto"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1637
    .local v7, "flashMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/V6FlashButton;->overrideSettings(Ljava/lang/String;)V

    .line 1638
    return-void

    .end local v7    # "flashMode":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 1633
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateWarningMessage(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "hide"    # Z

    .prologue
    const/16 v1, 0x15

    .line 4135
    if-eqz p1, :cond_0

    .line 4136
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4138
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4139
    if-nez p2, :cond_1

    .line 4140
    const v0, 0x7f0e0181

    if-ne v0, p1, :cond_2

    .line 4141
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4146
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageParent()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4147
    return-void

    .line 4143
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4146
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 2707
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->cancel()V

    .line 2709
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->join()V

    .line 2710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 2711
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    :cond_0
    :goto_0
    return-void

    .line 2713
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeImage([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 892
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 893
    .local v3, "title":Ljava/lang/String;
    const-string v4, ".dng"

    invoke-static {v3, v4}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 895
    .local v1, "outstream":Ljava/io/FileOutputStream;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write image to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 897
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 898
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4, v3}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public animateSwitchCameraAfter()V
    .locals 2

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3765
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 4

    .prologue
    .line 3730
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3731
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3738
    :goto_0
    return-void

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3735
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 3736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected applyMultiShutParameters(Z)V
    .locals 0
    .param p1, "startshut"    # Z

    .prologue
    .line 1466
    return-void
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 2771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    .line 2772
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2774
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2776
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2781
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2783
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2785
    :cond_0
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 2453
    return-void
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v3, 0x0

    .line 1308
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v2, v9, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1363
    :goto_0
    return v2

    .line 1312
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1315
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 1316
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    .line 1317
    iput-object v10, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 1318
    const/4 v0, 0x0

    .line 1319
    .local v0, "loc":Landroid/location/Location;
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1321
    :cond_2
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1322
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPictureOrientation()V

    .line 1323
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1324
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1325
    .local v1, "pictureFormat":I
    const/16 v2, 0x100

    if-ne v2, v1, :cond_3

    .line 1326
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1328
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 1333
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1334
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1336
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-nez v2, :cond_4

    .line 1337
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1340
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    .line 1342
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    iget-object v7, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    const/4 v8, 0x2

    if-gt v2, v8, :cond_8

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    :goto_1
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1347
    invoke-static {}, Lcom/android/camera/Device;->isCaptureStopFaceDetection()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1348
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 1351
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1352
    iput-object v10, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    .line 1353
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1354
    iput v3, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1357
    const-string v2, "pref_qc_camera_exposuretime_key"

    const v4, 0x7f0e013a

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v4, 0x3d090

    if-gt v2, v4, :cond_6

    const v2, 0x7f0e0165

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1361
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1363
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1342
    :cond_8
    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    goto :goto_1
.end method

.method public checkActivityOrientation()V
    .locals 2

    .prologue
    .line 4165
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4167
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 4168
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 4170
    :cond_0
    return-void
.end method

.method protected closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2971
    const-string v0, "Camera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2974
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2975
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2976
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2977
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 2978
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 2979
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2980
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 2981
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 2982
    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2983
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2984
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 2986
    :cond_0
    return-void
.end method

.method protected enterMutexMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2657
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2658
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 2660
    :cond_0
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 2663
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 2666
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2667
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 2671
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0069

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2672
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 2675
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2676
    .local v0, "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_qc_camera_iso_key"

    aput-object v2, v1, v5

    aput-object v4, v1, v3

    const-string v2, "pref_qc_camera_exposuretime_key"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_face_beauty_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_focus_mode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2684
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2686
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 2687
    const v1, 0x7f0e0181

    invoke-direct {p0, v1, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2689
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2690
    :cond_5
    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2691
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2693
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2694
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2695
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2697
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2699
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2700
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 2701
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2702
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2703
    return-void
.end method

.method protected exitMutexMode()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2629
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2635
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->restoreKeptValue()V

    .line 2637
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2638
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2641
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0069

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2642
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 2645
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v4, :cond_3

    .line 2646
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2650
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 2651
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2652
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2653
    return-void

    .line 2648
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method protected exitWhiteBalanceLockMode()Z
    .locals 1

    .prologue
    .line 1641
    const/4 v0, 0x0

    return v0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 3830
    return-void
.end method

.method protected getBurstCount()I
    .locals 2

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    .line 1470
    sget v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    .line 1476
    :goto_0
    return v0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    const/4 v0, 0x7

    goto :goto_0

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-eqz v0, :cond_2

    .line 1474
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1476
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getBurstDelayTime()I
    .locals 1

    .prologue
    .line 4368
    const/4 v0, 0x0

    return v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 1483
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4022
    const-string v0, "pref_camera_manual_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method protected getMaxPictureSize()I
    .locals 2

    .prologue
    .line 942
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 943
    .local v0, "colorEffect":I
    const/16 v1, 0xa

    if-eq v1, v0, :cond_1

    .line 944
    invoke-static {}, Lcom/android/camera/Device;->isLowerEffectSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x300000

    .line 946
    :goto_0
    return v1

    .line 944
    :cond_0
    const v1, 0x79ec00

    goto :goto_0

    .line 946
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMutexHdrMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "hdr"    # Ljava/lang/String;

    .prologue
    .line 3512
    const v0, 0x7f0e01a4

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3513
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3520
    :goto_0
    return v0

    .line 3513
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 3516
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3518
    const/4 v0, 0x2

    goto :goto_0

    .line 3520
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportSceneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1376
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6FlashButton;->overrideValue(Ljava/lang/String;)V

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "off"

    .line 1382
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1379
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 1646
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 1703
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 1943
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :goto_0
    return v4

    .line 1706
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1922
    :sswitch_0
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    if-eqz v4, :cond_1

    .line 1923
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1924
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x20

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    move v4, v5

    .line 1926
    goto :goto_0

    .line 1708
    :sswitch_1
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1711
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1712
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    .line 1717
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1718
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1722
    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    move v4, v5

    .line 1724
    goto :goto_0

    .line 1713
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1714
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 1728
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onCameraPickerClicked(I)Z

    move-result v4

    goto/16 :goto_0

    .line 1731
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, v8}, Lcom/android/camera/module/CameraModule;->onThumbnailClicked(Landroid/view/View;)V

    move v4, v5

    .line 1732
    goto/16 :goto_0

    .line 1735
    :sswitch_4
    if-nez p1, :cond_5

    .line 1736
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 1737
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1738
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v6, "capture_times_shutter"

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .end local p3    # "extra1":Ljava/lang/Object;
    :cond_4
    :goto_2
    move v4, v5

    .line 1754
    goto/16 :goto_0

    .line 1740
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_5
    if-ne p1, v5, :cond_6

    .line 1741
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    goto :goto_2

    .line 1742
    :cond_6
    if-ne p1, v7, :cond_7

    .line 1743
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, p3

    .line 1744
    check-cast v3, Landroid/graphics/Point;

    .local v3, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 1745
    check-cast v0, Landroid/graphics/Point;

    .line 1746
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v4

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_2

    .line 1748
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v3    # "start":Landroid/graphics/Point;
    :cond_7
    if-ne p1, v9, :cond_4

    move-object v4, p3

    .line 1749
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4, v7}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 1750
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1751
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v6, "capture_times_shutter"

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 1757
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_5
    new-instance v2, Lcom/android/camera/module/CameraModule$4;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/CameraModule$4;-><init>(Lcom/android/camera/module/CameraModule;Ljava/lang/Object;)V

    .line 1763
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 1764
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 1765
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 1766
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1767
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 1768
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    move v4, v5

    .line 1769
    goto/16 :goto_0

    .line 1773
    .end local v2    # "r":Ljava/lang/Runnable;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    move v4, v5

    .line 1774
    goto/16 :goto_0

    .line 1778
    :sswitch_7
    if-nez p1, :cond_8

    .line 1779
    invoke-virtual {p0, v8}, Lcom/android/camera/module/CameraModule;->onReviewDoneClicked(Landroid/view/View;)V

    :goto_3
    move v4, v5

    .line 1783
    goto/16 :goto_0

    .line 1781
    :cond_8
    invoke-virtual {p0, v8}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto :goto_3

    .line 1786
    :sswitch_8
    if-nez p1, :cond_a

    .line 1787
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v4, :cond_9

    move-object v1, p3

    .line 1788
    check-cast v1, Landroid/graphics/Point;

    .line 1789
    .local v1, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .end local v1    # "p":Landroid/graphics/Point;
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_9
    :goto_4
    move v4, v5

    .line 1794
    goto/16 :goto_0

    .line 1791
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_a
    if-ne p1, v5, :cond_9

    .line 1792
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/CameraModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1798
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/V6FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 1801
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    move v4, v5

    .line 1802
    goto/16 :goto_0

    .line 1806
    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    move v4, v5

    .line 1807
    goto/16 :goto_0

    .line 1814
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 1816
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 1817
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1819
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1820
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1823
    :cond_c
    if-ne p1, v7, :cond_f

    .line 1824
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 1903
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_e

    .line 1905
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1906
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    :cond_e
    move v4, v5

    .line 1908
    goto/16 :goto_0

    .line 1825
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_f
    if-nez p1, :cond_12

    .line 1826
    const-string v4, "pref_delay_capture_mode"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1827
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    goto :goto_5

    .line 1829
    :cond_10
    const-string v4, "pref_camera_manual_mode_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1830
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v4

    const-string v6, "off"

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/V6FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 1832
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_5

    .line 1834
    :cond_12
    if-ne p1, v5, :cond_d

    .line 1835
    const-string v4, "pref_delay_capture_mode"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1837
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1838
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1d

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1839
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v4}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto :goto_5

    .line 1840
    :cond_13
    const-string v4, "pref_audio_capture"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1841
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1842
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1d

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    const-string v4, "pref_audio_capture"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1844
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    goto/16 :goto_5

    .line 1846
    :cond_14
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v4}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto/16 :goto_5

    .line 1848
    :cond_15
    const-string v4, "pref_camera_ubifocus_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1849
    const-string v4, "pref_camera_ubifocus_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1850
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto/16 :goto_5

    .line 1851
    :cond_16
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1852
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_5

    .line 1854
    :cond_17
    const-string v4, "pref_camera_hand_night_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1855
    const-string v4, "pref_camera_hand_night_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1856
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4, v9}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto/16 :goto_5

    .line 1857
    :cond_18
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1858
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_5

    .line 1860
    :cond_19
    const-string v4, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1861
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1862
    :cond_1a
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v6, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v4, v6}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto/16 :goto_5

    .line 1864
    :cond_1b
    const-string v4, "pref_camera_gradienter_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "pref_camera_tilt_shift_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "pref_camera_fisheye_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1867
    :cond_1c
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto/16 :goto_5

    .line 1869
    :cond_1d
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto/16 :goto_5

    .line 1871
    :cond_1e
    const-string v4, "pref_camera_burst_shooting_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1872
    const-string v4, "pref_camera_burst_shooting_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1873
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto/16 :goto_5

    .line 1874
    :cond_1f
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1875
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1876
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_5

    .line 1878
    :cond_20
    const-string v4, "pref_camera_gradienter_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "pref_camera_tilt_shift_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "pref_camera_fisheye_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1881
    :cond_21
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v4

    const-string v6, "pref_camera_gradienter_key"

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 1887
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 1888
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 1889
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    goto/16 :goto_5

    .line 1890
    :cond_22
    const-string v4, "pref_camera_panoramamode_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1891
    const-string v4, "pref_camera_panoramamode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1892
    invoke-direct {p0, v7}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    goto/16 :goto_5

    .line 1895
    :cond_23
    const-string v4, "pref_camera_manual_mode_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1896
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6FlashButton;->restoreKeptValue()V

    .line 1897
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 1899
    :cond_24
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto/16 :goto_5

    .line 1911
    :sswitch_c
    if-eq p1, v5, :cond_25

    if-eq p1, v9, :cond_25

    const/4 v4, 0x4

    if-eq p1, v4, :cond_25

    if-ne p1, v7, :cond_26

    .line 1915
    :cond_25
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1916
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 1917
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    :cond_26
    move v4, v5

    .line 1919
    goto/16 :goto_0

    .line 1929
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->openSettingActivity()V

    move v4, v5

    .line 1930
    goto/16 :goto_0

    .line 1933
    :sswitch_e
    if-ne p1, v7, :cond_27

    .line 1934
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    :cond_27
    move v4, v5

    .line 1936
    goto/16 :goto_0

    .line 1939
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    move v4, v5

    .line 1940
    goto/16 :goto_0

    .line 1706
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c000a -> :sswitch_0
        0x7f0c0043 -> :sswitch_3
        0x7f0c0045 -> :sswitch_4
        0x7f0c0049 -> :sswitch_5
        0x7f0c0051 -> :sswitch_6
        0x7f0c0052 -> :sswitch_1
        0x7f0c0053 -> :sswitch_9
        0x7f0c0054 -> :sswitch_a
        0x7f0c0056 -> :sswitch_2
        0x7f0c0057 -> :sswitch_7
        0x7f0c005f -> :sswitch_b
        0x7f0c0078 -> :sswitch_c
        0x7f0c007e -> :sswitch_8
        0x7f0c0082 -> :sswitch_e
        0x7f0c0088 -> :sswitch_b
        0x7f0c008b -> :sswitch_d
        0x7f0c0096 -> :sswitch_f
    .end sparse-switch
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 2426
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2449
    :goto_0
    return-void

    .line 2429
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreStatusAfterBurst()V

    .line 2430
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$5;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2448
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 4333
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDefaultManualExposure()Z
    .locals 2

    .prologue
    .line 4015
    const-string v0, "pref_qc_camera_iso_key"

    const v1, 0x7f0e00b9

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0e013a

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4028
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isDetectedHHT()Z
    .locals 1

    .prologue
    .line 4191
    const/4 v0, 0x0

    return v0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    return v0
.end method

.method protected isFaceBeautyOn()Z
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method protected isFrontMirror()Z
    .locals 2

    .prologue
    .line 4150
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4156
    :goto_0
    return v1

    .line 4152
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFrontMirror(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 4153
    .local v0, "frontMirror":Ljava/lang/String;
    const v1, 0x7f0e018a

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4154
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    goto :goto_0

    .line 4156
    :cond_1
    const v1, 0x7f0e018b

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 4161
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 2

    .prologue
    .line 3991
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 3992
    .local v0, "focusMode":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "edof"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 4188
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 4002
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 3956
    const/4 v0, 0x0

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 1392
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiCapture()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1407
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return v2

    .line 1412
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v4}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1413
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0e0124

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1418
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1419
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1424
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1425
    .local v1, "pictureFormat":I
    const/4 v0, 0x0

    .line 1426
    .local v0, "loc":Landroid/location/Location;
    const/16 v4, 0x100

    if-ne v4, v1, :cond_4

    .line 1427
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1429
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1430
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 1431
    sget-boolean v4, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1432
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1434
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v4, v5}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1435
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1438
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareMultiCapture()V

    .line 1440
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1441
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->saveStatusBeforeBurst()V

    .line 1443
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1445
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    if-eqz v4, :cond_6

    .line 1446
    iput v3, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1451
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 1452
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1454
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    invoke-direct {v5, p0, v9}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v7, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    move v2, v3

    .line 1459
    goto/16 :goto_0

    .line 1448
    :cond_6
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1449
    iput-object v9, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 1

    .prologue
    .line 2314
    const/4 v0, 0x0

    return v0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x1

    return v0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 1

    .prologue
    .line 2310
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2741
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 2742
    packed-switch p1, :pswitch_data_0

    .line 2759
    :goto_0
    return-void

    .line 2744
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2745
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 2746
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2747
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2748
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2751
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2752
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->finish()V

    .line 2753
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2754
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2742
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 2836
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2838
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2840
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2882
    :cond_0
    :goto_0
    return v1

    .line 2844
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v2, v3, :cond_0

    .line 2848
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2852
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2856
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2858
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->onBack()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6EffectSettingPage;->onBack()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v2, v3, :cond_0

    .line 2865
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2866
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v0

    .line 2867
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2868
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 2870
    :cond_3
    if-nez v0, :cond_0

    .line 2874
    .end local v0    # "result":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2875
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 2879
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2882
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 3609
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 3610
    :cond_0
    const/4 v0, 0x0

    .line 3627
    :goto_0
    return v0

    .line 3612
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to copy texture. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3616
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 3621
    :goto_1
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 3623
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3624
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 3625
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3626
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    goto :goto_0

    .line 3618
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 3619
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1503
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 1504
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1505
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 1506
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetCameraSettingsIfNeed()V

    .line 1507
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 1510
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 1511
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 1512
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 1513
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1515
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->createContentView()V

    .line 1516
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 1517
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->initialize()V

    .line 1521
    :cond_0
    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 1522
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 1523
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 1524
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    .line 1525
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 1529
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V

    .line 1534
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1536
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1537
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setupCaptureParams()V

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    .line 1541
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeMutexMode()V

    .line 1543
    new-instance v0, Lcom/android/camera/AudioCaptureManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/AudioCaptureManager;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    .line 1545
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 1546
    return-void

    :cond_2
    move v0, v1

    .line 1516
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3407
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 3408
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->hideToast()V

    .line 3411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 3412
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 780
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 804
    :cond_1
    :goto_0
    return-void

    .line 784
    :cond_2
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v0

    .line 787
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_3

    .line 789
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V

    goto :goto_0

    .line 792
    :cond_3
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    goto :goto_0
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 4008
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4009
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    .line 4011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2900
    sparse-switch p1, :sswitch_data_0

    .line 2925
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2902
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2903
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 2908
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2909
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 2914
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2918
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2900
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2930
    packed-switch p1, :pswitch_data_0

    .line 2944
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2933
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 2930
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2188
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2193
    :goto_0
    return-void

    .line 2189
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onSingleTapUp(II)V

    .line 2190
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2191
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_long_press"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onObjectStable()V
    .locals 3

    .prologue
    .line 4039
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4041
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 4042
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_capture_when_stable_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4043
    const-string v0, "Camera"

    const-string v1, "Object is Stable, call onShutterButtonClick to capture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 4045
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_t2t"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4048
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1989
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    .line 1990
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1991
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setOrientation(I)V

    .line 1993
    :cond_0
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2520
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 2521
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 2523
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2524
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 2525
    invoke-direct {p0, v5}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 2529
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_3

    .line 2530
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2531
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2533
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2534
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 2536
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 2539
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2540
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 2541
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 2542
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 2545
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->waitCameraStartUpThread()V

    .line 2549
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v2, :cond_4

    .line 2550
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2553
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 2555
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2556
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 2561
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 2563
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 2565
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v2, :cond_5

    .line 2566
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 2567
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->release()V

    .line 2568
    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2571
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-eqz v2, :cond_6

    .line 2572
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2573
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 2576
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_7

    .line 2577
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2581
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2582
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2583
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2584
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2585
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2586
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2587
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2588
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2589
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2590
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2591
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2592
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2593
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2594
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2595
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2596
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2597
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2598
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2599
    iput v4, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 2600
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsRecreateCameraScreenNail:Z

    .line 2601
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2602
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 2603
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetScreenOn()V

    .line 2604
    invoke-direct {p0, v4, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2607
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 2608
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 2609
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 2610
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v2, :cond_9

    .line 2612
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v1

    .line 2613
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    .line 2614
    .local v0, "h":I
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 2615
    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 2617
    :cond_8
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 2621
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_9
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v2, v6, :cond_a

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v2, :cond_a

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_a

    .line 2623
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    .line 2625
    :cond_a
    return-void

    .line 2558
    :cond_b
    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 2559
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3724
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->animateSwitchCameraBefore()V

    .line 3725
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3726
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2474
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 2475
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2476
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2477
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 2479
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    .line 2481
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_8

    .line 2483
    :cond_5
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 2484
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 2488
    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 2490
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_7

    .line 2491
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 2496
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_9

    .line 2497
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2501
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 2503
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2505
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2506
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2507
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2508
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    goto :goto_0

    .line 2485
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    if-eqz v0, :cond_6

    .line 2486
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resumePreview()V

    goto :goto_1

    .line 2499
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeSecondTime()V

    goto :goto_2
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 2469
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 2470
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2071
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 2072
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    .line 2074
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2076
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 2082
    :goto_0
    return-void

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2080
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2087
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    .line 2088
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1974
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1985
    :goto_0
    return-void

    .line 1976
    :cond_0
    const-string v0, "pref_delay_capture_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    goto :goto_0

    .line 1980
    :cond_1
    const-string v0, "pref_camera_focus_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1981
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 1983
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 3590
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3594
    :goto_0
    return-void

    .line 3591
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 3592
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3593
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2253
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 2255
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2258
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2259
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2260
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2261
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    .line 2262
    .local v0, "countDownTime":I
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    .line 2263
    if-le v0, v5, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 2264
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    .line 2303
    .end local v0    # "countDownTime":I
    :cond_1
    :goto_0
    return-void

    .line 2267
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2269
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2270
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2272
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2273
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2278
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2279
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2281
    :cond_4
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v5, :cond_5

    .line 2282
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needAutoFocusBeforeCapture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 2286
    :cond_5
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v5, :cond_6

    .line 2287
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2289
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2290
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 2294
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    .line 2295
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2296
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 2297
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->prepareCapture(ZI)V

    .line 2298
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 2299
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2300
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 3
    .param p1, "pressed"    # Z
    .param p2, "fromWhat"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 2196
    if-nez p1, :cond_5

    .line 2197
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-eqz v0, :cond_1

    .line 2198
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    .line 2245
    :cond_0
    :goto_0
    return-void

    .line 2201
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2202
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2205
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->cancelMultiSnapPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2208
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_3

    .line 2209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    goto :goto_0

    .line 2212
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    if-eqz v0, :cond_6

    .line 2213
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 2214
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2215
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 2217
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 2218
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    goto :goto_0

    .line 2223
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2224
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    .line 2225
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "burst_times"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2229
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2235
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    :cond_7
    if-eqz p1, :cond_9

    .line 2238
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSwitchZeroShotMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2239
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2241
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto/16 :goto_0

    .line 2243
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto/16 :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2318
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2357
    :cond_0
    :goto_0
    return v0

    .line 2319
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-nez v2, :cond_2

    .line 2326
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2327
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2328
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    goto :goto_0

    .line 2330
    :cond_2
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 2335
    goto :goto_0

    .line 2337
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 2338
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 2339
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2340
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 2341
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2342
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2343
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2344
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    goto/16 :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2790
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 2795
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 2796
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 2797
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 2832
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2809
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2812
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2818
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2821
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_3

    .line 2822
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2824
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2825
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showObjectTrackToastIfNeeded()V

    .line 2826
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    .line 2829
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2830
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2050
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2052
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2058
    :cond_1
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 2

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3770
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2062
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2063
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 2066
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3774
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 3775
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 3776
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3497
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3498
    const-string v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3499
    const-string v1, "IsCaptureIntent"

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3500
    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3502
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3503
    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3505
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 3506
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 3508
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3509
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 3
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2949
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2968
    :cond_0
    :goto_0
    return-void

    .line 2950
    :cond_1
    if-nez p1, :cond_3

    .line 2951
    if-eqz p2, :cond_2

    .line 2952
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 2953
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 2954
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2955
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 2958
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 2959
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    goto :goto_0

    .line 2962
    :cond_3
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    if-nez v0, :cond_0

    .line 2963
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    .line 2964
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 2965
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    goto :goto_0
.end method

.method protected playAnimationBeforeCapture()Z
    .locals 1

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNeedComposed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isBigForBeautify(Landroid/hardware/Camera$Size;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1497
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playCameraSound(I)V

    .line 1499
    :cond_1
    return-void
.end method

.method protected prepareCapture()V
    .locals 0

    .prologue
    .line 1480
    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->applyMultiShutParameters(Z)V

    .line 1464
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 14

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v4, 0x1f4

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 3968
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3978
    :goto_0
    return v13

    .line 3971
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3972
    .local v0, "now":J
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v2, v12, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->getLastActionTime()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSoundPlayTime()J

    move-result-wide v8

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v8, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .local v12, "ready":Z
    :goto_1
    move v13, v12

    .line 3978
    goto :goto_0

    .end local v12    # "ready":Z
    :cond_3
    move v12, v13

    .line 3972
    goto :goto_1
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSettingView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1692
    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 0

    .prologue
    .line 1403
    return-void
.end method

.method protected resetMetaDataManager()V
    .locals 0

    .prologue
    .line 1946
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3818
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDelayedCaptureMessage(II)V
    .locals 3
    .param p1, "period"    # I
    .param p2, "times"    # I

    .prologue
    const/16 v2, 0x14

    .line 3961
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3962
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3963
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3965
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 4199
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4200
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1389
    :cond_0
    return-void
.end method

.method protected setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3457
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 3458
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 3461
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 3462
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 3463
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 3466
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3467
    return-void
.end method

.method protected setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 3472
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 3473
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 3476
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 3493
    :cond_0
    :goto_0
    return-void

    .line 3478
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3479
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3480
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 3481
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 3482
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 3483
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateSceneModeUI()V

    .line 3484
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3485
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 3486
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    goto :goto_0

    .line 3488
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3489
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setCameraState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1287
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 1288
    packed-switch p1, :pswitch_data_0

    .line 1298
    :goto_0
    :pswitch_0
    return-void

    .line 1292
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 1295
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 1288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1488
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1489
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1491
    :cond_0
    return-void
.end method

.method protected setTimeWatermarkIfNeed()V
    .locals 2

    .prologue
    .line 4203
    const-string v1, "on"

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getTimeWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setTimeWatermarkValue(Ljava/lang/String;)V

    .line 4206
    :cond_0
    return-void
.end method

.method protected setupPreview()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    .line 906
    .local v0, "burstEnd":Z
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 921
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-eqz v1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1a

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 923
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 925
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 926
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 935
    :goto_1
    return-void

    .line 912
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_3

    .line 913
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 915
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/camera/FocusManager;->resetAfterCapture(Z)V

    .line 916
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 917
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 918
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 915
    goto :goto_2

    .line 928
    :cond_6
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v1

    if-lez v1, :cond_7

    .line 929
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 931
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 932
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 747
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 754
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 755
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 756
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 757
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto :goto_0
.end method

.method public startObjectTracking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4064
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 4089
    :cond_0
    :goto_0
    return-void

    .line 4069
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4070
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 4071
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 4072
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 4073
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4076
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4077
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4079
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 4080
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 4083
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4085
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4086
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startObjectTracking rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    goto/16 :goto_0
.end method

.method protected startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2997
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v0, :cond_1

    .line 3049
    :cond_0
    :goto_0
    return-void

    .line 3001
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3002
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 3005
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3009
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_4

    .line 3011
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3012
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 3016
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 3017
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3019
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_6

    .line 3022
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3023
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3025
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 3028
    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFoundFace:Z

    .line 3030
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3031
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3034
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3035
    const-string v0, "Camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 3037
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 3038
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3039
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3046
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_0

    .line 3047
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public stopFaceDetection(Z)V
    .locals 3
    .param p1, "clearFaces"    # Z

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 768
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_3

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 772
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 773
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 774
    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto :goto_0
.end method

.method public stopObjectTracking(Z)V
    .locals 4
    .param p1, "restartFD"    # Z

    .prologue
    const/16 v3, 0x8

    .line 4092
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restartFD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    .line 4094
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 4095
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4096
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4122
    :cond_0
    :goto_0
    return-void

    .line 4100
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 4101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 4102
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4103
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 4104
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 4107
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 4109
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4112
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 4113
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4116
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4117
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4119
    :cond_3
    if-eqz p1, :cond_0

    .line 4120
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_0
.end method

.method protected trackPictureTaken(IZIIZ)V
    .locals 4
    .param p1, "takenNum"    # I
    .param p2, "burst"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "location"    # Z

    .prologue
    .line 4301
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4302
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_normal_hdr"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4326
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    .line 4327
    add-int/lit8 p1, p1, -0x1

    .line 4329
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZIIZ)V

    .line 4330
    return-void

    .line 4303
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4304
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_live_hdr"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4305
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4306
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_hht"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4307
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4308
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_ubfocus"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4310
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getStillBeautify()Ljava/lang/String;

    move-result-object v1

    .line 4311
    .local v1, "fb":Ljava/lang/String;
    const v2, 0x7f0e0165

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4312
    .local v0, "closeFB":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4313
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_beauty"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4314
    :cond_7
    const-string v2, "pref_camera_manual_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4315
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_manual"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4316
    :cond_8
    const-string v2, "pref_camera_gradienter_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4317
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_gradienter"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4318
    :cond_9
    const-string v2, "pref_camera_tilt_shift_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4319
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_tilt_shift"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4320
    :cond_a
    const-string v2, "pref_camera_fisheye_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4321
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "capture_nums_fisheye"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4322
    :cond_b
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isEffectPageSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4323
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3983
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 3984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    .line 3985
    return-void
.end method

.method protected updateASD(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1948
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 3076
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 3077
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 3078
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3079
    .local v1, "max":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 3082
    .end local v1    # "max":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 3086
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3087
    .local v2, "vstabSupported":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3088
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 30

    .prologue
    .line 3093
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 3097
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3101
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSize()I

    move-result v27

    invoke-static/range {v25 .. v27}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 3106
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v18

    .line 3108
    .local v18, "pictureSize":Lcom/android/camera/PictureSize;
    if-eqz v18, :cond_4

    .line 3109
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pictureSize = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 3111
    .local v15, "oldPictureSize":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 3112
    :cond_2
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3114
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3119
    .end local v15    # "oldPictureSize":Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v18, :cond_5

    .line 3120
    const-string v25, "Camera"

    const-string v26, "get null pictureSize"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v19

    .line 3123
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)D

    move-result-wide v26

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 3125
    .local v16, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3126
    .local v17, "original":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v20

    .line 3127
    .local v20, "style":I
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 3128
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 3133
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 3134
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v25, v0

    if-eqz v25, :cond_23

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v25

    if-nez v25, :cond_23

    .line 3135
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 3140
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3143
    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    .line 3144
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    .line 3146
    const/16 v25, 0x15

    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_a

    .line 3150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v21

    .line 3151
    .local v21, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v18

    .line 3152
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 3154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3155
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 3156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 3159
    :cond_9
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Thumbnail size is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    .end local v21    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 3165
    const-string v25, "hdr"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 3166
    const-string v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    const-string v25, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 3168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string v26, "auto"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3178
    :cond_b
    :goto_1
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mSceneMode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " getMutexMode="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 3181
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mSceneMode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " pas="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3198
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/camera/CameraSettings;->getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;

    move-result-object v12

    .line 3199
    .local v12, "jpegQuality":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "jpegQuality : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-static {v12}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v23

    .line 3208
    .local v23, "value":I
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EV : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v13

    .line 3210
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v14

    .line 3211
    .local v14, "min":I
    move/from16 v0, v23

    if-lt v0, v14, :cond_27

    move/from16 v0, v23

    if-gt v0, v13, :cond_27

    .line 3212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3218
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v25

    if-eqz v25, :cond_28

    .line 3219
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    .line 3220
    .local v7, "effect":I
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Shader color effect value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 3223
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    if-nez v25, :cond_d

    .line 3224
    new-instance v25, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 3228
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->prepareEffectRender(I)V

    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    .line 3243
    .end local v7    # "effect":I
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_autoexposure_key"

    const v27, 0x7f0e00fc

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3246
    .local v5, "autoExposure":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "autoExposure value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/module/CameraModule;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_antibanding_key"

    const v27, 0x7f0e00ca

    invoke-static/range {v27 .. v27}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3254
    .local v4, "antiBanding":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "antiBanding value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 3259
    :cond_f
    const-string v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_10

    const-string v25, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 3262
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_11

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 3265
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v25

    if-eqz v25, :cond_18

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v10

    .line 3268
    .local v10, "flashModeOld":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v9

    .line 3269
    .local v9, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 3270
    .local v22, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3274
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v25

    if-eqz v25, :cond_13

    const-string v25, "off"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    const-string v25, "torch"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 3276
    const-string v25, "off"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string v26, "off"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 3279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3285
    :cond_13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v25

    if-eqz v25, :cond_14

    .line 3286
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    move-object/from16 v25, v0

    if-nez v25, :cond_14

    .line 3291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3294
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_29

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_29

    const-string v11, "auto"

    .line 3297
    .local v11, "focusMode":Ljava/lang/String;
    :goto_5
    if-eqz v11, :cond_17

    .line 3298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3299
    const-string v25, "macro"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_16

    const-string v25, "manual"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 3301
    :cond_16
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3304
    :cond_17
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Focus mode value = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v10    # "flashModeOld":Ljava/lang/String;
    .end local v11    # "focusMode":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    const-string v25, "pref_camera_whitebalance_key"

    const v26, 0x7f0e0071

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3311
    .local v24, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 3313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3343
    .end local v24    # "whiteBalance":Ljava/lang/String;
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3347
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 3352
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    const-string v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 3354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3361
    :cond_1c
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v25

    if-nez v25, :cond_1d

    const-string v25, "pref_camera_gradienter_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1d

    const-string v25, "pref_camera_tilt_shift_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2f

    :cond_1d
    const/4 v8, 0x0

    .line 3369
    .local v8, "faceDetection":Z
    :goto_8
    if-eqz v8, :cond_30

    .line 3370
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_1e

    .line 3371
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 3372
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3381
    :cond_1e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getZoomValue()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3385
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_31

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 3389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/camera/CameraSettings;->isScanQRCode(Landroid/content/SharedPreferences;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    .line 3390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 3391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 3392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v25, v0

    if-eqz v25, :cond_20

    sget-boolean v25, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v25, :cond_21

    .line 3396
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(II)V

    .line 3400
    :cond_21
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 3401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3403
    :cond_22
    return-void

    .line 3137
    .end local v4    # "antiBanding":Ljava/lang/String;
    .end local v5    # "autoExposure":Ljava/lang/String;
    .end local v8    # "faceDetection":Z
    .end local v12    # "jpegQuality":Ljava/lang/String;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v23    # "value":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x12

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3172
    :cond_24
    const-string v25, "pref_camera_scenemode_setting_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_25

    .line 3173
    const-string v25, "auto"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 3175
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_scenemode_key"

    const v27, 0x7f0e00a9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 3191
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 3192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_c

    .line 3193
    const-string v25, "auto"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 3214
    .restart local v12    # "jpegQuality":Ljava/lang/String;
    .restart local v13    # "max":I
    .restart local v14    # "min":I
    .restart local v23    # "value":I
    :cond_27
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "invalid exposure range: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3233
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_coloreffect_key"

    const v27, 0x7f0e0081

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3236
    .local v6, "colorEffect":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Color effect value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3294
    .end local v6    # "colorEffect":Ljava/lang/String;
    .restart local v4    # "antiBanding":Ljava/lang/String;
    .restart local v5    # "autoExposure":Ljava/lang/String;
    .restart local v9    # "flashMode":Ljava/lang/String;
    .restart local v10    # "flashModeOld":Ljava/lang/String;
    .restart local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 3315
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v10    # "flashModeOld":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "whiteBalance":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v24

    .line 3316
    if-nez v24, :cond_19

    .line 3317
    const-string v25, "auto"

    goto/16 :goto_6

    .line 3321
    .end local v24    # "whiteBalance":Ljava/lang/String;
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v9

    .line 3322
    .restart local v9    # "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 3323
    .restart local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 3324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3327
    :cond_2c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v25

    if-eqz v25, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 3328
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    move-object/from16 v25, v0

    if-nez v25, :cond_2d

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3336
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    const-string v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3356
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_7

    .line 3361
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_facedetection_key"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090007

    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_8

    .line 3375
    .restart local v8    # "faceDetection":Z
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    .line 3376
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3377
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_9

    .line 3385
    :cond_31
    const/16 v25, 0x0

    goto/16 :goto_a
.end method

.method protected updateExitButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 1574
    :cond_0
    return-void
.end method

.method protected updateFaceView(ZZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x23

    .line 739
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 743
    return-void

    :cond_1
    move v2, v1

    .line 742
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
