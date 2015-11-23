.class Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# instance fields
.field private RO:I

.field private final TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final TK:I

.field private final TL:Landroid/os/Message;

.field private final Tq:Z


# direct methods
.method public constructor <init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 253
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->Tq:Z

    .line 254
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 255
    iput p3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TK:I

    .line 256
    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TL:Landroid/os/Message;

    .line 257
    iput p5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->RO:I

    .line 258
    return-void
.end method

.method private c(Landroid/content/pm/PackageStats;)V
    .locals 10

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->Tq:Z

    if-eqz v0, :cond_2

    .line 274
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 275
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 276
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 277
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 281
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 282
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    .line 286
    :cond_0
    iget v6, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iget v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TK:I

    if-ne v6, v7, :cond_1

    .line 287
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    add-long/2addr v4, v8

    iput-wide v4, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    .line 288
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v6, v4, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->TC:Landroid/util/SparseLongArray;

    iget v5, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->b(Landroid/util/SparseLongArray;IJ)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v4, v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 304
    :goto_0
    return-void

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    .line 302
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TJ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    .line 263
    if-eqz p2, :cond_0

    .line 264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->c(Landroid/content/pm/PackageStats;)V

    .line 266
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->RO:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->RO:I

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->TL:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    :cond_1
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
