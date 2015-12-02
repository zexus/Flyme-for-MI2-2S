.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$WatchDogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentInflated:Z

.field private mCurrentModuleIndex:I

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIsFromLauncher:Z

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mTick:I

.field private mWatchDog:Ljava/lang/Thread;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 51
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Camera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/Camera;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/Camera;->mTick:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/Camera;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/Camera;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/Camera;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .locals 3
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    const/4 v2, 0x1

    .line 174
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 176
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 177
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 178
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 179
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    .line 180
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 181
    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    .line 214
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    goto :goto_0

    .line 210
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    goto :goto_0

    .line 214
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    goto :goto_0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 2
    .param p1, "moduleIndex"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "module":Lcom/android/camera/module/Module;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 186
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 187
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/camera/Camera;->getPanoramaByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 190
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 191
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 192
    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 195
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0
.end method

.method private getPanoramaByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/android/camera/module/PanoramaModule;

    invoke-direct {v0}, Lcom/android/camera/module/PanoramaModule;-><init>()V

    return-object v0
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    .line 228
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    goto :goto_0

    .line 228
    :cond_3
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->transferOrientationCompensation(Lcom/android/camera/module/Module;)V

    .line 166
    iput-object p1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 168
    invoke-interface {p1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 169
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 170
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 171
    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    .line 370
    if-eqz p1, :cond_2

    .line 371
    new-instance v0, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    .line 372
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 376
    iput-object v1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method public createContentView()V
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 84
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public getCapturePosture()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 240
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 62
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 63
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    .line 64
    new-instance v0, Lcom/android/camera/ui/UIController;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    .line 65
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 71
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 72
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    .line 74
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 75
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 76
    new-instance v3, Lcom/android/camera/storage/ImageSaver;

    iget-object v4, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    invoke-direct {v3, p0, v4, v0}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 77
    return-void

    .line 69
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 76
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    .line 133
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestory()V

    .line 134
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 246
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 251
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v4, 0x96

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v6

    :goto_0
    move v6, v0

    :goto_1
    return v6

    .line 254
    :cond_3
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_1

    .line 258
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 264
    iget v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v1, :cond_1

    .line 265
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 266
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 270
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 119
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 120
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 124
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    .line 125
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    const-string v2, "CameraActivity"

    invoke-static {p0, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 96
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 97
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 98
    invoke-static {}, Lcom/android/camera/storage/Storage;->readSystemPriorityStorage()V

    .line 99
    iget-object v2, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 100
    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 101
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 102
    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    .line 105
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 112
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 310
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    .line 311
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->canIgnoreFocusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    .line 282
    :cond_0
    if-eqz p1, :cond_2

    .line 283
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    .line 285
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->register()V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 149
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 142
    :cond_0
    return-void
.end method

.method public setBlurFlag(Z)V
    .locals 3
    .param p1, "blurred"    # Z

    .prologue
    const/4 v1, 0x4

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackgroundColor(I)V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public switchToOtherModule(I)V
    .locals 1
    .param p1, "moduleIndex"    # I

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 154
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 155
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    goto :goto_0
.end method
