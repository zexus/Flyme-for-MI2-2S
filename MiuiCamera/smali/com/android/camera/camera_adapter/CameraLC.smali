.class public Lcom/android/camera/camera_adapter/CameraLC;
.super Lcom/android/camera/module/CameraModule;
.source "CameraLC.java"


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return-void
.end method

.method private getZSL()Z
    .locals 2

    .prologue
    .line 146
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/LCCamera$LCParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->getZslSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lcUpdateCameraParametersPreference(Lcom/android/camera/hardware/LCCamera$LCParameters;)V
    .locals 10
    .param p1, "parameters"    # Lcom/android/camera/hardware/LCCamera$LCParameters;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 19
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 21
    const-string v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetStillBeautify ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->getStillBeautify()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v7, "pref_camera_show_gender_age_key"

    const v8, 0x7f0e0153

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 29
    const-string v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetShowGenderAndAge ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    const-string v7, "xiaomi-preview-rotation"

    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {p1, v7, v5}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;I)V

    .line 38
    .end local v4    # "showGenderAndAge":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 40
    const-string v5, "on"

    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 46
    :goto_1
    const-string v5, "pref_qc_camera_iso_key"

    const v7, 0x7f0e00b9

    invoke-virtual {p0, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "iso":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    const-string v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISO value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setISOValue(Ljava/lang/String;)V

    .line 54
    :cond_3
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v7, "pref_qc_camera_saturation_key"

    const v8, 0x7f0e00a4

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "saturationStr":Ljava/lang/String;
    const-string v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saturation value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1, v2}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setSaturation(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v7, "pref_qc_camera_contrast_key"

    const v8, 0x7f0e00a2

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "contrastStr":Ljava/lang/String;
    const-string v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contrast value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setContrast(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v7, "pref_qc_camera_sharpness_key"

    const v8, 0x7f0e00a7

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "sharpnessStr":Ljava/lang/String;
    const-string v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sharpness value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1, v3}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setSharpness(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Lcom/android/camera/hardware/LCCamera$LCParameters;)V

    .line 76
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getZSL()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    .line 77
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_6

    const-string v5, "true"

    :goto_2
    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setZSLMode(Ljava/lang/String;)V

    .line 79
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-nez v5, :cond_7

    .line 80
    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 81
    sget v5, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setBurstShotNum(I)V

    .line 88
    :goto_3
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Long Shot mode value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isLongShotMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 32
    .end local v0    # "contrastStr":Ljava/lang/String;
    .end local v1    # "iso":Ljava/lang/String;
    .end local v2    # "saturationStr":Ljava/lang/String;
    .end local v3    # "sharpnessStr":Ljava/lang/String;
    .restart local v4    # "showGenderAndAge":Ljava/lang/String;
    :cond_4
    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    goto/16 :goto_0

    .line 42
    .end local v4    # "showGenderAndAge":Ljava/lang/String;
    :cond_5
    const-string v5, "off"

    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    .restart local v0    # "contrastStr":Ljava/lang/String;
    .restart local v1    # "iso":Ljava/lang/String;
    .restart local v2    # "saturationStr":Ljava/lang/String;
    .restart local v3    # "sharpnessStr":Ljava/lang/String;
    :cond_6
    const-string v5, "false"

    goto :goto_2

    .line 82
    :cond_7
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v5, :cond_8

    .line 83
    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 84
    invoke-virtual {p1, v9}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setBurstShotNum(I)V

    goto :goto_3

    .line 86
    :cond_8
    invoke-virtual {p1, v9}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setBurstShotNum(I)V

    goto :goto_3
.end method

.method private setPictureFlipIfNeed(Lcom/android/camera/hardware/LCCamera$LCParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/android/camera/hardware/LCCamera$LCParameters;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setPictureFlip(Ljava/lang/String;)V

    .line 173
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 171
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 2
    .param p1, "startshut"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/LCCamera$LCParameters;

    .line 93
    .local v0, "parameters":Lcom/android/camera/hardware/LCCamera$LCParameters;
    if-eqz p1, :cond_0

    sget v1, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setBurstShotNum(I)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cancelContinuousShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    .line 178
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->applyMultiShutParameters(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

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
    .line 109
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isPreviewEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v1, Lcom/android/camera/hardware/LCCamera$LCParameters;

    .line 126
    .local v1, "parameters":Lcom/android/camera/hardware/LCCamera$LCParameters;
    const-string v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_qc_camera_iso_key"

    const v4, 0x7f0e00b9

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
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

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setISOValue(Ljava/lang/String;)V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 136
    .end local v0    # "iso":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/LCCamera$LCParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Lcom/android/camera/hardware/LCCamera$LCParameters;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setTimeWatermarkIfNeed()V

    .line 105
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    check-cast p1, Lcom/android/camera/hardware/LCCamera$LCParameters;

    .end local p1    # "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p1, p2}, Lcom/android/camera/hardware/LCCamera$LCParameters;->setAutoExposure(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 162
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/LCCamera$LCParameters;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/LCCamera$LCParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->lcUpdateCameraParametersPreference(Lcom/android/camera/hardware/LCCamera$LCParameters;)V

    .line 165
    :cond_0
    return-void
.end method
