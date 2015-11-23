.class public Lcom/xiaomi/d/g;
.super Ljava/lang/Object;
.source "StatsHandler.java"


# instance fields
.field private aOH:Z

.field private aOI:Lcom/xiaomi/d/f;

.field private aOJ:Ljava/util/LinkedList;

.field private duration:I

.field private startTime:J

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/d/g;->aOH:Z

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    .line 50
    return-void
.end method

.method public static CU()Lcom/xiaomi/d/g;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/d/i;->aOL:Lcom/xiaomi/d/g;

    return-object v0
.end method

.method static CV()Lcom/xiaomi/d/f;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/d/i;->aOL:Lcom/xiaomi/d/g;

    iget-object v0, v0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    return-object v0
.end method

.method private CX()V
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/xiaomi/d/g;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/d/g;->startTime:J

    .line 108
    :cond_0
    return-void
.end method

.method private CY()V
    .locals 4

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xiaomi/d/g;->aOH:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/d/g;->startTime:J

    sub-long/2addr v0, v2

    .line 113
    iget v2, p0, Lcom/xiaomi/d/g;->duration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/d/g;->aOH:Z

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/d/g;->startTime:J

    .line 118
    :cond_0
    return-void
.end method

.method private K(J)V
    .locals 2

    .prologue
    .line 244
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method private a(IIILjava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 228
    invoke-direct {p0, p6, p7}, Lcom/xiaomi/d/g;->K(J)V

    .line 229
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 231
    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 232
    iput p2, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 233
    iput p3, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 234
    iput-object p5, v0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    .line 235
    iput-object p4, v0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 237
    iget-object v1, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 239
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "add stats: chid = %s, type =%d, value = %d, connpt = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private em(I)Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 6

    .prologue
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v2, Lcom/xiaomi/push/thrift/StatsEvents;

    iget-object v0, p0, Lcom/xiaomi/d/g;->uuid:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/push/thrift/StatsEvents;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 163
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    iget-object v0, v0, Lcom/xiaomi/d/f;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/e/a;->ca(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    iget-object v0, v0, Lcom/xiaomi/d/f;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/f;->cy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/thrift/StatsEvents;->dC(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents;

    .line 168
    :cond_0
    new-instance v3, Lorg/apache/thrift/transport/b;

    invoke-direct {v3, p1}, Lorg/apache/thrift/transport/b;-><init>(I)V

    .line 169
    new-instance v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;

    move-result-object v4

    .line 171
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/xiaomi/push/thrift/StatsEvents;->b(Lorg/apache/thrift/protocol/d;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent;

    .line 180
    invoke-virtual {v0, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->b(Lorg/apache/thrift/protocol/d;)V

    .line 181
    invoke-virtual {v3}, Lorg/apache/thrift/transport/b;->length()I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-le v5, p1, :cond_2

    .line 192
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat approximate size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/thrift/transport/b;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 195
    return-object v2

    .line 184
    :cond_2
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_1

    .line 172
    :catch_1
    move-exception v0

    goto :goto_0

    .line 189
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public CW()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/xiaomi/d/g;->aOH:Z

    return v0
.end method

.method CZ()Z
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/xiaomi/d/g;->CY()V

    .line 122
    iget-boolean v0, p0, Lcom/xiaomi/d/g;->aOH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized Da()Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/d/g;->CZ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/16 v0, 0x2ee

    .line 151
    invoke-static {}, Lcom/xiaomi/smack/d/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/e/a;->ca(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const/16 v0, 0x177

    .line 154
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/d/g;->em(I)Lcom/xiaomi/push/thrift/StatsEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 156
    :cond_1
    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Db()Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 6

    .prologue
    .line 212
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    iget-object v1, v1, Lcom/xiaomi/d/f;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/a/a/e/a;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->dy(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 215
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 216
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->ek(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 218
    return-object v0
.end method

.method public declared-synchronized a(IIILjava/lang/String;)V
    .locals 8

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/g;->uuid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "StatsHandler.add() Should initialized before add"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    iget-object v0, v0, Lcom/xiaomi/d/f;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/e/a;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/d/g;->a(IIILjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/p;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/d/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/d/f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/d/g;->uuid:Ljava/lang/String;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOI:Lcom/xiaomi/d/f;

    invoke-virtual {p2, v0}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/e;)V

    .line 69
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/J;->BQ()Lcom/xiaomi/push/service/J;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/d/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/d/h;-><init>(Lcom/xiaomi/d/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/L;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v2, "chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "salt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "XIAOMI_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, ""

    .line 137
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method declared-synchronized c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/d/g;->K(J)V

    .line 224
    iget-object v0, p0, Lcom/xiaomi/d/g;->aOJ:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDuration(I)V
    .locals 2

    .prologue
    const v0, 0x240c8400

    .line 90
    if-lez p1, :cond_0

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/d/g;->aOH:Z

    .line 93
    mul-int/lit16 v1, p1, 0x3e8

    .line 94
    if-le v1, v0, :cond_1

    .line 97
    :goto_0
    iget v1, p0, Lcom/xiaomi/d/g;->duration:I

    if-eq v1, v0, :cond_0

    .line 98
    iput v0, p0, Lcom/xiaomi/d/g;->duration:I

    .line 99
    invoke-direct {p0}, Lcom/xiaomi/d/g;->CX()V

    .line 102
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
