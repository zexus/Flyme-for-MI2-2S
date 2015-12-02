.class public Lcom/android/camera/snap/SnapCameraPreview;
.super Landroid/view/SurfaceView;
.source "SnapCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private readyCallback:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/camera/snap/SnapCameraPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapCameraPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p3, "callback"    # Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/android/camera/snap/SnapCameraPreview;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 25
    iput-object p3, p0, Lcom/android/camera/snap/SnapCameraPreview;->readyCallback:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 30
    iget-object v0, p0, Lcom/android/camera/snap/SnapCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/snap/SnapCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 33
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCameraPreview;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_0
    const-string v1, "start preview"

    invoke-direct {p0, v1}, Lcom/android/camera/snap/SnapCameraPreview;->log(Ljava/lang/String;)V

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/snap/SnapCameraPreview;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 51
    iget-object v1, p0, Lcom/android/camera/snap/SnapCameraPreview;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 53
    iget-object v1, p0, Lcom/android/camera/snap/SnapCameraPreview;->readyCallback:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/camera/snap/SnapCameraPreview;->readyCallback:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    invoke-interface {v1}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onReady()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :cond_0
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start preview failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/snap/SnapCameraPreview;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/snap/SnapCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCameraPreview;->startPreview()V

    .line 64
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 68
    return-void
.end method
