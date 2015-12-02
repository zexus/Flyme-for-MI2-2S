.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$MemoryManager;,
        Lcom/android/camera/storage/ImageSaver$SaveRequest;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mHandler:Landroid/os/Handler;

.field private mHostState:I

.field private mIsImageCaptureIntent:Z

.field private mLastImageUri:Landroid/net/Uri;

.field private mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/storage/ImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnail:Ljava/lang/Runnable;

.field private mUpdateThumbnailLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/ActivityBase;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "isImageCaptureIntent"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    .line 52
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 53
    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/android/camera/storage/ImageSaver$MemoryManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$1;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->start()V

    .line 57
    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail()V

    return-void
.end method

.method private isLastImageForThumbnail()Z
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 304
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    iget-boolean v1, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 306
    :goto_1
    return v1

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLjava/lang/String;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p10, "orientation"    # I
    .param p11, "isHide"    # Z
    .param p12, "isMap"    # Z
    .param p13, "finalImage"    # Z
    .param p14, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p2, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p10

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p14

    invoke-static/range {v4 .. v13}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    .line 262
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 264
    monitor-enter p0

    .line 269
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-nez v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_5

    if-eqz p13, :cond_5

    const/16 v17, 0x1

    .line 273
    .local v17, "needThumbnail":Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    if-eqz v17, :cond_1

    .line 277
    move/from16 v0, p7

    int-to-double v4, v0

    move/from16 v0, p8

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4080000000000000L    # 512.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v18, v0

    .line 278
    .local v18, "ratio":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v16

    .line 279
    .local v16, "inSampleSize":I
    if-eqz p12, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v4, v0, v5}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v19

    .line 282
    .local v19, "t":Lcom/android/camera/Thumbnail;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v5

    .line 285
    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    .end local v16    # "inSampleSize":I
    .end local v18    # "ratio":I
    .end local v19    # "t":Lcom/android/camera/Thumbnail;
    :cond_1
    monitor-enter p0

    .line 291
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_2

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 293
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    .line 294
    if-eqz p13, :cond_2

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    .line 298
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 300
    .end local v17    # "needThumbnail":Z
    :cond_3
    return-void

    .line 257
    :cond_4
    if-eqz p1, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v13, 0x0

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p10

    move-object/from16 v10, p1

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-static/range {v4 .. v15}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;

    move-result-object p2

    goto/16 :goto_0

    .line 269
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 273
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 279
    .restart local v16    # "inSampleSize":I
    .restart local v17    # "needThumbnail":Z
    .restart local v18    # "ratio":I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p10

    move/from16 v2, v16

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v19

    goto :goto_2

    .line 287
    .restart local v19    # "t":Lcom/android/camera/Thumbnail;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 298
    .end local v16    # "inSampleSize":I
    .end local v18    # "ratio":I
    .end local v19    # "t":Lcom/android/camera/Thumbnail;
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method private updateThumbnail()V
    .locals 4

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 242
    .local v0, "t":Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 243
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 248
    :cond_0
    return-void

    .line 243
    .end local v0    # "t":Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V
    .locals 2
    .param p1, "r"    # Lcom/android/camera/storage/ImageSaver$SaveRequest;

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    const/4 v0, 0x2

    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 113
    const-string v0, "ImageSaver"

    const-string v1, "addImage: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit p0

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->isQueueFull()Z
    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$400(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    goto :goto_1

    .line 123
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    iget-object v1, p1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    array-length v1, v1

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->addUsedMemory(I)V
    invoke-static {v0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$500(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V
    .locals 15
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p10, "orientation"    # I
    .param p11, "isHide"    # Z
    .param p12, "isMapFile"    # Z
    .param p13, "finalImage"    # Z

    .prologue
    .line 63
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 65
    return-void
.end method

.method public addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "oldTitle"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "loc"    # Landroid/location/Location;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p11, "orientation"    # I
    .param p12, "isHide"    # Z
    .param p13, "isMapFile"    # Z
    .param p14, "finalImage"    # Z

    .prologue
    .line 70
    new-instance v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>()V

    .line 71
    .local v1, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    iput-object p1, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    .line 72
    iput-wide p4, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    .line 73
    iput-object p6, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 74
    iput-object p2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 75
    if-nez p7, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    .line 76
    iput p8, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    .line 77
    iput p9, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    .line 78
    iput-object p10, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 79
    iput p11, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    .line 80
    move/from16 v0, p12

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    .line 81
    move/from16 v0, p13

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    .line 82
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 84
    return-void

    .line 75
    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public getBurstDelay()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBurstDelay()I
    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$100(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I

    move-result v0

    return v0
.end method

.method public getSuitableBurstShotSpeed()F
    .locals 1

    .prologue
    .line 107
    const v0, 0x3f28f5c3    # 0.66f

    return v0
.end method

.method public isNeedSlowDown()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z
    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$300(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public isNeedStopCapture()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedStopCapture()Z
    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$200(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public onHostDestroy()V
    .locals 3

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 217
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 222
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    const-string v0, "ImageSaver"

    const-string v1, "onHostDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 217
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 222
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onHostPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "isQueueEmpty":Z
    monitor-enter p0

    .line 191
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 192
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 198
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    if-nez v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 203
    :cond_0
    const-string v1, "ImageSaver"

    const-string v2, "onHostPause"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 193
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 198
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onHostResume(Z)V
    .locals 3
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 178
    const-string v0, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHostResume: isCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V
    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$600(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    .line 135
    :goto_0
    monitor-enter p0

    .line 136
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v2, :cond_0

    .line 140
    const-string v2, "ImageSaver"

    const-string v3, "run: exiting"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 151
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    .line 152
    .local v17, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 158
    :cond_2
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    move-object/from16 v0, v17

    iget-boolean v15, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/camera/storage/ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLjava/lang/String;)V

    .line 160
    monitor-enter p0

    .line 161
    :try_start_4
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    array-length v3, v3

    # invokes: Lcom/android/camera/storage/ImageSaver$MemoryManager;->reduceUsedMemory(I)V
    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$700(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 162
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 146
    .end local v17    # "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>()V

    .line 89
    .local v0, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 90
    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 92
    return-void
.end method
