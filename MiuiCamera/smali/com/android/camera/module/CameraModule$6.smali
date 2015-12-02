.class Lcom/android/camera/module/CameraModule$6;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .prologue
    .line 3884
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDevicePostureChanged()V
    .locals 1

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->onDevicePostureChanged()V

    .line 3939
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    .prologue
    .line 3897
    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3916
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->onDeviceMoving()V

    .line 3918
    :cond_0
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 3906
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3909
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onDeviceKeepMoving(D)V

    .line 3911
    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 4
    .param p1, "orientation"    # F
    .param p2, "isLying"    # Z

    .prologue
    const/16 v3, 0x21

    .line 3924
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3925
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iput p1, v0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    .line 3927
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3928
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3932
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3934
    :cond_1
    return-void
.end method
