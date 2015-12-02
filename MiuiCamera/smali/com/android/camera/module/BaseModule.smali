.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$CameraMode;,
        Lcom/android/camera/module/BaseModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceRotation:F

.field protected mDisplayRotation:I

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mExposureCompensationStep:F

.field protected mHasPendingSwitching:Z

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mNumberOfCameras:I

.field protected mObjectTrackingStarted:Z

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mSwitchingCamera:Z

.field protected mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field protected mUIStyle:I

.field protected mWaitForRelease:Z

.field protected mZoomMax:I

.field private mZoomScaled:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 73
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 74
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    .line 122
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 752
    return-void
.end method

.method private getCameraModeList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/BaseModule$CameraMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    return-object v0
.end method

.method public static getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I
    .locals 1
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 599
    iget v0, p1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 612
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public IsIgnoreTouchEvent()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return v0
.end method

.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 565
    const-string v0, "camera-service-mute"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method protected addT2TParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 569
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "t2t"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method protected addZoom(I)V
    .locals 4
    .param p1, "add"    # I

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    .line 473
    .local v0, "value":I
    add-int/2addr v0, p1

    .line 474
    if-gez v0, :cond_1

    .line 475
    const/4 v0, 0x0

    .line 479
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 480
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 482
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 483
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 476
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_0

    .line 477
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0
.end method

.method public animateSwitchCameraAfter()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public canIgnoreFocusChanged()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    return v0
.end method

.method public checkActivityOrientation()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method protected currentIsMainThread()Z
    .locals 4

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableCameraControls(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 507
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->ignoreTouchEvent(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->setSwitchPageEnable(Z)V

    .line 509
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected enterMutexMode()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method protected getPreferencesLocalId()I
    .locals 3

    .prologue
    .line 585
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 586
    .local v0, "preferencesLocalId":I
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    .line 595
    :goto_0
    return v0

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0

    .line 593
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0
.end method

.method protected getPreferredCameraId()I
    .locals 2

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 604
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 608
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
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
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomValue()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    return v0
.end method

.method public handleControllerEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 292
    const-string v0, "com.android.camera.CLOSE_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v0, "com.android.camera.CLICK_SHUTTER_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    .line 296
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 166
    packed-switch p2, :pswitch_data_0

    .line 179
    :cond_0
    const/4 v1, 0x0

    .end local p3    # "extra1":Ljava/lang/Object;
    :goto_0
    return v1

    .line 169
    .restart local p3    # "extra1":Ljava/lang/Object;
    :pswitch_0
    if-ne p1, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    .local v0, "value":I
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 172
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 173
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 174
    const-string v2, "pref_camera_exposure_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 175
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EV = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0082
        :pswitch_0
    .end packed-switch
.end method

.method protected handleVolumeKeyEvent(ZZI)Z
    .locals 6
    .param p1, "up"    # Z
    .param p2, "pressed"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 430
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_volumekey_function_key"

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0e011e

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v1

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0e011b

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    invoke-virtual {p0, p3, p2}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0e011c

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 440
    if-nez p3, :cond_3

    .line 441
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "zoom_volume_times"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 443
    :cond_3
    if-eqz p1, :cond_4

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 446
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 451
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasCameraException()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreTouchEvent(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    .line 242
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    .line 467
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    .line 468
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    .line 469
    return-void
.end method

.method protected initializeMutexMode()V
    .locals 8

    .prologue
    .line 516
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_0

    .line 562
    :goto_0
    return-void

    .line 517
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 519
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    new-instance v2, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 526
    .local v2, "enterHDR":Ljava/lang/Runnable;
    new-instance v4, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v4, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 533
    .local v4, "exitHDR":Ljava/lang/Runnable;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 534
    .local v0, "HDRRunnable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string v7, "enter"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v7, "exit"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const/4 v7, 0x7

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v3, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 550
    .local v3, "enterRAW":Ljava/lang/Runnable;
    new-instance v5, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v5, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 557
    .local v5, "exitRAW":Ljava/lang/Runnable;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v1, "RAWRunnable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string v7, "enter"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v7, "exit"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    new-instance v7, Lcom/android/camera/MutexModeManager;

    invoke-direct {v7, v6}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    goto :goto_0
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    .line 458
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setOrientation(IZ)V

    .line 461
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    goto :goto_0
.end method

.method protected isBackCamera()Z
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method protected isFrontCamera()Z
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTapableRect(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    if-nez v2, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v1

    .line 630
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 631
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 632
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 633
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 634
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 636
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedHapticFeedback()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected mapTapCoordinate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 644
    .local v0, "relativeLocation":[I
    instance-of v1, p1, Landroid/graphics/Point;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 645
    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 646
    check-cast p1, Landroid/graphics/Point;

    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/Point;->y:I

    aget v2, v0, v5

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 647
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 648
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    move-object v1, p1

    .line 649
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    move-object v1, p1

    .line 650
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    aget v3, v0, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 651
    check-cast p1, Landroid/graphics/RectF;

    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aget v2, v0, v5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraError()V

    .line 691
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 360
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    .line 140
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 141
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    .line 142
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 143
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 144
    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestory()V

    .line 155
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 735
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingButton()Lcom/android/camera/ui/V6SettingButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->openSettingActivity()V

    .line 237
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 354
    return-void
.end method

.method protected onOpenCameraException()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-ne v0, v6, :cond_0

    .line 327
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_fail_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const v0, 0x7f0e0002

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-ne v0, v6, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0e0003

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 342
    :cond_1
    :goto_1
    return-void

    .line 329
    :cond_2
    const v0, 0x7f0e0001

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 367
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 370
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 373
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 376
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 377
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 378
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->onPause()V

    .line 208
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 197
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 192
    :cond_0
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 185
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 280
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 284
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 272
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 399
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 734
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    .line 215
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 661
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 662
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 663
    const-string v0, "pref_camera_zoom_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 664
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected openCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 89
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    goto :goto_0

    .line 94
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 732
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 582
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected resetCameraSettingsIfNeed()V
    .locals 5

    .prologue
    .line 487
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->isNeedRestore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 489
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->getCameraModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 491
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule$CameraMode;

    .line 493
    .local v0, "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 494
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v4, v0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 495
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 496
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 497
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v4, v0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 498
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    goto :goto_0

    .line 501
    .end local v0    # "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    :cond_0
    const-string v3, "pref_camera_panoramamode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 503
    :cond_1
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 575
    check-cast p1, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    .end local p1    # "parameters":Landroid/hardware/Camera$Parameters;
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 3
    .param p1, "contrast"    # F

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 312
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    .line 315
    :cond_0
    if-gez v0, :cond_2

    .line 316
    const/4 v0, 0x0

    .line 320
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 321
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_1

    .line 318
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_1
.end method

.method protected sendOpenFailMessage()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 385
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v6

    aput-object v6, v3, v5

    .line 386
    .local v3, "indicators":[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, "arr$":[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 387
    .local v2, "indicator":Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v2    # "indicator":Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method protected setZoomValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 677
    return-void
.end method

.method protected trackPictureTaken(IZIIZ)V
    .locals 4
    .param p1, "takenNum"    # I
    .param p2, "burst"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "location"    # Z

    .prologue
    .line 694
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 696
    if-eqz p2, :cond_0

    .line 697
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_nums_burst"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 702
    :cond_0
    invoke-static {p3, p4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_size_16_9"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 711
    :goto_0
    if-eqz p5, :cond_1

    .line 712
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "picture_with_location_key"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 717
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "front_camera_picture_taken_key"

    :goto_1
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 720
    return-void

    .line 706
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_size_4_3"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_0

    .line 717
    :cond_3
    const-string v0, "back_camera_picture_taken_key"

    goto :goto_1
.end method

.method public transferOrientationCompensation(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "lastModule"    # Lcom/android/camera/module/Module;

    .prologue
    .line 406
    check-cast p1, Lcom/android/camera/module/BaseModule;

    .end local p1    # "lastModule":Lcom/android/camera/module/Module;
    iget v0, p1, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 407
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 0

    .prologue
    .line 733
    return-void
.end method

.method protected updateStatusBar(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus(Ljava/lang/String;)V

    .line 669
    return-void
.end method
