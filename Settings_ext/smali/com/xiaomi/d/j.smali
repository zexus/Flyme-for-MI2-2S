.class public Lcom/xiaomi/d/j;
.super Ljava/lang/Object;
.source "StatsHelper.java"


# static fields
.field private static final aOM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->aKp:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    sput v0, Lcom/xiaomi/d/j;->aOM:I

    return-void
.end method

.method public static Dc()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/d/j;->aOM:I

    invoke-static {v0, v1}, Lcom/xiaomi/d/j;->z(II)V

    .line 107
    return-void
.end method

.method public static Dd()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/d/j;->aOM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/d/j;->c(IILjava/lang/String;)V

    .line 111
    return-void
.end method

.method public static De()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Da()Lcom/xiaomi/push/thrift/StatsEvents;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/a/a/f/a;->e([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stat encoded size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/xiaomi/d/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/d/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V

    .line 82
    invoke-virtual {v0}, Lcom/xiaomi/d/a;->CR()V

    .line 83
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Db()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 57
    if-lez p1, :cond_0

    .line 58
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->aKu:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->ei(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 59
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->dz(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 60
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->ej(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 61
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/d/d;->c(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v1

    .line 65
    iget-object v2, v1, Lcom/xiaomi/d/e;->aOG:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->ei(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 66
    iget-object v1, v1, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->dA(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 67
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->dz(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 68
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/d/d;->d(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Db()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v1

    .line 33
    iget-object v2, v0, Lcom/xiaomi/d/e;->aOG:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->ei(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 34
    iget-object v0, v0, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->dA(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 35
    invoke-virtual {v1, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->dz(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 36
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 130
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/d/g;->a(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/d/g;->a(IIILjava/lang/String;)V

    .line 115
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/d/d;->f(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Db()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/xiaomi/d/e;->aOG:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->ei(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 47
    iget-object v0, v0, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->dA(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 48
    invoke-virtual {v1, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->dz(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 49
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized c(IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 95
    const-class v1, Lcom/xiaomi/d/j;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    .line 97
    sget-object v4, Lcom/xiaomi/d/k;->aON:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/d/k;->aON:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    invoke-virtual {v4, p0, p1, v0, p2}, Lcom/xiaomi/d/g;->a(IIILjava/lang/String;)V

    .line 99
    sget-object v0, Lcom/xiaomi/d/k;->aON:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit v1

    return-void

    .line 101
    :cond_0
    :try_start_1
    const-string v0, "stats key not found"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized z(II)V
    .locals 6

    .prologue
    .line 86
    const-class v1, Lcom/xiaomi/d/j;

    monitor-enter v1

    const v0, 0xffffff

    if-ge p1, v0, :cond_0

    .line 87
    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    .line 88
    :try_start_0
    sget-object v2, Lcom/xiaomi/d/k;->aON:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit v1

    return-void

    .line 90
    :cond_0
    :try_start_1
    const-string v0, "stats key should less than 16777215"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
