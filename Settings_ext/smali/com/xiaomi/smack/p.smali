.class public Lcom/xiaomi/smack/p;
.super Lcom/xiaomi/smack/a;
.source "XMPPConnection.java"


# instance fields
.field private aIr:Lcom/xiaomi/push/service/XMPushService;

.field private aMA:Ljava/lang/String;

.field private volatile aMB:J

.field private volatile aMC:J

.field private final aMD:Ljava/lang/String;

.field private volatile aME:J

.field private aMF:I

.field public aMv:Ljava/lang/Exception;

.field aMw:Ljava/lang/String;

.field private aMx:Ljava/lang/String;

.field aMy:Lcom/xiaomi/smack/j;

.field aMz:Lcom/xiaomi/smack/h;

.field protected socket:Ljava/net/Socket;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    .line 61
    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    .line 70
    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMw:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/xiaomi/smack/p;->user:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMx:Ljava/lang/String;

    .line 90
    iput-wide v2, p0, Lcom/xiaomi/smack/p;->aMB:J

    .line 91
    iput-wide v2, p0, Lcom/xiaomi/smack/p;->aMC:J

    .line 92
    const-string v0, "<pf><p>t:%1$d</p></pf>"

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMD:Ljava/lang/String;

    .line 100
    iput-wide v2, p0, Lcom/xiaomi/smack/p;->aME:J

    .line 112
    iput-object p1, p0, Lcom/xiaomi/smack/p;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 113
    return-void
.end method

.method private declared-synchronized CG()V
    .locals 2

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/smack/p;->CH()V

    .line 428
    new-instance v0, Lcom/xiaomi/smack/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/j;-><init>(Lcom/xiaomi/smack/p;)V

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    .line 429
    new-instance v0, Lcom/xiaomi/smack/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/h;-><init>(Lcom/xiaomi/smack/p;)V

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMz:Lcom/xiaomi/smack/h;

    .line 435
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aLX:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->Cy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->zB()Lcom/xiaomi/smack/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 437
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->zC()Lcom/xiaomi/smack/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->zC()Lcom/xiaomi/smack/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smack/p;->b(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->CB()V

    .line 450
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMz:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->startup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private CH()V
    .locals 4

    .prologue
    .line 455
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aFb:Ljava/io/Reader;

    .line 458
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aFa:Ljava/io/Writer;

    .line 464
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aFb:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/p;->aFa:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->Co()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/xiaomi/smack/p;)Lcom/xiaomi/push/service/XMPushService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aIr:Lcom/xiaomi/push/service/XMPushService;

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/p;->aME:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aIr:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget v0, p0, Lcom/xiaomi/smack/p;->aMF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/smack/p;->aMF:I

    .line 282
    iget v0, p0, Lcom/xiaomi/smack/p;->aMF:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max short conn time reached, sink down current host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 286
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/xiaomi/smack/p;->a(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 287
    iput v4, p0, Lcom/xiaomi/smack/p;->aMF:I

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iput v4, p0, Lcom/xiaomi/smack/p;->aMF:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 8

    .prologue
    .line 304
    invoke-static {}, Lcom/xiaomi/smack/c;->Cx()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/c/f;->de(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 308
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->AU()V

    .line 310
    :cond_0
    return-void
.end method

.method private b(Lcom/xiaomi/smack/c;)V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/xiaomi/smack/c;->getPort()I

    move-result v1

    .line 330
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/smack/p;->u(Ljava/lang/String;I)V

    .line 331
    return-void
.end method

.method private u(Ljava/lang/String;I)V
    .locals 12

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get bucket for host : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->co(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 346
    invoke-virtual {p0, p1}, Lcom/xiaomi/smack/p;->dG(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 347
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/c/c;->a(Ljava/lang/Integer;)V

    .line 348
    if-eqz v0, :cond_0

    .line 349
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->bH(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/smack/p;->aME:J

    .line 357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 360
    iget v3, p0, Lcom/xiaomi/smack/p;->aLO:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/xiaomi/smack/p;->aLO:I

    .line 362
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin to connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->createSocket()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    .line 365
    iget-object v3, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 367
    invoke-static {v1, p2}, Lcom/xiaomi/c/d;->s(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 368
    iget-object v4, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    const/16 v5, 0x2710

    invoke-virtual {v4, v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 369
    iget-object v3, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 370
    iput-object v1, p0, Lcom/xiaomi/smack/p;->aMA:Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Lcom/xiaomi/smack/p;->CG()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/4 v6, 0x1

    .line 374
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iput-wide v2, p0, Lcom/xiaomi/smack/p;->aLP:J

    .line 376
    if-eqz v0, :cond_2

    .line 377
    iget-wide v2, p0, Lcom/xiaomi/smack/p;->aLP:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJ)V

    .line 379
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/smack/p;->aME:J

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/xiaomi/smack/p;->aLP:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v6

    .line 412
    :cond_3
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->AU()V

    .line 414
    if-nez v2, :cond_7

    .line 415
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :catch_0
    move-exception v6

    move v7, v2

    .line 383
    :goto_1
    if-eqz v0, :cond_4

    .line 384
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 386
    :cond_4
    iput-object v6, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: Could not connect to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 389
    const-string v2, "SMACK: Could not connect to "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 406
    if-nez v7, :cond_9

    .line 407
    iget-object v2, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v7

    :goto_2
    move v2, v1

    .line 410
    goto/16 :goto_0

    .line 392
    :catch_1
    move-exception v6

    move v7, v2

    .line 393
    :goto_3
    if-eqz v0, :cond_5

    .line 394
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/c/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 396
    :cond_5
    iput-object v6, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: Could not connect to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 398
    const-string v2, "SMACK: Could not connect to "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 406
    if-nez v7, :cond_9

    .line 407
    iget-object v2, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v7

    goto :goto_2

    .line 401
    :catch_2
    move-exception v3

    .line 403
    :goto_4
    :try_start_4
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "abnormal exception"

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    .line 404
    invoke-static {v3}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 406
    if-nez v2, :cond_8

    .line 407
    iget-object v3, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    invoke-static {v1, v3}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v2

    goto :goto_2

    .line 406
    :catchall_0
    move-exception v0

    move v7, v2

    :goto_5
    if-nez v7, :cond_6

    .line 407
    iget-object v2, p0, Lcom/xiaomi/smack/p;->aMv:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    throw v0

    .line 417
    :cond_7
    return-void

    .line 406
    :catchall_1
    move-exception v0

    move v7, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 401
    :catch_3
    move-exception v2

    move-object v3, v2

    move v2, v6

    goto :goto_4

    .line 392
    :catch_4
    move-exception v2

    move v7, v6

    move-object v6, v2

    goto/16 :goto_3

    .line 382
    :catch_5
    move-exception v2

    move v7, v6

    move-object v6, v2

    goto/16 :goto_1

    :cond_8
    move v1, v2

    goto/16 :goto_2

    :cond_9
    move v1, v7

    goto/16 :goto_2
.end method


# virtual methods
.method public CI()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 516
    .line 517
    iget-wide v0, p0, Lcom/xiaomi/smack/p;->aMC:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/smack/p;->aMB:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 518
    :cond_0
    const-string v0, ""

    .line 523
    :goto_0
    invoke-static {}, Lcom/xiaomi/d/j;->De()Ljava/lang/String;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_2

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<q>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</q>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/smack/p;->aMx:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :cond_1
    const-string v0, "<pf><p>t:%1$d</p></pf>"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/xiaomi/smack/p;->aMC:J

    iget-wide v4, p0, Lcom/xiaomi/smack/p;->aMB:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public CJ()V
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/p;->aMB:J

    .line 568
    return-void
.end method

.method public CK()V
    .locals 2

    .prologue
    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/p;->aMC:J

    .line 572
    return-void
.end method

.method public Cs()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->Cs()V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/xiaomi/smack/p;->aIr:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/smack/q;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/xiaomi/smack/q;-><init>(Lcom/xiaomi/smack/p;IJ)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the packetwriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/packet/Presence;

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Type;->aNx:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    .line 197
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/packet/Presence;->setChannelId(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p2}, Lcom/xiaomi/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/j;->e(Lcom/xiaomi/smack/packet/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/smack/p;->b(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V

    .line 271
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/smack/p;->aME:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p3}, Lcom/xiaomi/smack/p;->a(Ljava/lang/Exception;)V

    .line 275
    :cond_0
    return-void
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 321
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 322
    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/p;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aIr:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/r;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/smack/r;-><init>(Lcom/xiaomi/smack/p;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 547
    return-void
.end method

.method protected declared-synchronized b(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->Ct()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_0

    .line 263
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/smack/p;->a(IILjava/lang/Exception;)V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/p;->challenge:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMz:Lcom/xiaomi/smack/h;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMz:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->shutdown()V

    .line 224
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMz:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->cleanup()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMz:Lcom/xiaomi/smack/h;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 229
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->cleanup()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/smack/p;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aFb:Ljava/io/Reader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    .line 248
    :try_start_6
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aFb:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    :goto_3
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/xiaomi/smack/p;->aFb:Ljava/io/Reader;

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aFa:Ljava/io/Writer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_4

    .line 255
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aFa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 258
    :goto_4
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/xiaomi/smack/p;->aFa:Ljava/io/Writer;

    .line 261
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/p;->aMB:J

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/p;->aMC:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_a
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    goto :goto_4

    .line 249
    :catch_2
    move-exception v0

    goto :goto_3

    .line 241
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized connect()V
    .locals 3

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :goto_0
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smack/p;->a(IILjava/lang/Exception;)V

    .line 494
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aLX:Lcom/xiaomi/smack/c;

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/p;->b(Lcom/xiaomi/smack/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 550
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public dF(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/xiaomi/smack/p;->aMx:Ljava/lang/String;

    .line 508
    return-void
.end method

.method dG(Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 2

    .prologue
    .line 554
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/c/f;->i(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/xiaomi/c/b;->AI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    new-instance v1, Lcom/xiaomi/smack/s;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smack/s;-><init>(Lcom/xiaomi/smack/p;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/smack/d/i;->execute(Ljava/lang/Runnable;)V

    .line 563
    :cond_0
    return-object v0
.end method

.method public e(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMy:Lcom/xiaomi/smack/j;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/j;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 318
    return-void

    .line 316
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized f(Lcom/xiaomi/push/service/y;)V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/l;

    invoke-direct {v0}, Lcom/xiaomi/smack/l;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/xiaomi/smack/p;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/smack/l;->a(Lcom/xiaomi/push/service/y;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xiaomi/smack/p;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xiaomi/smack/p;->aMA:Ljava/lang/String;

    return-object v0
.end method
