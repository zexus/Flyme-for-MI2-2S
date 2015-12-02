.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/BaseModule;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/module/VideoModule$LoadThumbnailTask;,
        Lcom/android/camera/module/VideoModule$SavingTask;,
        Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/VideoModule$MainHandler;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z

.field private static final VIDEO_MIN_SINGLE_FILE_SIZE:J


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseFileName:Ljava/lang/String;

.field private mCameraDisplayOrientation:I

.field private mCaptureTimeLapse:Z

.field private mContinuousFocusSupported:Z

.field private volatile mCurrentFileNumber:I

.field private mCurrentShowIndicator:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field protected mHfr:Ljava/lang/String;

.field private mInStartingFocusRecording:Z

.field private mIsFromStop:Z

.field private mIsTouchFocused:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
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

.field protected mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private volatile mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingPaused:Z

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mPauseClickTime:J

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreviewing:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mRecorderBusy:Z

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mResetEffect:Z

.field protected mRestartPreview:Z

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mSavingResult:Z

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSnapshotInProgress:Z

.field private mSwitchingCamera:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTouchFocusStartingTime:J

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field protected mVideoHeight:I

.field private mVideoRecordedDuration:J

.field private mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

.field protected mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 147
    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 179
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 164
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 185
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    .line 188
    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 191
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 217
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 227
    new-instance v0, Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    .line 232
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 233
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 244
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 246
    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    .line 248
    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 249
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 408
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 671
    new-instance v0, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 2149
    new-instance v0, Lcom/android/camera/module/VideoModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$9;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    .line 2947
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/VideoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->showUserMsg(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showStoppingUI()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/module/VideoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/module/VideoModule;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->subStopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$2604(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Lcom/android/camera/module/VideoModule$SavingTask;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showAlert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/module/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/VideoModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private addVideoToMediaStore(Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1611
    const/4 v1, 0x0

    .line 1612
    .local v1, "fail":Z
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v4, :cond_1

    .line 1613
    const-string v4, "_size"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1616
    const-string v4, "duration"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1618
    :try_start_0
    const-string v4, "_data"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, "finalName":Ljava/lang/String;
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-lez v4, :cond_0

    .line 1620
    const-string v4, "_%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1621
    .local v3, "postfix":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1622
    const-string v4, "_data"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const-string v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const-string v4, "_display_name"

    const-string v5, "_display_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    .end local v3    # "postfix":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1629
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1633
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1634
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1635
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1637
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    .end local v2    # "finalName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 1631
    .restart local v2    # "finalName":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "_data"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1638
    .end local v2    # "finalName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "videocamera"

    const-string v5, "failed to add video to media store"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1643
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1644
    const/4 v1, 0x1

    .line 1646
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 2174
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 2177
    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 2180
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 2183
    :cond_0
    return-void
.end method

.method private autoFocus(IIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focusWidth"    # I
    .param p4, "focusHeight"    # I
    .param p5, "focusType"    # I

    .prologue
    .line 2898
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus mVideoFocusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_7

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_7

    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    .line 2902
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2903
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    .line 2905
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2906
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2909
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    .line 2910
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2912
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    .line 2914
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_5

    .line 2915
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 2917
    :cond_5
    const/4 v0, 0x3

    if-ne p5, v0, :cond_6

    .line 2918
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 2919
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2921
    :cond_7
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2877
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2878
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 2879
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2881
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2882
    .local v0, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "macro"

    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2883
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "macro"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2884
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2887
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_1

    .line 2888
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2890
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_2

    .line 2891
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2893
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2895
    return-void
.end method

.method private checkCallingState()Z
    .locals 3

    .prologue
    .line 3260
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3261
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    const v1, 0x7f0e01bf

    const v2, 0x7f0e01c0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 3263
    const/4 v0, 0x0

    .line 3265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1385
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1386
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1391
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1102
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1105
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_0
    return-void

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1110
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1112
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1113
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1114
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1115
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3030
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3032
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3038
    :cond_0
    return-void

    .line 3033
    :catch_0
    move-exception v0

    .line 3034
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private computePopupTransY()I
    .locals 4

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v1

    .line 1884
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1885
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1887
    .local v0, "bottomMargin":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1889
    .end local v0    # "bottomMargin":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 3008
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3009
    const-string v0, ".mp4"

    .line 3011
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 3001
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3002
    const-string v0, "video/mp4"

    .line 3004
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 435
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-gtz v2, :cond_0

    .line 436
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 437
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e00d3

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 441
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 443
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteCurrentVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1654
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1656
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1657
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v1}, Lcom/android/camera/Util;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1659
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1663
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1666
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1669
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1371
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1373
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1374
    const/4 v0, -0x1

    .line 1375
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1379
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1380
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1381
    return-void

    .line 1377
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 1563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1564
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1566
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1567
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1568
    .local v4, "mime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1569
    .local v5, "path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1570
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1571
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1574
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1580
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 1581
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1582
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1584
    :cond_0
    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1585
    const-string v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 12

    .prologue
    .line 807
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 808
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "slow"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 809
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 810
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    .line 843
    :goto_0
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void

    .line 811
    :cond_0
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    .line 812
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 813
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 814
    :cond_1
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 817
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 818
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 821
    :cond_3
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 822
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 823
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 824
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 826
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 827
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 828
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_4

    .line 829
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 836
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v6, :cond_6

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    :goto_2
    invoke-static {v8, v5, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 840
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 841
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    .line 836
    .end local v1    # "optimalSize":Landroid/hardware/Camera$Size;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v6, v6

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v9

    div-double/2addr v6, v10

    goto :goto_2
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1589
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1591
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1592
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1599
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1601
    :goto_0
    return-wide v2

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "videocamera"

    const-string v3, "IllegalArgumentException when getDuration()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1601
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1596
    :catch_1
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "videocamera"

    const-string v3, "RuntimeException when getDuration()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1599
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method private getSpeedRecordVideoLength(JD)J
    .locals 7
    .param p1, "deltaMs"    # J
    .param p3, "timeBetweenFrameMs"    # D

    .prologue
    .line 2285
    long-to-double v2, p1

    div-double v0, v2, p3

    .line 2286
    .local v0, "numberOfFrames":D
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2081
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2082
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2084
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 2085
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2086
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2087
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2088
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2089
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->setEnabled(Z)V

    .line 2090
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2091
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2584
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    .line 2587
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    .line 2588
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    .line 2590
    return-void

    :cond_0
    move v0, v2

    .line 2584
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2587
    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    .line 2570
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    .line 2571
    .local v1, "orientation":I
    new-instance v4, Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v6

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2576
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2577
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2578
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2579
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 2580
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2581
    return-void

    .line 2571
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 0

    .prologue
    .line 2618
    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3148
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 3149
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 3150
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3151
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 3152
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3153
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method private initializeRecorder()V
    .locals 24

    .prologue
    .line 1395
    const-string v18, "videocamera"

    const-string v19, "initializeRecorder"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1545
    :goto_0
    return-void

    .line 1399
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1400
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1402
    .local v12, "myExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 1404
    const-wide/16 v14, 0x0

    .line 1405
    .local v14, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    if-eqz v12, :cond_2

    .line 1407
    const-string v18, "output"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 1408
    .local v17, "saveUri":Landroid/net/Uri;
    if-eqz v17, :cond_1

    .line 1410
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1412
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    :cond_1
    :goto_1
    const-string v18, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1420
    .end local v17    # "saveUri":Landroid/net/Uri;
    :cond_2
    new-instance v18, Landroid/media/MediaRecorder;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1426
    const-string v18, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1432
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/CamcorderProfile;->duration:I

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1442
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_audio_focus_key"

    const v20, 0x7f0e0195

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1451
    .local v4, "audioFocus":Ljava/lang/String;
    :goto_3
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set AudioParam camcorder_mode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "camcorder_mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1455
    .end local v4    # "audioFocus":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v13

    .line 1456
    .local v13, "quality":I
    sget-boolean v18, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v18, :cond_4

    const-string v18, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const v19, 0x3d0900

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1459
    :cond_4
    const-string v18, "android.intent.extra.videoQuality"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1460
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const v19, 0x7a1200

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1467
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const-wide v20, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1471
    :cond_6
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 1472
    .local v9, "loc":Landroid/location/Location;
    if-eqz v9, :cond_7

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1481
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1489
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v18

    const-wide/32 v20, 0x3200000

    sub-long v10, v18, v20

    .line 1490
    .local v10, "maxFileSize":J
    const-wide v18, 0xdac00000L

    cmp-long v18, v18, v10

    if-gez v18, :cond_8

    .line 1491
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "need reduce , now maxFileSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-wide v10, 0xdac00000L

    .line 1494
    :cond_8
    sget-wide v18, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v18, v10, v18

    if-gez v18, :cond_9

    .line 1495
    sget-wide v10, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 1497
    :cond_9
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_a

    cmp-long v18, v14, v10

    if-gez v18, :cond_a

    .line 1498
    move-wide v10, v14

    .line 1501
    :cond_a
    :try_start_1
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "maxFileSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1510
    :goto_6
    const-string v18, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    .line 1521
    :goto_7
    const/16 v16, 0x0

    .line 1522
    .local v16, "rotation":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v19, v0

    aget-object v7, v18, v19

    .line 1523
    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 1524
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 1525
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    .line 1532
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1536
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1413
    .end local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v9    # "loc":Landroid/location/Location;
    .end local v10    # "maxFileSize":J
    .end local v13    # "quality":I
    .end local v16    # "rotation":I
    .restart local v17    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1415
    .local v6, "ex":Ljava/io/FileNotFoundException;
    const-string v18, "videocamera"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1429
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    .end local v17    # "saveUri":Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_2

    .line 1449
    :cond_c
    const v18, 0x7f0e019b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "audioFocus":Ljava/lang/String;
    goto/16 :goto_3

    .line 1462
    .end local v4    # "audioFocus":Ljava/lang/String;
    .restart local v13    # "quality":I
    :cond_d
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const v19, 0xe4e1c0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_4

    .line 1484
    .restart local v9    # "loc":Landroid/location/Location;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1513
    .restart local v10    # "maxFileSize":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    goto/16 :goto_7

    .line 1527
    .restart local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v16    # "rotation":I
    :cond_10
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    goto/16 :goto_8

    .line 1530
    :cond_11
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v16, v0

    goto/16 :goto_8

    .line 1537
    :catch_1
    move-exception v5

    .line 1538
    .local v5, "e":Ljava/io/IOException;
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "prepare failed for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1540
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 1503
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v16    # "rotation":I
    :catch_2
    move-exception v18

    goto/16 :goto_6
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 1605
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1606
    .local v0, "sBuffer":Ljava/lang/StringBuffer;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1607
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAudioFocusPopupVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "popup"    # Landroid/view/View;

    .prologue
    .line 1875
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1876
    check-cast p1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    .end local p1    # "popup":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1877
    .local v0, "popupKey":Ljava/lang/String;
    const-string v1, "pref_audio_focus_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1879
    .end local v0    # "popupKey":Ljava/lang/String;
    :goto_0
    return v1

    .restart local p1    # "popup":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSelectingCapturedVideo()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoProcessing()Z
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2233
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2234
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2235
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2229
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2238
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2239
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2240
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2241
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2242
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2244
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2247
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2248
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2249
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2251
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2253
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2257
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2258
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2260
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2261
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2264
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2265
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2267
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2270
    if-eqz p2, :cond_5

    .line 2271
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2272
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2273
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2274
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2276
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2279
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/view/View;IIII)V

    .line 3016
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3017
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 3018
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 3021
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 3024
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3025
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

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

    .line 3027
    :cond_1
    return-void
.end method

.method private onPreviewStart()V
    .locals 4

    .prologue
    const/16 v1, 0xe

    .line 1300
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->startPreviewDone()V

    .line 1303
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 1304
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 1305
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1310
    :cond_0
    return-void
.end method

.method private onRestartVideoRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1765
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    .line 1766
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1767
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1768
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    .line 1770
    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1161
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 1162
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1164
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restorePreferences()V

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStopVideoRecording(Z)V
    .locals 0
    .param p1, "sync"    # Z

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoOnPause()V

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 6

    .prologue
    .line 3216
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    .line 3218
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez v1, :cond_0

    .line 3220
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3224
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 3225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 3226
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3227
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 3228
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 3230
    :cond_0
    return-void

    .line 3221
    :catch_0
    move-exception v0

    .line 3222
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "videocamera"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 5

    .prologue
    .line 848
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    const/4 v0, 0x1

    .line 853
    .local v0, "uiStyle":I
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v0, v1, :cond_0

    .line 854
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 855
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e0195

    .line 1548
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1550
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cleanupEmptyFile()V

    .line 1551
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1552
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1553
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1555
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore AudioParam camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camcorder_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1559
    :cond_1
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1560
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 3270
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3271
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 3272
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 3273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    .line 3274
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2988
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2989
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2991
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2992
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2997
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return v1

    .line 2996
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    .line 2997
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2223
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2224
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2225
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 8

    .prologue
    .line 860
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v1, v2, v3

    .line 861
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 864
    .local v0, "degrees":I
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(D)V

    .line 872
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2660
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->reloadPreference()V

    .line 2661
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 2662
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2663
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    .line 1040
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    .line 1041
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerSimple;->setDisplayOrientation(I)V

    .line 1044
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2054
    const/4 v0, 0x0

    .line 2055
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 2056
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2062
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2065
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v1

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v5

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v0, v4, v1}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2067
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2070
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2072
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 2073
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 2074
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2075
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2076
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2077
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2078
    return-void

    .line 2058
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2059
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 2065
    goto :goto_1
.end method

.method private showFirstUseHintIfNeeded()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2773
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2778
    :cond_1
    return-void
.end method

.method private showRecordingUI(Z)V
    .locals 14
    .param p1, "recording"    # Z

    .prologue
    const-wide/16 v12, 0xc8

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x64

    const/4 v8, 0x1

    .line 1893
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v2

    .line 1894
    .local v2, "popup":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->isAudioFocusPopupVisible(Landroid/view/View;)Z

    move-result v0

    .line 1895
    .local v0, "isAudioFocusPopupShown":Z
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v1

    .line 1896
    .local v1, "isFullScreen":Z
    if-eqz p1, :cond_4

    .line 1897
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v5

    const v6, 0x7f020129

    invoke-virtual {v5, v6, v12, v13}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 1898
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    if-eqz v0, :cond_2

    .line 1900
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6PreviewPage;->showPopupWithoutExitView()V

    .line 1901
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPopupParentLayout()Landroid/view/ViewGroup;

    move-result-object v3

    .line 1903
    .local v3, "popupParentLayout":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1904
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->computePopupTransY()I

    move-result v4

    .line 1905
    .local v4, "transY":I
    int-to-float v5, v4

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1907
    .end local v4    # "transY":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1908
    check-cast v2, Lcom/android/camera/ui/GridSettingTextPopup;

    .end local v2    # "popup":Landroid/view/View;
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/GridSettingTextPopup;->shrink(I)V

    .line 1914
    .end local v3    # "popupParentLayout":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    .line 1915
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 1917
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v5

    new-instance v6, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v6, p0}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/V6SettingsStatusBar;->animateOut(Ljava/lang/Runnable;)V

    .line 1924
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v5

    new-instance v6, Lcom/android/camera/module/VideoModule$5;

    invoke-direct {v6, p0}, Lcom/android/camera/module/VideoModule$5;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v5, v6, v9, v8}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1937
    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_3

    .line 1938
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v5

    invoke-virtual {v5, v7, v9, v8}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1989
    :goto_1
    return-void

    .line 1912
    .restart local v2    # "popup":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    goto :goto_0

    .line 1940
    .end local v2    # "popup":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v5

    invoke-virtual {v5, v7, v9, v8}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    goto :goto_1

    .line 1943
    .restart local v2    # "popup":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v5

    const v6, 0x7f020128

    invoke-virtual {v5, v6, v12, v13}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 1944
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    .line 1947
    if-eqz v0, :cond_6

    .line 1948
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPopupParentLayout()Landroid/view/ViewGroup;

    move-result-object v3

    .line 1949
    .restart local v3    # "popupParentLayout":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 1950
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1952
    :cond_5
    if-eqz v1, :cond_6

    .line 1953
    check-cast v2, Lcom/android/camera/ui/GridSettingTextPopup;

    .end local v2    # "popup":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/camera/ui/GridSettingTextPopup;->restoreFromShrink()V

    .line 1957
    .end local v3    # "popupParentLayout":Landroid/view/View;
    :cond_6
    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v5, :cond_7

    .line 1958
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 1959
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 1961
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v5

    new-instance v6, Lcom/android/camera/module/VideoModule$6;

    invoke-direct {v6, p0}, Lcom/android/camera/module/VideoModule$6;-><init>(Lcom/android/camera/module/VideoModule;)V

    const/16 v7, 0x96

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/ui/V6RecordingTimeView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1971
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v5

    new-instance v6, Lcom/android/camera/module/VideoModule$7;

    invoke-direct {v6, p0}, Lcom/android/camera/module/VideoModule$7;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v5, v6, v9, v8}, Lcom/android/camera/ui/V6PauseRecordingButton;->animateOut(Ljava/lang/Runnable;IZ)V

    goto/16 :goto_1
.end method

.method private showStoppingUI()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 406
    return-void
.end method

.method private showUserMsg(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 3051
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 3052
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    const v1, 0x7f0e00f1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 3058
    :cond_0
    :goto_0
    return-void

    .line 3054
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3055
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    const v1, 0x7f0e00f2

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 531
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1047
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreview "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v2, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1052
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-ne v2, v5, :cond_2

    .line 1053
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1056
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setDisplayOrientation()V

    .line 1057
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    .line 1060
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1061
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SurfaceViewFrame;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1062
    .local v1, "sh":Landroid/view/SurfaceHolder;
    if-nez v1, :cond_3

    .line 1063
    const-string v2, "videocamera"

    const-string v3, "startPreview: holder for preview are not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 1074
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1066
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "sh":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1070
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1071
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1077
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    goto :goto_0

    .line 1068
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private startRecordVideo()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1774
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeRecorder()V

    .line 1775
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 1776
    const-string v2, "videocamera"

    const-string v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :goto_0
    return v1

    .line 1781
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    const/4 v1, 0x1

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1784
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_1

    .line 1785
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    const v3, 0x7f0e01bf

    const v4, 0x7f0e01c1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 1788
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1790
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1811
    const-string v0, "videocamera"

    const-string v3, "startVideoRecording"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1813
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    .line 1815
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v6, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1819
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1820
    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1821
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1872
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1813
    goto :goto_0

    .line 1824
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 1831
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1832
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1833
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 1834
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 1835
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 1836
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 1837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 1838
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 1839
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 1841
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 1842
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOn()V

    .line 1844
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_recorded_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1845
    const-string v0, "fast"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1846
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_fast_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1852
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 1853
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_720_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1861
    :goto_3
    const-string v0, "torch"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1862
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_torch_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1864
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1865
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_front_camera_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1868
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1870
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_with_location_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1847
    :cond_8
    const-string v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1848
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_slow_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 1849
    :cond_9
    const-string v0, "pref_video_hdr_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1850
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_hdr_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 1854
    :cond_a
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 1855
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_480_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_3

    .line 1856
    :cond_b
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 1857
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_1080_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1859
    :cond_c
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_4k_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1081
    const-string v0, "videocamera"

    const-string v1, "Guru : Stop Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1086
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1087
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 1088
    return-void
.end method

.method private stopVideoOnPause()V
    .locals 4

    .prologue
    .line 2202
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause() mMediaRecorderRecording =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    const/4 v0, 0x0

    .line 2204
    .local v0, "videoSaving":Z
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 2205
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 2206
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    .line 2211
    :goto_0
    if-eqz v0, :cond_1

    .line 2212
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->waitForRecorder()V

    .line 2217
    :goto_1
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause()  videoSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoSavingTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMediaRecorderRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-void

    .line 2209
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 2215
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method private stopVideoRecordingAsync()V
    .locals 3

    .prologue
    .line 2186
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2187
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateHold()V

    .line 2188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2189
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 2190
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    .line 2193
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2194
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2969
    .local v18, "dateTaken":J
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    .line 2970
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 2972
    .local v17, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v0, v17

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v17

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 2984
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/VideoModule;->trackPictureTaken(IZIIZ)V

    .line 2985
    return-void

    .line 2984
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private subStopRecording()Z
    .locals 5

    .prologue
    .line 2094
    monitor-enter p0

    .line 2095
    const/4 v1, 0x0

    .line 2096
    .local v1, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2098
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2099
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2100
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 2101
    const/4 v1, 0x1

    .line 2102
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2103
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2123
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 2124
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2129
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 2130
    monitor-exit p0

    return v1

    .line 2105
    :catch_0
    move-exception v0

    .line 2106
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2107
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2108
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 2109
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2110
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2131
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private switchCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2724
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2762
    :goto_0
    return-void

    .line 2725
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2726
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2728
    :cond_1
    const-string v1, "videocamera"

    const-string v2, "Start to switch camera."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 2730
    iput v4, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2731
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2732
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 2733
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2734
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 2735
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 2736
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 2737
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2738
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 2739
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 2740
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 2742
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2746
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2747
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    goto :goto_0

    .line 2750
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2751
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2752
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 2753
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 2754
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 2757
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 2758
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 2759
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2760
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 2761
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    goto/16 :goto_0

    .line 2743
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2595
    :goto_0
    return v0

    .line 2594
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 2595
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2

    .prologue
    .line 3041
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    .line 3042
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3043
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 3045
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2551
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2552
    move v0, p1

    .line 2553
    .local v0, "tmp":I
    move p1, p2

    .line 2554
    move p2, v0

    .line 2556
    .end local v0    # "tmp":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_2

    .line 2559
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2560
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2564
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2565
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ObjectView;->setPreviewSize(II)V

    .line 2567
    :cond_3
    return-void
.end method

.method private updateMotionFocusManager()V
    .locals 3

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 2538
    return-void
.end method

.method private updateMutexModePreference()V
    .locals 3

    .prologue
    .line 2765
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2766
    .local v0, "hdr":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2767
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 2769
    :cond_0
    return-void
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const-string v0, "videocamera"

    const-string v1, "set video stabilization to false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 660
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 24

    .prologue
    .line 2291
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2294
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2295
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v20, v0

    sub-long v8, v12, v20

    .line 2296
    .local v8, "delta":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2297
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 2302
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    const v20, 0xea60

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v8, v20

    if-ltz v17, :cond_7

    const/4 v6, 0x1

    .line 2305
    .local v6, "countdownRemainingTime":Z
    :goto_1
    move-wide v10, v8

    .line 2306
    .local v10, "deltaAdjusted":J
    if-eqz v6, :cond_2

    .line 2307
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x3e7

    add-long v10, v20, v22

    .line 2311
    :cond_2
    const-wide/16 v14, 0x3e8

    .line 2312
    .local v14, "targetNextUpdateDelay":J
    const-string v17, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2313
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .line 2333
    .local v16, "text":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 2335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v6, :cond_4

    .line 2338
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2341
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 2342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 2343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 2344
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    const/16 v20, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2355
    :cond_5
    :goto_3
    const-wide/16 v4, 0x1f4

    .line 2356
    .local v4, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 2357
    rem-long v20, v8, v14

    sub-long v4, v14, v20

    .line 2359
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2302
    .end local v4    # "actualNextUpdateDelay":J
    .end local v6    # "countdownRemainingTime":Z
    .end local v10    # "deltaAdjusted":J
    .end local v14    # "targetNextUpdateDelay":J
    .end local v16    # "text":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2315
    .restart local v6    # "countdownRemainingTime":Z
    .restart local v10    # "deltaAdjusted":J
    .restart local v14    # "targetNextUpdateDelay":J
    :cond_8
    const-wide/16 v18, 0x0

    .line 2316
    .local v18, "timeBetweenFrameMs":D
    const-string v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 2328
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v20

    const-string v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-wide/from16 v0, v20

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .line 2329
    .restart local v16    # "text":Ljava/lang/String;
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v17, v20, v18

    if-gtz v17, :cond_3

    .line 2330
    move-wide/from16 v0, v18

    double-to-long v14, v0

    goto/16 :goto_2

    .line 2320
    .end local v16    # "text":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getVideoHighFrameRate()Ljava/lang/String;

    move-result-object v7

    .line 2321
    .local v7, "hfr":Ljava/lang/String;
    if-eqz v7, :cond_9

    const-string v17, "off"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2322
    const-wide v20, 0x408f400000000000L    # 1000.0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    div-double v18, v20, v22

    goto :goto_4

    .line 2346
    .end local v7    # "hfr":Ljava/lang/String;
    .end local v18    # "timeBetweenFrameMs":D
    .restart local v16    # "text":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 2350
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    goto/16 :goto_3
.end method

.method private updateSettingPage()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2694
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v0

    .line 2695
    .local v0, "quality":I
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v0, v1, :cond_1

    if-ge v0, v2, :cond_0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-lt v1, v2, :cond_1

    .line 2698
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->updatePreference()V

    .line 2700
    :cond_1
    return-void
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 801
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0e00f0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 803
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 804
    return-void
.end method


# virtual methods
.method public animateSwitchCameraAfter()V
    .locals 2

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2804
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 4

    .prologue
    .line 2790
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2799
    :goto_0
    return-void

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2795
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2796
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 2797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected capture()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2631
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v3, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return v1

    .line 2634
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2635
    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 2639
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    iget v5, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2640
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2641
    .local v0, "loc":Landroid/location/Location;
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2642
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2643
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2644
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewPanel;->onCapture()V

    .line 2648
    :goto_1
    const-string v3, "videocamera"

    const-string v4, "Video snapshot start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v4, Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v3, v6, v6, v6, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2650
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 2651
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    move v1, v2

    .line 2652
    goto :goto_0

    .line 2646
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_1
.end method

.method public checkActivityOrientation()V
    .locals 2

    .prologue
    .line 3244
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 3246
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setDisplayOrientation()V

    .line 3247
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3249
    :cond_0
    return-void
.end method

.method protected enterMutexMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2834
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2835
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2837
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2841
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2842
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2843
    return-void
.end method

.method protected exitMutexMode()V
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2847
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2848
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2849
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 776
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 582
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getHFRQuality(II)I
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 780
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 781
    const/4 p2, 0x5

    .line 783
    .end local p2    # "quality":I
    :cond_0
    return p2
.end method

.method protected getNormalVideoFrameRate()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 792
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
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
    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const-string v1, "pref_video_speed_fast_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "pref_video_speed_slow_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const-string v1, "pref_audio_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1173
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1296
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 1176
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 1296
    goto :goto_0

    .line 1178
    :sswitch_1
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1180
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1181
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto :goto_0

    .line 1183
    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 1187
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 1191
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->onCameraPickerClicked(I)Z

    move-result v4

    goto :goto_0

    .line 1194
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1198
    :sswitch_4
    if-nez p1, :cond_4

    .line 1199
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1200
    :cond_4
    if-ne p1, v4, :cond_5

    .line 1201
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonLongClick()Z

    goto :goto_0

    .line 1202
    :cond_5
    if-ne p1, v8, :cond_6

    .line 1203
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, p3

    .line 1204
    check-cast v3, Landroid/graphics/Point;

    .local v3, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 1205
    check-cast v0, Landroid/graphics/Point;

    .line 1206
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_0

    .line 1208
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v3    # "start":Landroid/graphics/Point;
    :cond_6
    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    .line 1209
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 1214
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_5
    new-instance v2, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;Ljava/lang/Object;)V

    .line 1220
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6, v4}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 1221
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 1222
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->animationSwitchToCamera(Ljava/lang/Runnable;)V

    .line 1225
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    goto/16 :goto_0

    .line 1229
    .end local v2    # "r":Ljava/lang/Runnable;
    :sswitch_6
    if-nez p1, :cond_7

    .line 1230
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onReviewDoneClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1232
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1237
    :sswitch_7
    if-nez p1, :cond_8

    .line 1238
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v5, :cond_0

    move-object v1, p3

    .line 1239
    check-cast v1, Landroid/graphics/Point;

    .line 1240
    .local v1, "p":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    goto/16 :goto_0

    .line 1242
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_8
    if-ne p1, v4, :cond_0

    .line 1243
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/VideoModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1248
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPlayVideoActivity()V

    goto/16 :goto_0

    .line 1252
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->switchMutexHDR()V

    goto/16 :goto_0

    .line 1257
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1259
    if-ne p1, v8, :cond_9

    .line 1260
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0

    .line 1261
    :cond_9
    if-ne p1, v4, :cond_0

    .line 1262
    const-string v5, "pref_settings"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1263
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openSettingActivity()V

    goto/16 :goto_0

    .line 1264
    :cond_a
    const-string v5, "pref_video_speed_fast_key"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "pref_video_speed_slow_key"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1266
    :cond_b
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    .line 1267
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0

    .line 1268
    :cond_c
    const-string v5, "pref_video_hdr_key"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1269
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->switchMutexHDR()V

    goto/16 :goto_0

    .line 1276
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openSettingActivity()V

    goto/16 :goto_0

    .line 1279
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->capture()Z

    .line 1280
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v5

    const-string v6, "capture_nums_video_capture"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1283
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_0

    .line 1286
    :sswitch_e
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-nez v5, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 1288
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    goto/16 :goto_0

    .line 1293
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->useProperView()V

    goto/16 :goto_0

    .line 1176
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c000a -> :sswitch_f
        0x7f0c0043 -> :sswitch_3
        0x7f0c0045 -> :sswitch_4
        0x7f0c0049 -> :sswitch_5
        0x7f0c0052 -> :sswitch_1
        0x7f0c0053 -> :sswitch_9
        0x7f0c0056 -> :sswitch_2
        0x7f0c0057 -> :sswitch_6
        0x7f0c0078 -> :sswitch_0
        0x7f0c007e -> :sswitch_7
        0x7f0c0084 -> :sswitch_8
        0x7f0c0088 -> :sswitch_a
        0x7f0c008b -> :sswitch_b
        0x7f0c0097 -> :sswitch_e
        0x7f0c0099 -> :sswitch_c
        0x7f0c009a -> :sswitch_d
    .end sparse-switch
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 3256
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 3073
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedHapticFeedback()Z
    .locals 1

    .prologue
    .line 3062
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 3067
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 1798
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2599
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 2600
    packed-switch p1, :pswitch_data_0

    .line 2615
    :goto_0
    return-void

    .line 2602
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2605
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2606
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2609
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2610
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2600
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2925
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2945
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waitforrecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 2931
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    .line 2933
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    .line 2934
    if-eqz p1, :cond_4

    .line 2935
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 2936
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    if-eqz v0, :cond_3

    .line 2937
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 2943
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    .line 2944
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    goto :goto_0

    .line 2940
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_1
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3078
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusMoving moving= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3081
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 3082
    if-eqz p1, :cond_1

    .line 3083
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 3092
    :cond_0
    :goto_0
    return-void

    .line 3085
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3086
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    .line 3088
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 1126
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return v2

    .line 1129
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_3

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1131
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1132
    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 1133
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0e0121

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1136
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1140
    .end local v0    # "now":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->onBack()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6EffectSettingPage;->onBack()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1152
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1153
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_0

    .line 1157
    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v2

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2704
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2720
    :goto_0
    return v0

    .line 2707
    :cond_1
    const-string v2, "videocamera"

    const-string v3, "Start to copy texture."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2711
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 2716
    :goto_1
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2718
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2719
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 2713
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 2714
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 449
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 450
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->createContentView()V

    .line 451
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 452
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resetCameraSettingsIfNeed()V

    .line 454
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferredCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 455
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    .line 456
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 457
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 458
    const v2, 0x7f0e00f0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetEffect()Z

    .line 460
    invoke-static {v3}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 462
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 463
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v2, v5}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 464
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v5, "open_camera_times_key"

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 465
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 466
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 468
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeMiscControls()V

    .line 471
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v4}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 474
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    .line 513
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 471
    goto :goto_0

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeFocusManager()V

    .line 484
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 485
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 486
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->prepareUIByPreviewSize()V

    .line 487
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    .line 488
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    .local v1, "startPreviewThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 499
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 505
    .end local v1    # "startPreviewThread":Ljava/lang/Thread;
    :cond_3
    new-instance v2, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 507
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 509
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 510
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 511
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_2

    .line 475
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 500
    .restart local v1    # "startPreviewThread":Ljava/lang/Thread;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1676
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1679
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 1680
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1682
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 3107
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v0

    .line 3109
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_0

    .line 3111
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_0

    .line 3112
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V

    .line 3115
    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 3097
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3101
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    .line 3103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 1687
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1688
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1690
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1691
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-ge v0, v1, :cond_2

    .line 1693
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRestartVideoRecording()V

    goto :goto_0

    .line 1695
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1696
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0e00d5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1315
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1341
    :goto_0
    return v1

    .line 1319
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1341
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1322
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1324
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1330
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1319
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1353
    sparse-switch p1, :sswitch_data_0

    .line 1359
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1356
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    .line 1357
    const/4 v0, 0x1

    goto :goto_0

    .line 1353
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onObjectStable()V
    .locals 7

    .prologue
    .line 3140
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 3141
    .local v6, "rect":Landroid/graphics/RectF;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->canAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3142
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 3145
    :cond_0
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xf

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 954
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 959
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 963
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_5

    .line 965
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 967
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 968
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 984
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 986
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 988
    iput-object v5, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 991
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetScreenOn()V

    .line 992
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 993
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 996
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 998
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1000
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showStoppingUI()V

    .line 1003
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1004
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1008
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 1009
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 1010
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 970
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-nez v0, :cond_6

    .line 971
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    goto/16 :goto_1

    .line 973
    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    goto/16 :goto_1
.end method

.method public onPauseButtonClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3186
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPauseResumeListener.onClick() mMediaRecorderRecordingPaused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mRecorderBusy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMediaRecorderRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3191
    .local v2, "now":J
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 3213
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 3195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3196
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v1, :cond_2

    .line 3197
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v1

    const v4, 0x7f020064

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    .line 3199
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 3200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 3201
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 3202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3211
    :goto_1
    iput-boolean v8, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3212
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPauseResumeListener.onClick() end. mRecorderBusy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3203
    :catch_0
    move-exception v0

    .line 3204
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "videocamera"

    const-string v4, "Could not start media recorder. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3205
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_1

    .line 3208
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V

    .line 3209
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v4, "video_pause_recording_times_key"

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2784
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->animateSwitchCameraBefore()V

    .line 2785
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2786
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 882
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 884
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-nez v1, :cond_0

    .line 885
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 887
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6GestureRecognizer;->setSwitchPageEnable(Z)V

    .line 891
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_6

    .line 892
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 894
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_6

    .line 895
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 896
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 897
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    goto :goto_0

    .line 900
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 903
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 904
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 908
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_a

    .line 909
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 911
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 912
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 914
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    .line 918
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 919
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 920
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 923
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 926
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 927
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 930
    new-instance v1, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 931
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 933
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_b

    .line 934
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 937
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onSettingsBack()V

    .line 939
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_c

    .line 940
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    .line 941
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 944
    :cond_c
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 945
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 946
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 947
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 948
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 877
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 878
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->deleteCurrentVideo()V

    .line 566
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->hideAlert()V

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 569
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    .line 560
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2668
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2691
    :goto_0
    return-void

    .line 2669
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v3

    .line 2672
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2689
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2674
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2675
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2677
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateSettingPage()V

    .line 2678
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2680
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2681
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    if-eqz v2, :cond_3

    .line 2683
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 2684
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2685
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2689
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2690
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    goto :goto_0

    .line 2687
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 607
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick mSwitchingCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMediaRecorderRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInStartingFocusRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 611
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 618
    .local v0, "stop":Z
    if-eqz v0, :cond_2

    .line 619
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 620
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateParametersAfterRecording()V

    .line 637
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    goto :goto_0

    .line 622
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkCallingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 624
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 625
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 630
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->canRecord()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 631
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    goto :goto_1

    .line 633
    :cond_4
    const-string v1, "videocamera"

    const-string v2, "wait for autofocus"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 6
    .param p1, "pressed"    # Z

    .prologue
    .line 586
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 590
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v4

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 2854
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2859
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2860
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 2863
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_3

    .line 2864
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 2867
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2868
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    .line 2869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    .line 2870
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v4

    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1023
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 1025
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 1027
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseBeforeSuper()V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseAfterSuper()V

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    .line 1036
    :cond_1
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 2

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2809
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 546
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1120
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1121
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 1122
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    .line 1804
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 1808
    :goto_0
    return-void

    .line 1806
    :cond_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spliting file, so ignore the change, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2820
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2821
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2822
    const-string v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2823
    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2824
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2825
    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2827
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2828
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 2830
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2831
    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 5
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 3234
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "pause"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 3235
    .local v1, "pauseMethod":Lmiui/reflect/Method;
    const-class v2, Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3240
    .end local v1    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 3237
    :catch_0
    move-exception v0

    .line 3238
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "videocamera"

    const-string v3, "pauseMediaRecorder IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3236
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 1346
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1349
    :cond_0
    return-void
.end method

.method protected readVideoPreferences()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 710
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v4

    .line 713
    .local v4, "quality":I
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 714
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 715
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 717
    .local v1, "extraVideoQuality":I
    if-lez v1, :cond_5

    .line 718
    const/4 v4, 0x1

    .line 726
    .end local v1    # "extraVideoQuality":I
    :cond_0
    :goto_0
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 727
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 729
    .local v5, "seconds":I
    mul-int/lit16 v6, v5, 0x3e8

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 734
    .end local v5    # "seconds":I
    :goto_1
    const-string v2, "0"

    .line 735
    .local v2, "frameIntervalStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 737
    const-string v6, "fast"

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 739
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v8, "pref_video_time_lapse_frame_interval_key"

    const v9, 0x7f0e0026

    invoke-virtual {p0, v9}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    :cond_1
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 748
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 750
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_3

    .line 751
    add-int/lit16 v4, v4, 0x3e8

    .line 752
    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_2

    const/16 v6, 0x3fa

    if-le v4, v6, :cond_3

    .line 754
    :cond_2
    add-int/lit16 v4, v4, -0x3e8

    .line 755
    const-string v2, "0"

    .line 756
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 757
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_video_speed_key"

    const-string v8, "normal"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 759
    iput-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 760
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v6

    const v8, 0x7f0e0125

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-virtual {v6, v8, v9}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 762
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    .line 765
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    rem-int/lit16 v6, v4, 0x3e8

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 766
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->quality:I

    rem-int/lit16 v6, v6, 0x3e8

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v6, v8, :cond_4

    .line 767
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 769
    :cond_4
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 770
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readVideoPreferences: frameRate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", codec="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getDesiredPreviewSize()V

    .line 773
    return-void

    .line 720
    .end local v2    # "frameIntervalStr":Ljava/lang/String;
    .restart local v1    # "extraVideoQuality":I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 731
    .end local v1    # "extraVideoQuality":I
    :cond_6
    iput v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 742
    .restart local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_7
    const-string v6, "slow"

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 743
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/module/VideoModule;->getHFRQuality(II)I

    move-result v4

    goto/16 :goto_2

    :cond_8
    move v6, v7

    .line 748
    goto/16 :goto_3
.end method

.method public record()V
    .locals 4

    .prologue
    .line 641
    const-string v0, "videocamera"

    const-string v1, "record"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 643
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    .line 648
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 650
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3253
    return-void
.end method

.method protected setCameraParameters()V
    .locals 2

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 2542
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2544
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2545
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    .line 2546
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(II)V

    .line 2548
    :cond_1
    return-void
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "speed"    # I

    .prologue
    .line 797
    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    .prologue
    .line 3118
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3137
    :cond_0
    :goto_0
    return-void

    .line 3122
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    .line 3125
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3127
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3128
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    .line 3129
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3131
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3134
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public stopObjectTracking(Z)V
    .locals 4
    .param p1, "restartFD"    # Z

    .prologue
    const/16 v3, 0x8

    .line 3157
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    .line 3159
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 3160
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3161
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3180
    :cond_0
    :goto_0
    return-void

    .line 3165
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 3166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    .line 3167
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3168
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 3169
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3170
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3171
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 3173
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3175
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    .line 3177
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3178
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected switchMutexHDR()V
    .locals 2

    .prologue
    .line 2812
    const-string v0, "off"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2817
    :goto_0
    return-void

    .line 2815
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0
.end method

.method protected updateLoadUI(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0xd

    .line 2621
    if-eqz p1, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2627
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 2628
    return-void

    .line 2624
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2625
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2627
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateStatusBar(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v1, -0x1

    .line 1993
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1995
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_2

    .line 1996
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    if-eq v0, v1, :cond_1

    .line 1998
    :cond_0
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 1999
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$8;-><init>(Lcom/android/camera/module/VideoModule;)V

    const/16 v2, 0x96

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6RecordingTimeView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2009
    :cond_2
    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 24

    .prologue
    .line 2364
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Preview dimension in App->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "X"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 2368
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2370
    .local v11, "recordSize":Ljava/lang/String;
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Video dimension in App->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-size"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_video_flashmode_key"

    const v21, 0x7f0e0070

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2378
    .local v4, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v16

    .line 2379
    .local v16, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2383
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v17

    .line 2384
    .local v17, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_focusmode_key"

    const v21, 0x7f0e0068

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2388
    .local v5, "focusMode":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2389
    const-string v19, "continuous-video"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 2390
    const-string v19, "continuous-video"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2391
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 2397
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2398
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    .line 2399
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2404
    .end local v4    # "flashMode":Ljava/lang/String;
    .end local v5    # "focusMode":Ljava/lang/String;
    .end local v16    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_coloreffect_key"

    const v21, 0x7f0e0081

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2407
    .local v3, "colorEffect":Ljava/lang/String;
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Color effect value ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2412
    :cond_2
    const-string v18, "auto"

    .line 2416
    .local v18, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2427
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getZoomValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2431
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v19

    if-eqz v19, :cond_11

    sget-boolean v19, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v19, :cond_5

    const-string v19, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2441
    const-string v19, "videocamera"

    const-string v20, "set video stabilization to true"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 2451
    :goto_2
    const v8, 0x7fffffff

    .line 2452
    .local v8, "maxWidth":I
    const v7, 0x7fffffff

    .line 2453
    .local v7, "maxHeight":I
    invoke-static {}, Lcom/android/camera/Device;->isVideoSnapshotSizeLimited()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2461
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v15

    .line 2462
    .local v15, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    invoke-static {v15, v0, v1, v8, v7}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2465
    .local v9, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2466
    .local v10, "original":Landroid/hardware/Camera$Size;
    if-nez v10, :cond_7

    .line 2467
    const-string v19, "videocamera"

    const-string v20, "get null pictureSize"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_7
    invoke-virtual {v10, v9}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2472
    :cond_8
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Video snapshot size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2476
    const/16 v19, 0x15

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2481
    .local v12, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v13

    .line 2482
    .local v13, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    invoke-static {v13, v0, v1}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2485
    invoke-virtual {v10, v9}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2488
    :cond_9
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Thumbnail size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    .end local v12    # "size":Landroid/hardware/Camera$Size;
    .end local v13    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v6

    .line 2499
    .local v6, "jpegQuality":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 2506
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v19, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v2, "off"

    .line 2511
    .local v2, "antiBanding":Ljava/lang/String;
    :goto_4
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "antiBanding value ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2515
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v14

    .line 2517
    .local v14, "style":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v14, :cond_c

    .line 2518
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 2519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 2520
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    .line 2527
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "xiaomi-time-watermark"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "xiaomi-time-watermark"

    const-string v21, "off"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "watermark"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "watermark"

    const-string v21, "off"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :cond_e
    return-void

    .line 2394
    .end local v2    # "antiBanding":Ljava/lang/String;
    .end local v3    # "colorEffect":Ljava/lang/String;
    .end local v6    # "jpegQuality":I
    .end local v7    # "maxHeight":I
    .end local v8    # "maxWidth":I
    .end local v9    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v10    # "original":Landroid/hardware/Camera$Size;
    .end local v14    # "style":I
    .end local v15    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v18    # "whiteBalance":Ljava/lang/String;
    .restart local v4    # "flashMode":Ljava/lang/String;
    .restart local v5    # "focusMode":Ljava/lang/String;
    .restart local v16    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    const-string v19, "auto"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    goto/16 :goto_0

    .line 2420
    .end local v4    # "flashMode":Ljava/lang/String;
    .end local v5    # "focusMode":Ljava/lang/String;
    .end local v16    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "colorEffect":Ljava/lang/String;
    .restart local v18    # "whiteBalance":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v18

    .line 2421
    if-nez v18, :cond_3

    .line 2422
    const-string v18, "auto"

    goto/16 :goto_1

    .line 2445
    :cond_11
    const-string v19, "videocamera"

    const-string v20, "set video stabilization to false"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_2

    .line 2492
    .restart local v7    # "maxHeight":I
    .restart local v8    # "maxWidth":I
    .restart local v9    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v10    # "original":Landroid/hardware/Camera$Size;
    .restart local v15    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_3

    .line 2506
    .restart local v6    # "jpegQuality":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_antibanding_key"

    const v21, 0x7f0e00ca

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 2522
    .restart local v2    # "antiBanding":Ljava/lang/String;
    .restart local v14    # "style":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5
.end method

.method protected waitForRecorder()V
    .locals 4

    .prologue
    .line 2135
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v1, :cond_1

    .line 2136
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    monitor-enter v2

    .line 2137
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2139
    :try_start_1
    const-string v1, "videocamera"

    const-string v3, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2145
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2147
    :cond_1
    return-void

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "videocamera"

    const-string v3, "Got notify from Media recorder()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
