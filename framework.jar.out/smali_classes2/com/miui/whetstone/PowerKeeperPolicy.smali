.class public Lcom/miui/whetstone/PowerKeeperPolicy;
.super Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.source "PowerKeeperPolicy.java"


# static fields
.field public static final DEFAULT_UID:I = -0xa

.field private static final TAG:Ljava/lang/String; = "PowerKeeperPolicy"

.field private static final debug:Z

.field private static sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;


# instance fields
.field private mAlarmDataTotal:I

.field private mAlarmRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAlarmTypeData:Landroid/util/SparseIntArray;

.field private mAlarmUidData:Landroid/util/SparseIntArray;

.field private mBlockedWakelockUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastDataTotal:I

.field private mBroadcastRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastTypeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastUidData:Landroid/util/SparseIntArray;

.field private mLock:Ljava/lang/Object;

.field private final mPolicyLock:Ljava/lang/Object;

.field private mPowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private releaseWakeLockHoldByUid:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;-><init>()V

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    .line 49
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    .line 50
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    .line 52
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    .line 53
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    .line 54
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    .line 56
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    .line 57
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 62
    const-string v1, "com.android.server.power.PowerManagerServiceInjector"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    .line 64
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const-string v2, "releaseWakeLockHoldByUid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/whetstone/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->releaseWakeLockHoldByUid:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;-><init>()V

    sput-object v0, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 75
    :cond_0
    sget-object v0, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method private hasAlarmRestrict(II)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "type"    # I

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 151
    .local v1, "alarmRestrictTypes":[I
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .line 154
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-eqz v1, :cond_0

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 158
    aget v4, v1, v2

    if-ne v4, p2, :cond_1

    .line 159
    const/4 v3, 0x1

    .line 165
    .end local v2    # "i":I
    :cond_0
    return v3

    .line 154
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 157
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hasBroadcastRestrict(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 171
    .local v1, "broadcastRestrictTypes":[Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 174
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 178
    aget-object v4, v1, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    const/4 v3, 0x1

    .line 185
    .end local v2    # "i":I
    :cond_0
    return v3

    .line 174
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 177
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkWakelockBlocked(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_0
    monitor-exit v2

    .line 285
    return v0

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkWakelockBlocked(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "workSrouceUid"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    const-string v1, "*sync*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :cond_0
    monitor-exit v2

    .line 296
    return v0

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 320
    const-string v8, "\nDump of PowerKeeperPolicy:\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const-string v8, "====mAlarmRestricts:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget v4, v0, v3

    .line 326
    .local v4, "item":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 328
    .end local v4    # "item":I
    :cond_0
    const-string v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const-string v8, "\n====mBroadcastRestricts:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v6, :cond_2

    aget-object v4, v0, v3

    .line 335
    .local v4, "item":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 332
    .end local v4    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 339
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n====Total block alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " times"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const/4 v2, 0x0

    :goto_4
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 341
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 342
    .local v5, "key":I
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 343
    .local v7, "times":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAlarmTypeData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 345
    .end local v5    # "key":I
    .end local v7    # "times":I
    :cond_4
    const/4 v2, 0x0

    :goto_5
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 346
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 347
    .restart local v5    # "key":I
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 348
    .restart local v7    # "times":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAlarmUidData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 351
    .end local v5    # "key":I
    .end local v7    # "times":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n====Total block broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " times"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 354
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBroadcastTypeData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 356
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v2, 0x0

    :goto_7
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 357
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 358
    .restart local v5    # "key":I
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 359
    .restart local v7    # "times":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBroadcastUidData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 362
    .end local v5    # "key":I
    .end local v7    # "times":I
    :cond_7
    const-string v8, "\n====mBlockedWakelockUids====\n\t"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2    # "i":I
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 364
    .local v2, "i":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 366
    .end local v2    # "i":Ljava/lang/Integer;
    :cond_8
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public getAlarmName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 243
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 237
    :pswitch_1
    const-string v0, "RTC"

    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_0

    .line 241
    :pswitch_3
    const-string v0, "ELAPSED_REALTIME"

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;
    .locals 5

    .prologue
    .line 102
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/AlarmPolicy;

    .line 103
    .local v1, "policies":[Lcom/miui/whetstone/AlarmPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 105
    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v3, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v1
.end method

.method public getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;
    .locals 5

    .prologue
    .line 136
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/BroadcastPolicy;

    .line 137
    .local v1, "policies":[Lcom/miui/whetstone/BroadcastPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 138
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 137
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    .line 140
    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v3, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_1
    return-object v1
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 189
    const/4 v0, 0x1

    .line 191
    .local v0, "alarmAllowed":Z
    if-ltz p3, :cond_0

    const/4 v3, 0x3

    if-le p3, v3, :cond_1

    :cond_0
    move v1, v0

    .line 208
    .end local v0    # "alarmAllowed":Z
    .local v1, "alarmAllowed":I
    :goto_0
    return v1

    .line 194
    .end local v1    # "alarmAllowed":I
    .restart local v0    # "alarmAllowed":Z
    :cond_1
    const/16 v3, -0xa

    invoke-direct {p0, v3, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    :cond_2
    const/4 v0, 0x0

    .line 196
    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAlarmAllowedLocked, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    if-nez v0, :cond_4

    .line 201
    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    .line 202
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 203
    .local v2, "count":I
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .end local v2    # "count":I
    :cond_4
    move v1, v0

    .line 208
    .restart local v1    # "alarmAllowed":I
    goto :goto_0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "broadcastAllowed":Z
    if-nez p3, :cond_0

    move v1, v0

    .line 229
    .end local v0    # "broadcastAllowed":Z
    .local v1, "broadcastAllowed":I
    :goto_0
    return v1

    .line 214
    .end local v1    # "broadcastAllowed":I
    .restart local v0    # "broadcastAllowed":Z
    :cond_0
    const/16 v3, -0xa

    invoke-direct {p0, v3, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasBroadcastRestrict(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasBroadcastRestrict(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    :cond_1
    const/4 v0, 0x0

    .line 216
    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBroadcastAllowedLocked, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    if-nez v0, :cond_4

    .line 221
    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    .line 222
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 223
    .local v2, "count":Ljava/lang/Integer;
    if-nez v2, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .end local v2    # "count":Ljava/lang/Integer;
    :cond_4
    move v1, v0

    .line 229
    .restart local v1    # "broadcastAllowed":I
    goto :goto_0
.end method

.method public releaseWakeLockHoldByUid(I)V
    .locals 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 302
    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->releaseWakeLockHoldByUid:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 304
    const-string v2, "PowerKeeperPolicy"

    const-string v3, "whetstone.activity releaseWakeLockHoldByUid is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->releaseWakeLockHoldByUid:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release wakelock by uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 312
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V
    .locals 5
    .param p1, "policies"    # [Lcom/miui/whetstone/AlarmPolicy;
    .param p2, "clear"    # Z

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 85
    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    .line 98
    :cond_0
    return-void

    .line 87
    :cond_1
    if-eqz p1, :cond_0

    .line 88
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 90
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 91
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    array-length v2, v2

    if-nez v2, :cond_5

    .line 92
    :cond_3
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_5
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V
    .locals 5
    .param p1, "policies"    # [Lcom/miui/whetstone/BroadcastPolicy;
    .param p2, "clear"    # Z

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 118
    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    .line 132
    :cond_0
    return-void

    .line 120
    :cond_1
    if-eqz p1, :cond_0

    .line 121
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 123
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 124
    aget-object v2, p1, v1

    if-nez v2, :cond_4

    .line 123
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_4
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    if-eqz v2, :cond_5

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_6

    .line 126
    :cond_5
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    .line 129
    :cond_6
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public updateWakelockBlockedUid(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 251
    .local v0, "callerUid":I
    const/4 v2, 0x0

    .line 252
    .local v2, "needRelease":Z
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 254
    if-eqz p2, :cond_3

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    const/4 v2, 0x1

    .line 268
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v2, :cond_0

    .line 271
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->releaseWakeLockHoldByUid(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedWakelockUids:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
