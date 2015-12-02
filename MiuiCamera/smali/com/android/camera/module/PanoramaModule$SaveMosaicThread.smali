.class Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveMosaicThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/module/PanoramaModule$1;

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 985
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$2500(Lcom/android/camera/module/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 988
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/module/PanoramaModule;->generateFinalMosaic(Z)Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 990
    .local v1, "jpeg":Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$2500(Lcom/android/camera/module/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 993
    if-nez v1, :cond_0

    .line 994
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1028
    :goto_0
    return-void

    .line 990
    .end local v1    # "jpeg":Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/camera/module/PanoramaModule;->access$2500(Lcom/android/camera/module/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 995
    .restart local v1    # "jpeg":Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
    :cond_0
    iget-boolean v6, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v6, :cond_1

    .line 996
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mUsingFrontCamera:Z
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$2600(Lcom/android/camera/module/PanoramaModule;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1008
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mDeviceOrientationAtCapture:I
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$2700(Lcom/android/camera/module/PanoramaModule;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mCameraOrientation:I
    invoke-static {v7}, Lcom/android/camera/module/PanoramaModule;->access$2800(Lcom/android/camera/module/PanoramaModule;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v2, v6, 0x168

    .line 1012
    .local v2, "orientation":I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v7, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->data:[B

    iget v8, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->width:I

    iget v9, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->height:I

    # invokes: Lcom/android/camera/module/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v6, v7, v8, v9, v2}, Lcom/android/camera/module/PanoramaModule;->access$2900(Lcom/android/camera/module/PanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v5

    .line 1013
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 1016
    iget v6, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->height:I

    iget v7, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->width:I

    if-le v6, v7, :cond_4

    iget v6, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->width:I

    :goto_2
    int-to-double v6, v6

    const-wide/high16 v8, 0x4080000000000000L    # 512.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 1019
    .local v3, "ratio":I
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 1020
    .local v0, "inSampleSize":I
    iget-object v6, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->data:[B

    invoke-static {v6, v2, v0, v5, v10}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v4

    .line 1022
    .local v4, "t":Lcom/android/camera/Thumbnail;
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v6, v6, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v6, v5}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1023
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v6, v6, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v6

    invoke-virtual {v6, v4, v10}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1025
    .end local v0    # "inSampleSize":I
    .end local v3    # "ratio":I
    .end local v4    # "t":Lcom/android/camera/Thumbnail;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1010
    .end local v2    # "orientation":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mDeviceOrientationAtCapture:I
    invoke-static {v6}, Lcom/android/camera/module/PanoramaModule;->access$2700(Lcom/android/camera/module/PanoramaModule;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mCameraOrientation:I
    invoke-static {v7}, Lcom/android/camera/module/PanoramaModule;->access$2800(Lcom/android/camera/module/PanoramaModule;)I

    move-result v7

    add-int/2addr v6, v7

    rem-int/lit16 v2, v6, 0x168

    .restart local v2    # "orientation":I
    goto :goto_1

    .line 1016
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_4
    iget v6, v1, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->height:I

    goto :goto_2
.end method
