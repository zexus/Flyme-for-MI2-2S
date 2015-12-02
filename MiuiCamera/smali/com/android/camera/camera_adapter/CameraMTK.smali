.class public Lcom/android/camera/camera_adapter/CameraMTK;
.super Lcom/android/camera/module/CameraModule;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/CameraMTK$FBParams;,
        Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    }
.end annotation


# instance fields
.field private mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

.field private mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field private mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mIsFaceBeautyMode:Z

.field private mIsLongShotMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    .line 25
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 26
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 27
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 28
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$1;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$1;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applyFBParams(Lcom/android/camera/hardware/MTKCamera$MTKParameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    .param p2, "fbParams"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .prologue
    .line 279
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 280
    :cond_0
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFBParams: unexpected null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "cameraParam"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_1
    return-void

    .line 280
    :cond_1
    const-string v0, "fbParam"

    goto :goto_0

    .line 283
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSmoothLevel(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setEnlargeEye(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSlimFace(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSkinColor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableZSL()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flattenFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Ljava/lang/String;
    .locals 8
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .prologue
    .line 379
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 380
    .local v1, "length":I
    :goto_0
    if-nez v1, :cond_1

    .line 381
    const/4 v5, 0x0

    .line 393
    :goto_1
    return-object v5

    .line 379
    .end local v1    # "length":I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 383
    .restart local v1    # "length":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v2, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 386
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 387
    .local v3, "x":I
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 388
    .local v4, "y":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_2

    .line 390
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 393
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getFaceNo([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 2
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .prologue
    .line 245
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 246
    .local v0, "faceNum":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 252
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    :goto_1
    return-object v1

    .line 245
    .end local v0    # "faceNum":I
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 248
    .restart local v0    # "faceNum":I
    :pswitch_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    goto :goto_1

    .line 250
    :pswitch_1
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFlashWillOn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "paramsFlashOn"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isSupportContinuousShut(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)Z
    .locals 3
    .param p0, "parameters"    # Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "supportedCaptureMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private mtkUpdateCameraParametersPreference(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V
    .locals 17
    .param p1, "parameters"    # Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .prologue
    .line 39
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setCameraMode(I)V

    .line 43
    const v13, 0x7f0e004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 44
    .local v12, "thumbnailQuality":Ljava/lang/String;
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "thumbnailQuality = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v12}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v8

    .line 46
    .local v8, "quality":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v8}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 49
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v13

    if-nez v13, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v13}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v13}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 51
    const-string v13, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 57
    :goto_0
    const-string v13, "pref_qc_camera_iso_key"

    const v14, 0x7f0e00b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "iso":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 60
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ISO value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setISOValue(Ljava/lang/String;)V

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v14, "pref_qc_camera_saturation_key"

    const v15, 0x7f0e00a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "saturationStr":Ljava/lang/String;
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Saturation value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSaturation(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v14, "pref_qc_camera_contrast_key"

    const v15, 0x7f0e00a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "contrastStr":Ljava/lang/String;
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Contrast value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setContrast(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v14, "pref_qc_camera_sharpness_key"

    const v15, 0x7f0e00a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "sharpnessStr":Ljava/lang/String;
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sharpness value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSharpness(Ljava/lang/String;)V

    .line 85
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->enableZSL()Z

    move-result v3

    .line 88
    .local v3, "enableZsl":Z
    const-string v14, "Camera"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ZSL value = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v3, :cond_6

    const-string v13, "on"

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v3, :cond_7

    .line 90
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    .line 91
    const-string v13, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setZSLMode(Ljava/lang/String;)V

    .line 97
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMultiSnapStatus:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v13, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    invoke-static {v13}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupportContinuousShut(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 98
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 103
    :cond_2
    :goto_3
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Long Shot mode value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isLongShotMode()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 106
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "fbValue":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 108
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FB value ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->getStillBeautify()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    if-eqz v13, :cond_9

    const v13, 0x7f0e0165

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 110
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    .line 111
    const-string v13, "normal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setCaptureMode(Ljava/lang/String;)V

    .line 112
    const-string v13, "false"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setFaceBeauty(Ljava/lang/String;)V

    .line 113
    const-string v13, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set3dnrMode(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x22

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 142
    .end local v6    # "fbValue":Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v14, "pref_camera_show_gender_age_key"

    const v15, 0x7f0e0153

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 146
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SetShowGenderAndAge ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v11    # "showGenderAndAge":Ljava/lang/String;
    :cond_4
    return-void

    .line 53
    .end local v2    # "contrastStr":Ljava/lang/String;
    .end local v3    # "enableZsl":Z
    .end local v7    # "iso":Ljava/lang/String;
    .end local v9    # "saturationStr":Ljava/lang/String;
    .end local v10    # "sharpnessStr":Ljava/lang/String;
    :cond_5
    const-string v13, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .restart local v2    # "contrastStr":Ljava/lang/String;
    .restart local v3    # "enableZsl":Z
    .restart local v7    # "iso":Ljava/lang/String;
    .restart local v9    # "saturationStr":Ljava/lang/String;
    .restart local v10    # "sharpnessStr":Ljava/lang/String;
    :cond_6
    const-string v13, "off"

    goto/16 :goto_1

    .line 93
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    .line 94
    const-string v13, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setZSLMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 99
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v13, :cond_2

    .line 100
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 101
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    goto/16 :goto_3

    .line 116
    .restart local v6    # "fbValue":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    if-nez v13, :cond_3

    const v13, 0x7f0e0165

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 117
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    .line 119
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->stopFaceDetection(Z)V

    .line 121
    const-string v13, "face_beauty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setCaptureMode(Ljava/lang/String;)V

    .line 122
    const-string v13, "true"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setFaceBeauty(Ljava/lang/String;)V

    .line 123
    const-string v13, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set3dnrMode(Ljava/lang/String;)V

    .line 125
    const/4 v4, 0x0

    .line 126
    .local v4, "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v13, v14, :cond_b

    .line 127
    const-string v13, "true"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setExtremeBeauty(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v5

    .line 129
    .local v5, "faces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    if-eqz v5, :cond_a

    array-length v13, v5

    const/4 v14, 0x1

    if-lt v13, v14, :cond_a

    .line 130
    const/4 v13, 0x0

    aget-object v4, v5, v13

    .line 135
    .end local v5    # "faces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Lcom/android/camera/hardware/MTKCamera$MTKParameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x22

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 133
    :cond_b
    const-string v13, "false"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setExtremeBeauty(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private setFacePoints(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v0

    .line 398
    .local v0, "faces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->flattenFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {p1, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setFacePosition(Ljava/lang/String;)V

    .line 402
    :cond_0
    return-void
.end method

.method private setPictureFlipIfNeed(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setPictureFlip(Ljava/lang/String;)V

    .line 358
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 356
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V
    .locals 4
    .param p1, "fbParams"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    .param p2, "fbValue"    # Ljava/lang/String;
    .param p3, "face"    # Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .prologue
    .line 265
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .line 275
    .local v0, "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :goto_0
    invoke-static {p1, v0, p3}, Lcom/android/camera/MtkFBParamsUtil;->getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V

    .line 276
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :goto_1
    return-void

    .line 267
    :cond_0
    const v1, 0x7f0e0167

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .restart local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    goto :goto_0

    .line 269
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_1
    const v1, 0x7f0e0168

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .restart local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    goto :goto_0

    .line 272
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFBParams: unexpected fbMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 2
    .param p1, "startshut"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .line 161
    .local v0, "parameters":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    if-eqz p1, :cond_0

    sget v1, Lcom/android/camera/camera_adapter/CameraMTK;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setBurstShotNum(I)V

    .line 162
    if-eqz p1, :cond_1

    const-string v1, "continuousshot"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setCaptureMode(Ljava/lang/String;)V

    .line 165
    return-void

    .line 161
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const-string v1, "normal"

    goto :goto_1
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 369
    return-void
.end method

.method protected closeCamera()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 184
    return-void
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V

    .line 175
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto :goto_0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    .prologue
    .line 336
    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 340
    :goto_0
    return v1

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "flash-on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "paramsFlashOn":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFlashWillOn(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 10
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 207
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v5

    .line 209
    .local v5, "view":Lcom/android/camera/ui/FaceView;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v0

    .line 211
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->getFaceNo([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    move-result-object v2

    .line 214
    .local v2, "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    sget-object v6, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-eq v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v6, :cond_1

    .line 242
    .end local v0    # "cameraFaces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .end local v2    # "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .end local v5    # "view":Lcom/android/camera/ui/FaceView;
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0    # "cameraFaces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .restart local v2    # "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .restart local v5    # "view":Lcom/android/camera/ui/FaceView;
    :cond_1
    sget-object v6, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v6, :cond_5

    const/4 v6, 0x0

    aget-object v1, v0, v6

    .line 220
    .local v1, "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :goto_1
    if-eqz v1, :cond_2

    iget v6, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    float-to-double v6, v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    iget v6, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    const v7, 0x3ecccccd    # 0.4f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    const v7, 0x3f19999a    # 0.6f

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 224
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "fbValue":Ljava/lang/String;
    const v6, 0x7f0e0165

    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 226
    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v6, v3, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V

    .line 228
    :cond_3
    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v6, v7}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 229
    :cond_4
    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v4, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .line 230
    .local v4, "parameters":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    sget-object v6, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v6, :cond_6

    .line 231
    const-string v6, "true"

    invoke-virtual {v4, v6}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setExtremeBeauty(Ljava/lang/String;)V

    .line 235
    :goto_2
    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v4, v6}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Lcom/android/camera/hardware/MTKCamera$MTKParameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 236
    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 237
    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 238
    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v6, v7}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    goto :goto_0

    .line 219
    .end local v1    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .end local v3    # "fbValue":Ljava/lang/String;
    .end local v4    # "parameters":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 233
    .restart local v1    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .restart local v3    # "fbValue":Ljava/lang/String;
    .restart local v4    # "parameters":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    :cond_6
    const-string v6, "false"

    invoke-virtual {v4, v6}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setExtremeBeauty(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v1, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .line 190
    .local v1, "parameters":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    const-string v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_qc_camera_iso_key"

    const v4, 0x7f0e00b9

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setISOValue(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 200
    .end local v0    # "iso":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    .line 329
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFaceBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setFacePoints(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V

    .line 332
    :cond_0
    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsFaceBeautyMode:Z

    .line 323
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    instance-of v0, p1, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    if-eqz v0, :cond_0

    .line 306
    check-cast p1, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .end local p1    # "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p1, p2}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setAutoExposure(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 347
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->mtkUpdateCameraParametersPreference(Lcom/android/camera/hardware/MTKCamera$MTKParameters;)V

    .line 350
    :cond_0
    return-void
.end method
