.class Lcom/android/camera/camera_adapter/CameraMTK$1;
.super Ljava/lang/Object;
.source "CameraMTK.java"

# interfaces
.implements Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$1;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinuousShotDone(I)V
    .locals 3
    .param p1, "capNum"    # I

    .prologue
    .line 31
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotDone: capNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$1;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$1;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->handleMultiSnapDone()V

    .line 34
    return-void
.end method