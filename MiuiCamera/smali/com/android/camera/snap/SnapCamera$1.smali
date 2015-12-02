.class Lcom/android/camera/snap/SnapCamera$1;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 13
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 159
    .local v4, "loc":Landroid/location/Location;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_SNAP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 162
    .local v5, "orientation":I
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$000(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mWidth:I
    invoke-static {v6}, Lcom/android/camera/snap/SnapCamera;->access$100(Lcom/android/camera/snap/SnapCamera;)I

    move-result v7

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mHeight:I
    invoke-static {v6}, Lcom/android/camera/snap/SnapCamera;->access$200(Lcom/android/camera/snap/SnapCamera;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v11}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;

    move-result-object v12

    .line 174
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$300(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$300(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    iget-object v0, v0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    iget-object v0, v0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "title":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v5    # "orientation":I
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method
