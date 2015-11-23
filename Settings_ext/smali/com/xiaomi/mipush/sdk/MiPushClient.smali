.class public abstract Lcom/xiaomi/mipush/sdk/MiPushClient;
.super Ljava/lang/Object;
.source "MiPushClient.java"


# static fields
.field private static aFp:Z

.field private static aFq:Landroid/content/Context;

.field private static aFr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFp:Z

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFr:J

    return-void
.end method

.method static declared-synchronized B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 966
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    monitor-exit v1

    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 971
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 972
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    monitor-exit v1

    return-void

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized D(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 976
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 977
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    monitor-exit v1

    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized E(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 981
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 982
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    monitor-exit v1

    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized F(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 986
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 987
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    monitor-exit v1

    return-void

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized G(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 991
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 992
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    monitor-exit v1

    return-void

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 1006
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 1011
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 1016
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 396
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 406
    :goto_0
    const-string v1, "bar:click"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 407
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 408
    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cj(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 409
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOW:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 411
    :goto_1
    return-void

    .line 400
    :cond_0
    const-string v0, "do not report clicked message"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :cond_1
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 415
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "do not report clicked message"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 421
    const-string v0, "bar:click"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 422
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 423
    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cj(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 424
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOW:Lcom/xiaomi/xmpush/thrift/ActionType;

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/i;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string v2, "appID"

    invoke-static {p1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-string v2, "appToken"

    invoke-static {p2, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    .line 136
    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 137
    sput-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    .line 139
    :cond_0
    if-eqz p3, :cond_1

    .line 140
    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/i;)V

    .line 143
    :cond_1
    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->yN()I

    move-result v2

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->yN()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 144
    :cond_2
    if-nez v0, :cond_9

    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/mipush/sdk/a;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->zL()Z

    move-result v2

    if-nez v2, :cond_9

    .line 147
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/l;->cl(Landroid/content/Context;)I

    move-result v0

    if-ne v1, v0, :cond_8

    .line 148
    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/i;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/p;->zX()V

    .line 161
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zD()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 164
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 165
    const-string v1, "client_info_update"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 166
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 168
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "app_version"

    sget-object v3, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zJ()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 171
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "deviceid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOW:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 177
    :cond_4
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    const-string v1, "update_devId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/a/a/a/a;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 178
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zP()V

    .line 179
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    const-string v1, "update_devId"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/a/a/a/a;->e(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 183
    :cond_5
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->cc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 185
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 186
    const-string v0, "pull"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 187
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cj(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 189
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOW:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 191
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->cj(Landroid/content/Context;)V

    .line 217
    :cond_6
    :goto_1
    sget-boolean v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFp:Z

    if-eqz v0, :cond_7

    .line 218
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->cd(Landroid/content/Context;)V

    .line 224
    :cond_7
    :goto_2
    return-void

    .line 152
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zH()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v0, "register"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/l;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 196
    :cond_9
    const/4 v1, 0x6

    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/a/a/f/d;->dN(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->clear()V

    .line 200
    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->yN()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/a;->dM(I)V

    .line 201
    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/xiaomi/mipush/sdk/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ce(Landroid/content/Context;)V

    .line 204
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V

    .line 205
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ea(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 206
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->eb(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 207
    invoke-virtual {v2, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ee(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ed(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 209
    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ef(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ec(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 213
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 617
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 620
    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;-><init>()V

    .line 621
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->dP(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 622
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->dQ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 623
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->dR(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 624
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->dS(Ljava/lang/String;)V

    goto :goto_1

    .line 627
    :cond_1
    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->dU(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->dT(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 629
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOX:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 879
    if-nez p0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not nullable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "set-alias"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 583
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_0
    const-string v0, "set-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->J(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 589
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/l;->cl(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 590
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 614
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v6, "set-alias"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    .line 594
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/l;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    .line 596
    :cond_2
    const-string v0, "unset-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->J(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t cancel alias for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_3
    const-string v0, "set-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->I(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 601
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/l;->cl(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 602
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 604
    :cond_4
    const-string v6, "set-account"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    .line 606
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/l;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    .line 608
    :cond_5
    const-string v0, "unset-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->I(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t cancel account for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :cond_6
    invoke-static {p0, p1, v7, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    const-string v0, "unset-alias"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public static cc(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/p;->Ad()Z

    move-result v0

    return v0
.end method

.method private static cd(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 249
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    const-string v1, "wake_up"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wake_up"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected static ce(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 336
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    const-string v1, "wake_up"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 341
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 342
    const-string v1, "wake_up"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    return-void
.end method

.method static cf(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 348
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaomi/a/a/f/d;->dN(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->zG()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->clear()V

    .line 356
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V

    .line 360
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ea(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 361
    invoke-virtual {v3, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->eb(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 362
    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ee(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 363
    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ef(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ed(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ec(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 367
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V

    goto :goto_0
.end method

.method public static cg(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 434
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/p;->Ag()V

    .line 435
    return-void
.end method

.method public static ch(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 441
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;-><init>()V

    .line 445
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->el(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 446
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->em(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 447
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->en(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 448
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->ep(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->eo(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 450
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)V

    .line 451
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->zV()V

    .line 452
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->invalidate()V

    .line 453
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ce(Landroid/content/Context;)V

    .line 454
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->cg(Landroid/content/Context;)V

    .line 455
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->ci(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static ci(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 572
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/p;->dS(I)V

    .line 573
    return-void
.end method

.method private static cj(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1027
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1028
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_pull_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    return-void
.end method

.method private static ck(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1032
    const-string v1, "mipush_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "last_pull_notification"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 498
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->H(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 503
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;-><init>()V

    .line 504
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->eg(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 505
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->eh(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 506
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->ei(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->ej(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 508
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->ek(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 509
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOQ:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v0, v2, v4}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0

    .line 512
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/l;->cl(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    .line 513
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    const-string v0, "subscribe-topic"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/l;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    .line 519
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/l;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 531
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->H(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t cancel subscribe for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unsubscribed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;-><init>()V

    .line 539
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->zQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->eq(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 540
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->er(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 542
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->es(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->et(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 544
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->eu(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 545
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p;->co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOR:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 996
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 997
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "accept_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    monitor-exit v1

    return-void

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static zP()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/g;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/g;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 242
    return-void
.end method

.method protected static declared-synchronized zQ()Ljava/lang/String;
    .locals 6

    .prologue
    .line 873
    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/xiaomi/a/a/f/d;->dN(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFr:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    sget-wide v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFr:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    monitor-exit v1

    return-object v0

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic zR()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->aFq:Landroid/content/Context;

    return-object v0
.end method
