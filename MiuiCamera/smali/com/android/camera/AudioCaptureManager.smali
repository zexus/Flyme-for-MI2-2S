.class public Lcom/android/camera/AudioCaptureManager;
.super Ljava/lang/Object;
.source "AudioCaptureManager.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;

.field private mCaptureDelayView:Lcom/android/camera/ui/RotateTextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V
    .locals 2
    .param p1, "module"    # Lcom/android/camera/module/CameraModule;
    .param p2, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    .line 21
    iput-object p2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    .line 22
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CameraModule == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureDelayNumber()Lcom/android/camera/ui/RotateTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateTextView;

    .line 26
    new-instance v0, Lcom/android/camera/AudioCapture;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setAudioProgress(F)V

    .line 93
    :cond_0
    return-void
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public hideDelayNumber()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 39
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    .line 33
    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 98
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0e011f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public readyToAudioCapture()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->readyToAudioCapture()Z

    move-result v0

    return v0
.end method

.method public releaseShutter()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    const/16 v1, 0x2bc

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    .line 71
    return-void
.end method

.method public setDelayStep(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 50
    if-ltz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateTextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    return-void
.end method
