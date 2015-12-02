.class Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;
.super Ljava/lang/Object;
.source "MTKCamera.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousShotCallbackProxy"
.end annotation


# instance fields
.field private mContinuousCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

.field final synthetic this$0:Lcom/android/camera/hardware/MTKCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/MTKCamera;Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;->this$0:Lcom/android/camera/hardware/MTKCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    .line 270
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConinuousShotDone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;->onContinuousShotDone(I)V

    .line 277
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
