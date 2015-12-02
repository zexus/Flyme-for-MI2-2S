.class final Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "x1"    # Lcom/android/camera/module/CameraModule$1;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 1257
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v4, v4, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v4, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAutoFocusMoving moving="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 1261
    if-eqz p1, :cond_5

    move v0, v3

    .line 1262
    .local v0, "focusResult":Z
    :goto_1
    const/4 v2, 0x0

    .line 1263
    .local v2, "requestScan":Z
    const/4 v1, 0x0

    .line 1264
    .local v1, "logContent":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 1265
    const-string v1, "onAutoFocusMoving start"

    .line 1266
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # setter for: Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I
    invoke-static {v4, v3}, Lcom/android/camera/module/CameraModule;->access$6102(Lcom/android/camera/module/CameraModule;I)I

    .line 1272
    :cond_2
    :goto_2
    sget-boolean v3, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 1273
    const-string v3, "Camera"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1278
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, p1, v0}, Lcom/android/camera/FocusManager;->onAutoFocusMoving(ZZ)V

    .line 1280
    :cond_4
    if-eqz v2, :cond_0

    .line 1281
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/zxing/QRCodeManager;->requestDecode()V

    goto :goto_0

    .line 1261
    .end local v0    # "focusResult":Z
    .end local v1    # "logContent":Ljava/lang/String;
    .end local v2    # "requestScan":Z
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    goto :goto_1

    .line 1267
    .restart local v0    # "focusResult":Z
    .restart local v1    # "logContent":Ljava/lang/String;
    .restart local v2    # "requestScan":Z
    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$6100(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAutoFocusMoving end. result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1269
    const/4 v2, 0x1

    .line 1270
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # operator++ for: Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$6108(Lcom/android/camera/module/CameraModule;)I

    goto :goto_2
.end method
