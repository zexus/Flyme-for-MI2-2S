.class public Lcom/android/camera/ui/PeakButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "PeakButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected notifyClickToDispatcher()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_peak_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->reloadPreference()V

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 53
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->notifyClickToDispatcher()V

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->onFinishInflate()V

    .line 25
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 28
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 69
    return-void
.end method

.method public updateVisible()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pref_camera_manual_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3e8

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v0, v1

    .line 76
    .local v0, "visible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    if-eq v0, v1, :cond_0

    .line 77
    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->notifyClickToDispatcher()V

    .line 80
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v2

    .line 72
    goto :goto_0

    .restart local v0    # "visible":Z
    :cond_2
    move v1, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method
