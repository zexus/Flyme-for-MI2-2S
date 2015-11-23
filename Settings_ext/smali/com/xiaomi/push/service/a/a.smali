.class public Lcom/xiaomi/push/service/a/a;
.super Ljava/lang/Object;
.source "AlarmManagerTimer.java"


# static fields
.field private static volatile aKm:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPi:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/a/a;->aKm:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    .line 21
    iput-object v0, p0, Lcom/xiaomi/push/service/a/a;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/xiaomi/push/service/a/a;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 48
    const-class v0, Landroid/app/AlarmManager;

    .line 50
    :try_start_0
    const-string v1, "setExact"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Intent;J)V
    .locals 4

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    monitor-exit p0

    return-void

    .line 33
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 35
    iget-object v1, p0, Lcom/xiaomi/push/service/a/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/xiaomi/push/service/a/a;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 44
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/push/service/a/a;->aKm:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 40
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized bO(Z)V
    .locals 8

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/B;->ACTION_PING_TIMER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/xiaomi/push/service/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {}, Lcom/xiaomi/smack/k;->CD()I

    move-result v1

    int-to-long v2, v1

    .line 68
    if-nez p1, :cond_0

    sget-wide v4, Lcom/xiaomi/push/service/a/a;->aKm:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    rem-long/2addr v6, v2

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/xiaomi/push/service/a/a;->aKm:J

    .line 76
    :cond_1
    :goto_0
    sget-wide v2, Lcom/xiaomi/push/service/a/a;->aKm:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/a/a;->a(Landroid/content/Intent;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 71
    :cond_2
    :try_start_1
    sget-wide v4, Lcom/xiaomi/push/service/a/a;->aKm:J

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/push/service/a/a;->aKm:J

    .line 72
    sget-wide v4, Lcom/xiaomi/push/service/a/a;->aKm:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/xiaomi/push/service/a/a;->aKm:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAlive()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 83
    iget-object v1, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/a/a;->mPi:Landroid/app/PendingIntent;

    .line 85
    const-string v0, "unregister timer"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 86
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/a/a;->aKm:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
