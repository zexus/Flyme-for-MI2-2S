.class public Lcom/xiaomi/c/p;
.super Ljava/lang/Object;
.source "UploadHostStatHelper.java"


# static fields
.field private static aHB:Lcom/xiaomi/c/p;


# instance fields
.field private aFx:Landroid/content/Context;

.field private aHA:Z

.field private aHy:Ljava/util/List;

.field private final aHz:Ljava/util/Random;

.field private axo:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/p;->aHy:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/p;->aHz:Ljava/util/Random;

    .line 50
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Upload Http Record Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/c/p;->axo:Ljava/util/Timer;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/c/p;->aHA:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/c/p;->aFx:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/p;->aFx:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static declared-synchronized Bb()Lcom/xiaomi/c/p;
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/xiaomi/c/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/c/p;->aHB:Lcom/xiaomi/c/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 135
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "n"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "d"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "t"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "s"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "56C6A520%$C99119A0&^229(!@2746C7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/c/p;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v1, "http://%1$s/diagnoses/v1/report"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/xiaomi/c/p;->aFx:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/xiaomi/a/a/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 142
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/c/p;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xiaomi/c/p;->aHy:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/c/p;Ljava/util/List;D)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/c/p;->a(Ljava/util/List;D)V

    return-void
.end method

.method private a(Ljava/util/List;D)V
    .locals 6

    .prologue
    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 109
    new-instance v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    invoke-direct {v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;-><init>()V

    .line 110
    const-string v3, "httpapi"

    invoke-virtual {v2, v3}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->cD(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    .line 111
    invoke-virtual {v2, v0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->c(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    .line 112
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/Common;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->c(Lcom/xiaomi/common/logger/thrift/Common;)Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    .line 113
    new-instance v0, Ljava/lang/String;

    new-instance v3, Lorg/apache/thrift/g;

    new-instance v4, Lorg/apache/thrift/protocol/TCompactProtocol$Factory;

    invoke-direct {v4}, Lorg/apache/thrift/protocol/TCompactProtocol$Factory;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/thrift/g;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    invoke-virtual {v3, v2}, Lorg/apache/thrift/g;->b(Lorg/apache/thrift/TBase;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/f/a;->e([B)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 118
    iget-object v2, p0, Lcom/xiaomi/c/p;->aHz:Ljava/util/Random;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, p2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 121
    :try_start_0
    const-string v2, "f3.mi-stat.gslb.mi-idc.com"

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/c/p;->F(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    .line 129
    :cond_1
    return-void

    .line 124
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/c/p;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/xiaomi/c/p;->aHA:Z

    return p1
.end method

.method private getBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 157
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 147
    invoke-direct {p0, p1}, Lcom/xiaomi/c/p;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 148
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 149
    const-string v0, "%1$032X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcom/xiaomi/c/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/c/p;->aHB:Lcom/xiaomi/c/p;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/xiaomi/c/p;

    invoke-direct {v0, p0}, Lcom/xiaomi/c/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/c/p;->aHB:Lcom/xiaomi/c/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit v1

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Bc()V
    .locals 4

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/xiaomi/c/p;->aHA:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/c/p;->aHA:Z

    .line 78
    iget-object v0, p0, Lcom/xiaomi/c/p;->axo:Ljava/util/Timer;

    new-instance v1, Lcom/xiaomi/c/q;

    invoke-direct {v1, p0}, Lcom/xiaomi/c/q;-><init>(Lcom/xiaomi/c/p;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 100
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/c/r;)V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/p;->aHy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/xiaomi/c/r;)V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/p;->aHy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
