.class public Lcom/android/camera/camera_adapter/CameraNv;
.super Lcom/android/camera/module/CameraModule;
.source "CameraNv.java"


# static fields
.field private static RAW_META_DATA:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNSLBurstCount:I

.field private mPreviewPausedDisabled:Z

.field private mRawBuffer:[B

.field private mRawBufferSize:I

.field mSetAohdrLater:Z

.field mSkipSetNSLAfterMultiShot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0xf4240

    sput v0, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 14
    const-string v0, "CameraNv"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    return-void
.end method

.method private allocRawBufferIfNeeded()V
    .locals 5

    .prologue
    .line 266
    sget v2, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    const v3, 0x190aa00

    add-int v1, v2, v3

    .line 267
    .local v1, "sizeWanted":I
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    if-ge v2, v1, :cond_1

    .line 269
    :cond_0
    :try_start_0
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 270
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 273
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 274
    const-string v2, "CameraNv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raw OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNSLBuffersNeededCount(Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;)I
    .locals 5
    .param p1, "parameters"    # Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getZSL()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e010e

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 304
    goto :goto_0

    .line 307
    :cond_2
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getNvExposureTime()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getISOValue()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e00c2

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 312
    goto :goto_0
.end method

.method private getPreviewPausedDisabled()Z
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 285
    .local v0, "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 286
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getNvExposureTime()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getISOValue()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e00c2

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 292
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    return v1
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "on"

    return-object v0
.end method

.method private updateCameraParametersPreference(Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;)V
    .locals 13
    .param p1, "parameters"    # Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .prologue
    .line 27
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_saturation_key"

    const v12, 0x7f0e00a4

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "saturationStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 31
    .local v5, "saturation":I
    const/16 v10, -0x64

    if-lt v5, v10, :cond_0

    const/16 v10, 0x64

    if-gt v5, v10, :cond_0

    .line 32
    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setSaturation(I)V

    .line 34
    :cond_0
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Saturation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_contrast_key"

    const v12, 0x7f0e00a2

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "contrastStr":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setContrast(Ljava/lang/String;)V

    .line 41
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Contrast = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_sharpness_key"

    const v12, 0x7f0e00a7

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "sharpnessStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 48
    .local v7, "sharpness":I
    const/16 v10, -0x64

    if-lt v7, v10, :cond_1

    const/16 v10, 0x64

    if-gt v7, v10, :cond_1

    .line 49
    invoke-virtual {p1, v7}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setEdgeEnhancement(I)V

    .line 51
    :cond_1
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sharpness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getAutoRotation()Z

    move-result v10

    if-nez v10, :cond_2

    .line 54
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setAutoRotation(Z)V

    .line 58
    :cond_2
    const-string v10, "pref_qc_camera_iso_key"

    const v11, 0x7f0e00b9

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "iso":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setISOValue(Ljava/lang/String;)V

    .line 61
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PictureISO = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v10, "pref_qc_camera_exposuretime_key"

    const v11, 0x7f0e013a

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "exposureTime":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "exposure":I
    invoke-virtual {p1, v2}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setExposureTime(I)V

    .line 68
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ExposureTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 72
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 73
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    if-nez v10, :cond_d

    .line 74
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 75
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setHandNight(Z)V

    .line 76
    const-string v10, "CameraNv"

    const-string v11, "Hand Nigh = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    :goto_0
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    if-eqz v10, :cond_4

    .line 117
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 121
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getNSLNumBuffers()I

    move-result v10

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 122
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraNv;->getNSLBuffersNeededCount(Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;)I

    move-result v0

    .line 123
    .local v0, "NSLBuffersNeeded":I
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eq v10, v0, :cond_6

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLNumBuffers(I)V

    .line 125
    if-nez v0, :cond_5

    .line 126
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLBurstCount(I)V

    .line 127
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setBurstCount(I)V

    .line 128
    const-string v10, "normal"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNVShotMode(Ljava/lang/String;)Z

    .line 130
    :cond_5
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 131
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 132
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    check-cast p1, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 133
    .restart local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getNSLNumBuffers()I

    move-result v10

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 134
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Allocate NSLNumBuffers = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_6
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v10, :cond_11

    .line 139
    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v10, :cond_10

    if-lez v0, :cond_10

    .line 141
    const-string v10, "shot2shot"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNVShotMode(Ljava/lang/String;)Z

    .line 145
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLBurstCount(I)V

    .line 146
    sget v10, Lcom/android/camera/camera_adapter/CameraNv;->BURST_SHOOTING_COUNT:I

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setBurstCount(I)V

    .line 161
    :goto_2
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    if-eqz v10, :cond_8

    .line 164
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 165
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    check-cast p1, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 166
    .restart local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v10

    const-string v11, "off"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 167
    const-string v10, "off"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setFlashMode(Ljava/lang/String;)V

    .line 168
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 169
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 170
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    check-cast p1, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 178
    .restart local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    :cond_7
    :goto_3
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setAohdrEnable(Z)V

    .line 179
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 180
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 181
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    check-cast p1, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 184
    .restart local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getPreviewPausedDisabled()Z

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setPreviewPauseDisabled(Z)V

    .line 185
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preview disabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getPreviewPauseDisabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v10

    if-nez v10, :cond_14

    :cond_9
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 189
    const-string v10, "on"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 193
    :goto_4
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SetTimeWatermark ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getTimeWatermark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 196
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SetStillBeautify ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getStillBeautify()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_camera_show_gender_age_key"

    const v12, 0x7f0e0153

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 202
    const-string v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SetShowGenderAndAge ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v10, "on"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setMultiFaceBeautify(Ljava/lang/String;)V

    .line 205
    const-string v10, "CameraNv"

    const-string v11, "SetMultiFaceBeautify =on"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 77
    .end local v0    # "NSLBuffersNeeded":I
    .end local v9    # "showGenderAndAge":Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 78
    const/16 v10, 0xd

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setRawDumpFlag(I)V

    .line 79
    const-string v10, "CameraNv"

    const-string v11, "Raw Data = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->allocRawBufferIfNeeded()V

    goto/16 :goto_0

    .line 81
    :cond_b
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 82
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getAohdrEnable()Z

    move-result v10

    if-nez v10, :cond_3

    .line 85
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 86
    const-string v10, "CameraNv"

    const-string v11, "AO HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :cond_c
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 89
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setMorphoHDR(Z)V

    .line 90
    const-string v10, "CameraNv"

    const-string v11, "Morpho HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 98
    :cond_d
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v10, :cond_e

    .line 99
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 100
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 101
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 103
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setHandNight(Z)V

    .line 104
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setRawDumpFlag(I)V

    .line 105
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getAohdrEnable()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 106
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setAohdrEnable(Z)V

    .line 109
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 110
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 111
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    check-cast p1, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 113
    .restart local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    :cond_f
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setMorphoHDR(Z)V

    goto/16 :goto_0

    .line 143
    .restart local v0    # "NSLBuffersNeeded":I
    :cond_10
    const-string v10, "normal"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNVShotMode(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 148
    :cond_11
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v10, :cond_12

    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v10, :cond_12

    if-lez v0, :cond_12

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 152
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLBurstCount(I)V

    .line 153
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setBurstCount(I)V

    .line 158
    :goto_5
    const-string v10, "normal"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNVShotMode(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 155
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLBurstCount(I)V

    .line 156
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setBurstCount(I)V

    goto :goto_5

    .line 171
    :cond_13
    invoke-virtual {p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getNSLNumBuffers()I

    move-result v10

    if-eqz v10, :cond_7

    .line 172
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLNumBuffers(I)V

    .line 173
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setNSLBurstCount(I)V

    .line 174
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 175
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 176
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    check-cast p1, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .restart local p1    # "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    goto/16 :goto_3

    .line 191
    :cond_14
    const-string v10, "off"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_4
.end method


# virtual methods
.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "on"

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

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v1, :cond_2

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "on"

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

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    .line 229
    .local v0, "parameters":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    const-string v1, "pref_focus_position_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setFocusPosition(I)V

    .line 231
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 232
    :cond_1
    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setColorTemperature(I)V

    .line 234
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    const-string v1, "horizontal"

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setFlipStill(Ljava/lang/String;)V

    .line 215
    :goto_0
    const-string v1, "CameraNv"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set JPEG horizontal flip = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->isFrontMirror()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setFlipStill(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 220
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraNv;->updateCameraParametersPreference(Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;)V

    .line 223
    :cond_0
    return-void
.end method
