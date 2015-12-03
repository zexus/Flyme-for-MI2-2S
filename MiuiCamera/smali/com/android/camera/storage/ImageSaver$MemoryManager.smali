.class Lcom/android/camera/storage/ImageSaver$MemoryManager;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryManager"
.end annotation


# instance fields
.field private mMaxMemory:J

.field private mMaxTotalMemory:I

.field private mRuntime:Ljava/lang/Runtime;

.field private mSaveTaskMemoryLimit:I

.field private mSaverMemoryUse:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "x1"    # Lcom/android/camera/storage/ImageSaver$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBurstDelay()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedStopCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isQueueFull()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;
    .param p1, "x1"    # I

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->addUsedMemory(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;
    .param p1, "x1"    # I

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->reduceUsedMemory(I)V

    return-void
.end method

.method private addUsedMemory(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 363
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 364
    return-void
.end method

.method private getBaseMemory()J
    .locals 4

    .prologue
    .line 349
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sparse-switch v0, :sswitch_data_0

    .line 358
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 351
    :sswitch_0
    const-wide/32 v0, 0x1400000

    goto :goto_0

    .line 353
    :sswitch_1
    const-wide/32 v0, 0x2800000

    goto :goto_0

    .line 355
    :sswitch_2
    const-wide/32 v0, 0x3c00000

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_1
        0x5a0 -> :sswitch_2
    .end sparse-switch
.end method

.method private getBurstDelay()I
    .locals 3

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "delayMultiple":I
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_1

    .line 375
    const/16 v0, 0x8

    .line 386
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBurstDelay: delayMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 387
    mul-int/lit8 v1, v0, 0x64

    return v1

    .line 376
    :cond_1
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v1, v2, :cond_2

    .line 377
    const/4 v0, 0x5

    goto :goto_0

    .line 378
    :cond_2
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    if-lt v1, v2, :cond_3

    .line 379
    const/4 v0, 0x4

    goto :goto_0

    .line 380
    :cond_3
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_4

    .line 381
    const/4 v0, 0x3

    goto :goto_0

    .line 383
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTotalUsedMemory()I
    .locals 10

    .prologue
    .line 391
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 392
    .local v2, "total":J
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 393
    .local v0, "free":J
    sub-long v4, v2, v0

    .line 394
    .local v4, "totalUsed":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLeftMemory: maxMemory="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", free="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalUsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 396
    long-to-int v6, v4

    return v6
.end method

.method private initMemory()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    .line 342
    iget-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    long-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    .line 343
    iget-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBaseMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 345
    const-string v0, "CameraMemoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMemory: maxMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method private isNeedSlowDown()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "slowDown":Z
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    iget v3, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v4, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    if-lt v3, v4, :cond_0

    move v0, v1

    .line 423
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSlowDown: return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaverMemoryUse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaveTaskMemoryLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 425
    return v0

    :cond_0
    move v0, v2

    .line 419
    goto :goto_0

    .line 421
    :cond_1
    iget v3, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v4, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private isNeedStopCapture()Z
    .locals 6

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "stop":Z
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isQueueFull()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getTotalUsedMemory()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 410
    :cond_0
    const/4 v0, 0x1

    .line 411
    const-string v1, "CameraMemoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedStopCapture: needStop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    return v0
.end method

.method private isQueueFull()Z
    .locals 2

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQueueFull: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "CameraMemoryManager"

    invoke-static {v0, p1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    return-void
.end method

.method private reduceUsedMemory(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 367
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 368
    return-void
.end method