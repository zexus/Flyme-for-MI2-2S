.class public Lcom/xiaomi/push/service/f;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static aIA:Ljava/lang/String;

.field private static aIy:Ljava/lang/String;

.field private static aIz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/xiaomi/push/service/f;->aIy:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/xiaomi/push/service/f;->aIz:Ljava/lang/String;

    .line 15
    sput-object v0, Lcom/xiaomi/push/service/f;->aIA:Ljava/lang/String;

    return-void
.end method

.method public static cw(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 41
    sget-object v0, Lcom/xiaomi/push/service/f;->aIy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/xiaomi/push/service/f;->aIy:Ljava/lang/String;

    .line 63
    :goto_0
    return-object v0

    .line 45
    :cond_0
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 46
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    const/16 v1, 0xa

    move v6, v1

    move-object v1, v2

    move v2, v6

    .line 48
    :goto_1
    if-nez v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 50
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    goto :goto_1

    .line 56
    :cond_1
    if-eqz v1, :cond_2

    .line 57
    sput-object v1, Lcom/xiaomi/push/service/f;->aIy:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v0, v1

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static declared-synchronized cx(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 67
    const-class v3, Lcom/xiaomi/push/service/f;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/f;->aIA:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/xiaomi/push/service/f;->aIA:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit v3

    return-object v0

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v2, v0

    .line 80
    :goto_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v0, v4, :cond_1

    .line 81
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 83
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/d;->ct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/f;->aIA:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/xiaomi/push/service/f;->aIA:Ljava/lang/String;

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method public static cy(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 18
    sget-object v0, Lcom/xiaomi/push/service/f;->aIz:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 20
    invoke-static {p0}, Lcom/xiaomi/push/service/f;->cw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 31
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/d;->ct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/f;->aIz:Ljava/lang/String;

    .line 37
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/f;->aIz:Ljava/lang/String;

    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
