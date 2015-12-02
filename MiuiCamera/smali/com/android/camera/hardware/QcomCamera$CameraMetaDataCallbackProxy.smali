.class Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;
.super Ljava/lang/Object;
.source "QcomCamera.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/QcomCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraMetaDataCallbackProxy"
.end annotation


# instance fields
.field private mMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

.field final synthetic this$0:Lcom/android/camera/hardware/QcomCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/QcomCamera;Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;->this$0:Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    .line 471
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCameraMetaData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/hardware/Camera;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 478
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
