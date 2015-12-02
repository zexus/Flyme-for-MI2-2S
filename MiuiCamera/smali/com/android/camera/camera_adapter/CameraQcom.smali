.class public Lcom/android/camera/camera_adapter/CameraQcom;
.super Lcom/android/camera/module/CameraModule;
.source "CameraQcom.java"

# interfaces
.implements Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;
    }
.end annotation


# instance fields
.field private mIsLongShotMode:Z

.field private mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

.field private mSetMetaCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 24
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;-><init>(Lcom/android/camera/camera_adapter/CameraQcom;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    .line 424
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camera_adapter/CameraQcom;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/camera_adapter/CameraQcom;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/camera_adapter/CameraQcom;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method private couldEnableChromaFlash()Z
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    const-string v1, "af-bracket-on"

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getUbiFocus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_qc_camera_iso_key"

    const v1, 0x7f0e00b9

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0e013a

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "on"

    .line 387
    :goto_0
    return-object v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    const-string v0, "off"

    goto :goto_0

    .line 375
    :cond_1
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isDefaultManualExposure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    const-string v0, "off"

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->isZSLHDRSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    :cond_4
    const-string v0, "off"

    goto :goto_0

    .line 387
    :cond_5
    const-string v0, "on"

    goto :goto_0
.end method

.method private qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 22
    .param p1, "parameters"    # Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .prologue
    .line 28
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 29
    const-string v18, "pref_qc_camera_exposuretime_key"

    const v19, 0x7f0e013a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, "exposureTime":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxExposureTimeValue()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 33
    .local v8, "exposure":I
    if-ltz v8, :cond_0

    .line 34
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setExposureTime(I)V

    .line 35
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ExposureTime value="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "exposure-time"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v8    # "exposure":I
    .end local v9    # "exposureTime":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v18

    if-nez v18, :cond_19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v18

    if-nez v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 41
    const-string v18, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 47
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 48
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 49
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SetStillBeautify ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getStillBeautify()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    sget-boolean v18, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v18, :cond_3

    .line 53
    const-string v18, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMultiFaceBeautify(Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_show_gender_age_key"

    const v20, 0x7f0e0153

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 60
    .local v15, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 61
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SetShowGenderAndAge ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v15    # "showGenderAndAge":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 66
    :cond_5
    const-string v19, "xiaomi-preview-rotation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    move/from16 v18, v0

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;I)V

    .line 71
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 72
    sget-boolean v18, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    const-string v3, "denoise-off"

    .line 75
    .local v3, "Denoise":Ljava/lang/String;
    :goto_2
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Denoise value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setDenoise(Ljava/lang/String;)V

    .line 79
    .end local v3    # "Denoise":Ljava/lang/String;
    :cond_7
    const-string v18, "pref_qc_camera_iso_key"

    const v19, 0x7f0e00b9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "iso":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 82
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ISO value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setISOValue(Ljava/lang/String;)V

    .line 87
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_qc_camera_saturation_key"

    const v20, 0x7f0e00a4

    invoke-static/range {v20 .. v20}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "saturationStr":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 92
    .local v11, "saturation":I
    if-ltz v11, :cond_9

    .line 93
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Saturation value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSaturation(I)V

    .line 98
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_qc_camera_contrast_key"

    const v20, 0x7f0e00a2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "contrastStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 102
    .local v6, "contrast":I
    if-ltz v6, :cond_a

    .line 103
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Contrast value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setContrast(I)V

    .line 108
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_qc_camera_sharpness_key"

    const v20, 0x7f0e00a7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, "sharpnessStr":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 112
    .local v13, "sharpness":I
    if-ltz v13, :cond_b

    .line 113
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sharpness value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSharpness(I)V

    .line 117
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_touchafaec_key"

    const v20, 0x7f0e0097

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 120
    .local v16, "touchAfAec":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 121
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TouchAfAec value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 125
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mFaceDetectionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 128
    const-string v18, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 134
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v18

    if-nez v18, :cond_22

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 136
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 138
    sget-boolean v18, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez v18, :cond_d

    sget-boolean v18, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez v18, :cond_d

    sget-boolean v18, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v18, :cond_e

    .line 140
    :cond_d
    const-string v18, "ae-bracket-hdr"

    const-string v19, "AE-Bracket"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    move-object/from16 v18, v0

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I
    invoke-static/range {v18 .. v18}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->access$000(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 143
    const-string v18, "capture-burst-exposures"

    const-string v19, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_e
    :goto_4
    const-string v18, "Camera"

    const-string v19, "Hand Nigh = true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_f
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getZSL()Ljava/lang/String;

    move-result-object v17

    .line 175
    .local v17, "zsl":Ljava/lang/String;
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ZSL value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v18, "on"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 177
    invoke-static {}, Lcom/android/camera/Device;->shouldRestartPreviewAfterZslSwitch()Z

    move-result v18

    if-eqz v18, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraState:I

    move/from16 v18, v0

    if-eqz v18, :cond_24

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mRestartPreview:Z

    .line 179
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    .line 180
    const-string v18, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    .line 181
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setCameraMode(I)V

    .line 190
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_28

    .line 191
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 192
    sget-boolean v18, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v18, :cond_11

    sget-boolean v18, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v18, :cond_27

    .line 193
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "num-snaps-per-shutter"

    sget v20, Lcom/android/camera/camera_adapter/CameraQcom;->BURST_SHOOTING_COUNT:I

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 198
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setTimeWatermarkIfNeed()V

    .line 207
    :cond_12
    :goto_9
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Long Shot mode value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2b

    const-string v18, "torch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 214
    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->couldEnableChromaFlash()Z

    move-result v18

    if-eqz v18, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_auto_chroma_flash_key"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090003

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2c

    const-string v5, "chroma-flash-on"

    .line 221
    .local v5, "chromaFlash":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setChromaFlash(Ljava/lang/String;)V

    .line 223
    .end local v5    # "chromaFlash":Ljava/lang/String;
    :cond_13
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Chroma Flash = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getChromaFlash()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isBackCamera()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-static {}, Lcom/android/camera/Device;->isSupportedFlashIconFlicker()Z

    move-result v18

    if-nez v18, :cond_14

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 226
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v18

    if-nez v18, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_2d

    const/4 v4, 0x1

    .line 227
    .local v4, "asdEnable":Z
    :goto_c
    const-string v18, "Camera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ASD Enable = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v19, "scene-detect"

    if-eqz v4, :cond_2e

    const-string v18, "on"

    :goto_d
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    move/from16 v19, v0

    const-string v18, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    if-eqz v4, :cond_2f

    :cond_15
    const/16 v18, 0x1

    :goto_e
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    .line 232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    move/from16 v18, v0

    if-nez v18, :cond_30

    const/16 v18, 0x1

    :goto_f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    move/from16 v18, v0

    if-eqz v18, :cond_31

    move-object/from16 v18, p0

    :goto_10
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V

    .line 236
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->resetFilter()V

    .line 240
    :cond_17
    if-nez v4, :cond_18

    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I
    invoke-static/range {v19 .. v19}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->access$000(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    move-object/from16 v18, v0

    # invokes: Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->resetSceneMode()V
    invoke-static/range {v18 .. v18}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->access$100(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)V

    .line 245
    .end local v4    # "asdEnable":Z
    :cond_18
    return-void

    .line 43
    .end local v6    # "contrast":I
    .end local v7    # "contrastStr":Ljava/lang/String;
    .end local v10    # "iso":Ljava/lang/String;
    .end local v11    # "saturation":I
    .end local v12    # "saturationStr":Ljava/lang/String;
    .end local v13    # "sharpness":I
    .end local v14    # "sharpnessStr":Ljava/lang/String;
    .end local v16    # "touchAfAec":Ljava/lang/String;
    .end local v17    # "zsl":Ljava/lang/String;
    :cond_19
    const-string v18, "off"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    move/from16 v18, v0

    goto/16 :goto_1

    .line 72
    :cond_1b
    const-string v3, "denoise-on"

    goto/16 :goto_2

    .line 130
    .restart local v6    # "contrast":I
    .restart local v7    # "contrastStr":Ljava/lang/String;
    .restart local v10    # "iso":Ljava/lang/String;
    .restart local v11    # "saturation":I
    .restart local v12    # "saturationStr":Ljava/lang/String;
    .restart local v13    # "sharpness":I
    .restart local v14    # "sharpnessStr":Ljava/lang/String;
    .restart local v16    # "touchAfAec":Ljava/lang/String;
    :cond_1c
    const-string v18, "off"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 145
    :cond_1d
    const-string v18, "capture-burst-exposures"

    const-string v19, "0,0,0"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 149
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 150
    const-string v18, "Camera"

    const-string v19, "Raw Data = true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 151
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v18

    if-eqz v18, :cond_20

    .line 152
    const-string v18, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAoHDR(Ljava/lang/String;)V

    .line 153
    const-string v18, "Camera"

    const-string v19, "AoHDR = true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 154
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v18

    if-eqz v18, :cond_21

    .line 155
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    .line 157
    const-string v18, "ae-bracket-hdr"

    const-string v19, "AE-Bracket"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v18, "capture-burst-exposures"

    const-string v19, "-6,8,0"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v18, "Camera"

    const-string v19, "Morpho HDR = true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 160
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 161
    const-string v18, "af-bracket-on"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setUbiFocus(Ljava/lang/String;)V

    .line 162
    const-string v18, "Camera"

    const-string v19, "Ubi Focus = true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 165
    :cond_22
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v18

    if-eqz v18, :cond_23

    .line 166
    const-string v18, "ae-bracket-hdr"

    const-string v19, "Off"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_23
    const-string v18, "af-bracket-off"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setUbiFocus(Ljava/lang/String;)V

    .line 169
    const-string v18, "off"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAoHDR(Ljava/lang/String;)V

    .line 170
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 171
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    goto/16 :goto_5

    .line 177
    .restart local v17    # "zsl":Ljava/lang/String;
    :cond_24
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 182
    :cond_25
    const-string v18, "off"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 183
    invoke-static {}, Lcom/android/camera/Device;->shouldRestartPreviewAfterZslSwitch()Z

    move-result v18

    if-eqz v18, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraState:I

    move/from16 v18, v0

    if-eqz v18, :cond_26

    const/16 v18, 0x1

    :goto_11
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mRestartPreview:Z

    .line 185
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    .line 186
    const-string v18, "off"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    .line 187
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setCameraMode(I)V

    goto/16 :goto_7

    .line 183
    :cond_26
    const/16 v18, 0x0

    goto :goto_11

    .line 195
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_8

    .line 199
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 200
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 201
    sget-boolean v18, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v18, :cond_29

    sget-boolean v18, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v18, :cond_2a

    .line 202
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "num-snaps-per-shutter"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 204
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_9

    .line 210
    :cond_2b
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 215
    :cond_2c
    const-string v5, "chroma-flash-off"

    goto/16 :goto_b

    .line 226
    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 228
    .restart local v4    # "asdEnable":Z
    :cond_2e
    const-string v18, "off"

    goto/16 :goto_d

    .line 229
    :cond_2f
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 232
    :cond_30
    const/16 v18, 0x0

    goto/16 :goto_f

    .line 233
    :cond_31
    const/16 v18, 0x0

    goto/16 :goto_10
.end method

.method private setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "flip-h"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    .line 355
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 350
    :cond_0
    const-string v0, "flip-v"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelContinuousShot()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    .line 259
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 260
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    .line 261
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long Shot mode value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    return-void
.end method

.method protected closeCamera()V
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mSetMetaCallback:Z

    .line 250
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 255
    return-void
.end method

.method protected getBurstDelayTime()I
    .locals 1

    .prologue
    .line 636
    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_0

    .line 637
    const/16 v0, 0x12c

    .line 641
    :goto_0
    return v0

    .line 638
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI11:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A10:Z

    if-eqz v0, :cond_2

    .line 639
    :cond_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 641
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDetectedHHT()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 420
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->access$000(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->access$200(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 4

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "true"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "flash-on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    if-nez v0, :cond_1

    const-string v0, "persist.camera.feature.restart"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInternalPreviewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jpeg"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->setData([B)V

    .line 410
    :cond_0
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 2

    .prologue
    .line 646
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onResumeAfterSuper()V

    .line 647
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setEdgeTouchEnabled(Z)V

    .line 649
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .line 288
    .local v0, "parameters":Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    const-string v1, "pref_focus_position_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(I)V

    .line 290
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 291
    :cond_1
    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWBManualCCT(I)V

    .line 293
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 360
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 361
    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setTimeWatermarkIfNeed()V

    .line 366
    return-void
.end method

.method protected resetMetaDataManager()V
    .locals 1

    .prologue
    .line 397
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->reset()V

    .line 400
    :cond_1
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    check-cast p1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .end local p1    # "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p1, p2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAutoExposure(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected updateASD(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMetaDataManager:Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 394
    :cond_1
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 273
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 276
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 277
    .local v0, "fpsRange":[I
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 282
    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 330
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 333
    :cond_0
    return-void
.end method

.method protected updateExitButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isDetectedHHT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 417
    :cond_1
    return-void
.end method
