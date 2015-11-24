.class public Lcom/android/settings_ext/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static final Tl:Ljava/util/Set;

.field private static Tm:Ljava/util/HashMap;

.field private static Tn:Ljava/util/HashMap;


# instance fields
.field private volatile To:Ljava/lang/ref/WeakReference;

.field private final Tp:Landroid/os/storage/StorageVolume;

.field private final Tq:Z

.field private final Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private Ts:J

.field private Tt:J

.field private Tu:J

.field Tv:Ljava/util/List;

.field private final uf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 79
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 87
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tl:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tm:Ljava/util/HashMap;

    .line 96
    const-string v0, "external"

    .line 97
    sget-object v1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tm:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tm:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tm:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tn:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tp:Landroid/os/storage/StorageVolume;

    .line 193
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tq:Z

    .line 194
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->uf:Z

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 200
    return-void

    :cond_1
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Landroid/content/Context;Ljava/io/File;)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 589
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 590
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "sum(_size)"

    aput-object v1, v2, v5

    .line 592
    const-string v1, "_data like?"

    .line 593
    new-array v4, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 597
    :try_start_0
    const-string v3, "_data like?"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 600
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 607
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_0
    :goto_0
    return-wide v0

    .line 607
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 607
    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 604
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 5

    .prologue
    .line 540
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v0

    .line 541
    const-string v2, "StorageMeasurement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDirectorySize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-wide v0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Ts:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Landroid/net/Uri;Landroid/content/Context;Ljava/io/File;)J
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tp:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ext/deviceinfo/StorageMeasurement;
    .locals 3

    .prologue
    .line 111
    sget-object v1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tn:Ljava/util/HashMap;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tn:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    .line 113
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 115
    sget-object v2, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tn:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 637
    return-void
.end method

.method private a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 234
    :goto_0
    if-nez v0, :cond_2

    .line 235
    sget-boolean v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "StorageMeasurement"

    const-string v1, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tt:J

    return-wide p1
.end method

.method static synthetic b(Landroid/util/SparseLongArray;IJ)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tq:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tt:J

    return-wide v0
.end method

.method static synthetic c(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tu:J

    return-wide p1
.end method

.method static synthetic d(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tu:J

    return-wide v0
.end method

.method static synthetic d(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;J)J
    .locals 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tt:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tt:J

    return-wide v0
.end method

.method static synthetic e(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->om()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Ts:J

    return-wide v0
.end method

.method static synthetic g(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->uf:Z

    return v0
.end method

.method private om()V
    .locals 6

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 226
    :goto_0
    if-nez v0, :cond_1

    .line 230
    :goto_1
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_1
    iget-wide v2, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Ts:J

    iget-wide v4, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tt:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;JJ)V

    goto :goto_1
.end method

.method static synthetic on()Ljava/util/Set;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tl:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic oo()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tm:Ljava/util/HashMap;

    return-object v0
.end method

.method public static r(J)J
    .locals 4

    .prologue
    .line 532
    const-string v0, "sys.memory.threshold.low"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 534
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 535
    sub-long v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    .line 206
    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->To:Ljava/lang/ref/WeakReference;

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 222
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->Tr:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 212
    :cond_0
    return-void
.end method
