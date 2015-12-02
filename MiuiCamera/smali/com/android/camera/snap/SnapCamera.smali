.class public Lcom/android/camera/snap/SnapCamera;
.super Ljava/lang/Object;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsFrontCamera:Z

.field private mPicture:Landroid/hardware/Camera$PictureCallback;

.field private mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v7, p0, Lcom/android/camera/snap/SnapCamera;->mIsFrontCamera:Z

    .line 154
    new-instance v7, Lcom/android/camera/snap/SnapCamera$1;

    invoke-direct {v7, p0}, Lcom/android/camera/snap/SnapCamera$1;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    .line 50
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "mCameraId":I
    const/4 v5, 0x0

    .line 55
    .local v5, "rotation":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 56
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 58
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 59
    iget-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v7, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 61
    iget-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 63
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 67
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 68
    .local v4, "pictureSize":Lcom/android/camera/PictureSize;
    if-nez v4, :cond_0

    .line 69
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 70
    .local v6, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    iput v7, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    .line 71
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    iput v7, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    .line 77
    .end local v6    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    iget v7, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    iget v8, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    invoke-virtual {v3, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 82
    const-string v7, "zsl"

    const-string v8, "on"

    invoke-virtual {v3, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v7, "continuous-picture"

    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 84
    const-string v7, "no-display-mode"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 85
    const-string v7, "street-snap-mode"

    const-string v8, "on"

    invoke-virtual {v3, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v7, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 89
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 94
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "mCameraId":I
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "pictureSize":Lcom/android/camera/PictureSize;
    .end local v5    # "rotation":I
    :goto_1
    return-void

    .line 73
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v2    # "mCameraId":I
    .restart local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v4    # "pictureSize":Lcom/android/camera/PictureSize;
    .restart local v5    # "rotation":I
    :cond_0
    iget v7, v4, Lcom/android/camera/PictureSize;->width:I

    iput v7, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    .line 74
    iget v7, v4, Lcom/android/camera/PictureSize;->height:I

    iput v7, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "mCameraId":I
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "pictureSize":Lcom/android/camera/PictureSize;
    .end local v5    # "rotation":I
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/camera/snap/SnapCamera;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method


# virtual methods
.method public Camera()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsFrontCamera:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 144
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :cond_0
    :goto_1
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public takeSnap(Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .prologue
    .line 121
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .line 122
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateOrientation(I)V
    .locals 4
    .param p1, "angle"    # I

    .prologue
    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 103
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 105
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update orientation failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/snap/SnapCamera;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
