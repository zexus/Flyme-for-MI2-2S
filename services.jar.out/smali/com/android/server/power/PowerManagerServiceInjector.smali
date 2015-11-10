.class public Lcom/android/server/power/PowerManagerServiceInjector;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceInjector"

.field private static sBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private static sDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private static sLock:Ljava/lang/Object;

.field private static sPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private static sWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUserActivityTimeoutLocked(I)V
    .locals 12
    .param p0, "stayOnWhilePluggedInSetting"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 65
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceInjector;->isProximitySensorInUse()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->isStayonWhilePluggedIn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v7, 0x0

    .line 71
    .local v7, "foregroundScreenWakeLock":I
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 72
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 73
    .local v10, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v1, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int v11, v1, v4

    .line 74
    .local v11, "wakeLockType":I
    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    .line 79
    :sswitch_0
    const-string v1, "PowerManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wakeLock held when timeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x1

    if-eq v11, v1, :cond_2

    .line 82
    iget v1, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v1, v6, :cond_3

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 89
    :cond_3
    iget v1, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getCurAdjByPid(I)I

    move-result v0

    .line 90
    .local v0, "curAdj":I
    iget v1, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getProcStateByPid(I)I

    move-result v9

    .line 91
    .local v9, "procState":I
    if-gtz v0, :cond_2

    const/16 v1, 0x8

    if-eq v9, v1, :cond_2

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "curAdj":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "procState":I
    .end local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v11    # "wakeLockType":I
    :cond_4
    if-nez v7, :cond_0

    .line 103
    const-string v1, "PowerManagerServiceInjector"

    const-string v4, "screen timeout, anyway, goto sleep"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "now":J
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    goto/16 :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public static checkWakelockBlocked(Ljava/lang/String;Landroid/os/WorkSource;I)Z
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x1

    .line 234
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    .line 236
    .local v3, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    :try_start_0
    invoke-virtual {v3, p2}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkWakelockBlocked(I)Z

    move-result v4

    .line 237
    .local v4, "ret":Z
    if-ne v4, v8, :cond_0

    .line 238
    const-string v5, "PowerManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wakelock blocked: tag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 242
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 243
    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkWakelockBlocked(Ljava/lang/String;I)Z

    move-result v4

    .line 244
    if-ne v4, v8, :cond_2

    .line 245
    const-string v5, "PowerManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wakelock blocked: tag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ws = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "ret":Z
    :cond_1
    :goto_1
    return v4

    .line 242
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v4    # "ret":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "ret":Z
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static checkWhenSleepRequestedLocked(I)V
    .locals 5
    .param p0, "reason"    # I

    .prologue
    .line 111
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    const-string v2, "PowerManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeLock held when sleep request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getReasonName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 114
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    const-string v2, "PowerManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    return-void

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static checkWorkSourceUid(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4
    .param p0, "uid"    # I
    .param p1, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 219
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 220
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne p0, v3, :cond_1

    .line 222
    const/4 v2, 0x1

    .line 229
    :cond_0
    :goto_1
    return v2

    .line 219
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getPartialWakeLockHoldByUid(I)I
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 149
    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_0
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "wakeLockNum":I
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 153
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 154
    .local v4, "ws":Landroid/os/WorkSource;
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v5, p0, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 157
    :cond_1
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int v3, v5, v7

    .line 158
    .local v3, "wakeLockType":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v3    # "wakeLockType":I
    .end local v4    # "ws":Landroid/os/WorkSource;
    :cond_2
    monitor-exit v6

    .line 164
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "wakeLockNum":I
    :goto_1
    return v2

    :cond_3
    monitor-exit v6

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static getReasonName(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 130
    packed-switch p0, :pswitch_data_0

    .line 144
    const-string v0, "unknown reason"

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    const-string v0, "device administration policy"

    goto :goto_0

    .line 134
    :pswitch_1
    const-string v0, "screen timeout"

    goto :goto_0

    .line 136
    :pswitch_2
    const-string v0, "application request"

    goto :goto_0

    .line 138
    :pswitch_3
    const-string v0, "lid switch"

    goto :goto_0

    .line 140
    :pswitch_4
    const-string v0, "power button"

    goto :goto_0

    .line 142
    :pswitch_5
    const-string v0, "HDMI standby"

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getScreenWakeLockHoldByUid(I)I
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 169
    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 170
    :try_start_0
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "wakeLockNum":I
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 173
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 174
    .local v4, "ws":Landroid/os/WorkSource;
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v5, p0, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 177
    :cond_1
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int v3, v5, v7

    .line 178
    .local v3, "wakeLockType":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 182
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 183
    goto :goto_0

    .line 188
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v3    # "wakeLockType":I
    .end local v4    # "ws":Landroid/os/WorkSource;
    :cond_2
    monitor-exit v6

    .line 190
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "wakeLockNum":I
    :goto_1
    return v2

    :cond_3
    monitor-exit v6

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public static init(Lcom/android/server/power/PowerManagerService;Landroid/os/BatteryManagerInternal;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0
    .param p0, "powerManagerService"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "batteryManagerInternal"    # Landroid/os/BatteryManagerInternal;
    .param p2, "displayPowerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p4, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/PowerManagerService;",
            "Landroid/os/BatteryManagerInternal;",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "allWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 38
    sput-object p1, Lcom/android/server/power/PowerManagerServiceInjector;->sBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 39
    sput-object p2, Lcom/android/server/power/PowerManagerServiceInjector;->sDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 40
    sput-object p3, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    .line 41
    sput-object p4, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private static isProximitySensorInUse()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 45
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-ne v1, v0, :cond_0

    .line 47
    const-string v1, "PowerManagerServiceInjector"

    const-string v2, "useProximitySensor is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStayonWhilePluggedIn(I)Z
    .locals 2
    .param p0, "stayOnWhilePluggedInSetting"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-eqz v1, :cond_0

    .line 55
    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1, p0}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 58
    :cond_0
    return v0
.end method

.method public static releaseWakeLockHoldByUid(I)V
    .locals 7
    .param p0, "uid"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 196
    .local v0, "callerUid":I
    if-eq v0, v6, :cond_1

    .line 215
    :cond_0
    return-void

    .line 197
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 198
    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 199
    .local v2, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz v2, :cond_2

    .line 200
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v4, "*sync*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v3, v6, :cond_3

    .line 201
    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    .line 202
    add-int/lit8 v1, v1, -0x1

    .line 197
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_3
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v3, p0, :cond_4

    invoke-static {p0, v2}, Lcom/android/server/power/PowerManagerServiceInjector;->checkWorkSourceUid(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    :cond_4
    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    .line 210
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
