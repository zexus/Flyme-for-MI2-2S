.class public Lcom/android/camera/camera_adapter/CameraPadOne;
.super Lcom/android/camera/module/CameraModule;
.source "CameraPadOne.java"


# instance fields
.field private final KEY_AUTO_ROTATE:Ljava/lang/String;

.field private final KEY_FLIP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 16
    const-string v0, "Camera"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "jpeg-auto-rotate"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_AUTO_ROTATE:Ljava/lang/String;

    .line 18
    const-string v0, "jpeg-flip"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_FLIP:Ljava/lang/String;

    return-void
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
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 70
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateCameraParametersPreference(Lcom/android/camera/hardware/CameraHardware$HardwareParameters;)V
    .locals 5
    .param p1, "parameters"    # Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    .prologue
    .line 21
    const-string v2, "jpeg-auto-rotate"

    const-string v3, "true"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    const-string v2, "on"

    invoke-virtual {p1, v2}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 29
    :goto_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetTimeWatermark ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getTimeWatermark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_face_beauty_key"

    const v4, 0x7f0e0169

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "faceBeauty":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 34
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetStillBeautify ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_show_gender_age_key"

    const v4, 0x7f0e0153

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 39
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetShowGenderAndAge ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v2, "on"

    invoke-virtual {p1, v2}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setMultiFaceBeautify(Ljava/lang/String;)V

    .line 42
    const-string v2, "Camera"

    const-string v3, "SetMultiFaceBeautify =on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->isFrontMirror()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const-string v2, "jpeg-flip"

    const-string v3, "true"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set JPEG horizontal flip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "jpeg-flip"

    invoke-virtual {p1, v4}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 27
    .end local v0    # "faceBeauty":Ljava/lang/String;
    .end local v1    # "showGenderAndAge":Ljava/lang/String;
    :cond_1
    const-string v2, "off"

    invoke-virtual {p1, v2}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    .restart local v0    # "faceBeauty":Ljava/lang/String;
    .restart local v1    # "showGenderAndAge":Ljava/lang/String;
    :cond_2
    const-string v2, "jpeg-flip"

    const-string v3, "false"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 55
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraPadOne;->updateCameraParametersPreference(Lcom/android/camera/hardware/CameraHardware$HardwareParameters;)V

    .line 58
    :cond_0
    return-void
.end method
