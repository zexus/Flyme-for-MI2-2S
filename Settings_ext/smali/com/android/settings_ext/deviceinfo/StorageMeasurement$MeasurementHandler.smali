.class Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# instance fields
.field private TD:Lcom/android/internal/app/IMediaContainerService;

.field private volatile TE:Z

.field private TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final TG:Landroid/content/ServiceConnection;

.field final synthetic TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

.field private final mContext:Ljava/lang/ref/WeakReference;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    .line 342
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TE:Z

    .line 324
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TG:Landroid/content/ServiceConnection;

    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 344
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TD:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TE:Z

    return p1
.end method

.method private b(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 6

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J

    .line 412
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J

    .line 415
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "sys.memory.threshold.low"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 418
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v3}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->c(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->c(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J

    .line 419
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->d(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->d(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->e(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)V

    .line 427
    return-void

    .line 407
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string v1, "StorageMeasurement"

    const-string v2, "Problem in container service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->d(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    .line 517
    :cond_0
    iget-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tx:J

    iput-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    .line 518
    iget-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    iget-wide v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Ty:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    .line 519
    iget-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    iget-wide v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    .line 520
    iget-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    iget-wide v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    .line 521
    iget-object v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 522
    iget-wide v4, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    sub-long v2, v4, v2

    iput-wide v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    goto :goto_0

    .line 524
    :cond_1
    iget-wide v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 525
    iput-wide v6, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    .line 527
    :cond_2
    return-void
.end method

.method private c(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    .line 431
    :goto_0
    if-nez v5, :cond_2

    .line 508
    :cond_0
    :goto_1
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    .line 435
    :cond_2
    new-instance v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v2}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 436
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->f(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tx:J

    .line 439
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->c(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Ty:J

    .line 441
    const-string v0, "user"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 443
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 445
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 446
    new-instance v7, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v7, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 450
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "support_internal_sdcard"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->g(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mixed"

    const-string v8, "ro.boot.sdcard.type"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 456
    :goto_2
    if-eqz v0, :cond_7

    .line 457
    invoke-static {}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->on()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    invoke-virtual {v7, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 461
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 462
    invoke-static {}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->oo()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 463
    if-eqz v1, :cond_6

    .line 464
    iget-object v10, v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v11, v1, v5, v9}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Landroid/net/Uri;Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move v0, v1

    .line 450
    goto :goto_2

    .line 466
    :cond_6
    iget-object v1, v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 473
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->g(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 474
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    .line 482
    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 483
    new-instance v7, Landroid/os/Environment$UserEnvironment;

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v7, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 484
    invoke-virtual {v7}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v8

    .line 485
    iget-object v7, v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TC:Landroid/util/SparseLongArray;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0, v8, v9}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 474
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    goto :goto_4

    .line 489
    :cond_b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 490
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->g(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 491
    :cond_c
    const/16 v0, 0x2200

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 495
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    mul-int v5, v0, v1

    .line 496
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$StatsObserver;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-static {v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 499
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 500
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 501
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2, v5, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 506
    :cond_e
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 348
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 350
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-static {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 356
    :cond_2
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TE:Z

    if-eqz v2, :cond_3

    .line 362
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 363
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TD:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 365
    :cond_3
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TG:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 373
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    .line 374
    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->b(Lcom/android/internal/app/IMediaContainerService;)V

    .line 375
    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->c(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_2
    iget-boolean v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TE:Z

    if-eqz v2, :cond_6

    .line 381
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 382
    :cond_4
    if-nez v0, :cond_5

    .line 383
    monitor-exit v1

    goto :goto_0

    .line 389
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 386
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TE:Z

    .line 387
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TG:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 393
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 395
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TH:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-static {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 400
    :pswitch_4
    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->TF:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
