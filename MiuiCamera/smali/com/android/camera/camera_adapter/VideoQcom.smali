.class public Lcom/android/camera/camera_adapter/VideoQcom;
.super Lcom/android/camera/module/VideoModule;
.source "VideoQcom.java"


# static fields
.field private static final VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v0, :cond_0

    const-string v0, "90"

    :goto_0
    sput-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "120"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    .line 16
    const-string v0, "VideoQcom"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoQcom;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected updateVideoParametersPreference()V
    .locals 5

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 23
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 24
    .local v0, "fpsRange":[I
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v2, :cond_5

    :cond_0
    array-length v2, v0

    if-lez v2, :cond_5

    .line 25
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 32
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "on"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setVideoHDR(Ljava/lang/String;)V

    .line 37
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "preview-format"

    iget v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mQuality:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "nv12-venus"

    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    const-string v2, "slow"

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHfr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v1, "off"

    .line 47
    .local v1, "highFrameRate":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedVideoHighFrameRateModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/camera_adapter/VideoQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    const-string v2, "VideoQcom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HighFrameRate value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v2, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setVideoHighFrameRate(Ljava/lang/String;)V

    .line 55
    .end local v1    # "highFrameRate":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 56
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v2, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    const-string v3, "denoise-on"

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setDenoise(Ljava/lang/String;)V

    .line 58
    :cond_4
    return-void

    .line 29
    :cond_5
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 33
    :cond_6
    const-string v3, "off"

    goto :goto_1

    .line 39
    :cond_7
    const-string v2, "yuv420sp"

    goto :goto_2

    .line 46
    :cond_8
    sget-object v1, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    goto :goto_3
.end method
