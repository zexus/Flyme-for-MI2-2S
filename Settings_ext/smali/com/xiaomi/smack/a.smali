.class public abstract Lcom/xiaomi/smack/a;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final aLM:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static aLN:Z


# instance fields
.field protected aFa:Ljava/io/Writer;

.field protected aFb:Ljava/io/Reader;

.field protected aJi:Lcom/xiaomi/push/service/XMPushService;

.field protected aLO:I

.field protected aLP:J

.field private aLQ:Ljava/util/LinkedList;

.field private final aLR:Ljava/util/Collection;

.field protected final aLS:Ljava/util/Map;

.field protected final aLT:Ljava/util/Map;

.field protected aLU:Lcom/xiaomi/smack/a/a;

.field private aLV:I

.field protected final aLW:I

.field protected aLX:Lcom/xiaomi/smack/c;

.field private aLY:J

.field protected challenge:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/smack/a;->aLM:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    sput-boolean v1, Lcom/xiaomi/smack/a;->aLN:Z

    .line 143
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/smack/a;->aLN:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-static {}, Lcom/xiaomi/smack/k;->getVersion()Ljava/lang/String;

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smack/a;->aLO:I

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->aLP:J

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLS:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLT:Ljava/util/Map;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/a;->challenge:Ljava/lang/String;

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    .line 190
    sget-object v0, Lcom/xiaomi/smack/a;->aLM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smack/a;->aLW:I

    .line 671
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->aLY:J

    .line 206
    iput-object p2, p0, Lcom/xiaomi/smack/a;->aLX:Lcom/xiaomi/smack/c;

    .line 207
    iput-object p1, p0, Lcom/xiaomi/smack/a;->aJi:Lcom/xiaomi/push/service/XMPushService;

    .line 208
    return-void
.end method

.method private eg(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 652
    const-string v0, "connected"

    .line 658
    :goto_0
    return-object v0

    .line 653
    :cond_0
    if-nez p1, :cond_1

    .line 654
    const-string v0, "connecting"

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 656
    const-string v0, "disconnected"

    goto :goto_0

    .line 658
    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private el(I)V
    .locals 6

    .prologue
    .line 686
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 687
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 695
    :cond_0
    :goto_0
    monitor-exit v1

    .line 696
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 692
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public Cm()Lcom/xiaomi/smack/c;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLX:Lcom/xiaomi/smack/c;

    return-object v0
.end method

.method public Cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLX:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->Cn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Co()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aLX:Lcom/xiaomi/smack/c;

    invoke-virtual {v1}, Lcom/xiaomi/smack/c;->Cy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    if-nez v1, :cond_4

    .line 496
    :try_start_0
    const-string v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 501
    :goto_1
    if-eqz v1, :cond_2

    .line 503
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 508
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 509
    new-instance v0, Lcom/xiaomi/b/a/a;

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    iget-object v2, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/b/a/a;-><init>(Lcom/xiaomi/smack/a;Ljava/io/Writer;Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    .line 510
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getReader()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    .line 511
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getWriter()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 504
    :catch_1
    move-exception v1

    .line 505
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 518
    :cond_3
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/xiaomi/smack/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/io/Reader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 521
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/a/a;

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 528
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getReader()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    .line 529
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->getWriter()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    goto :goto_0

    .line 523
    :catch_2
    move-exception v0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lcom/xiaomi/smack/a/a;->a(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aFb:Ljava/io/Reader;

    .line 534
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLU:Lcom/xiaomi/smack/a/a;

    iget-object v1, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    invoke-interface {v0, v1}, Lcom/xiaomi/smack/a/a;->a(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->aFa:Ljava/io/Writer;

    goto/16 :goto_0
.end method

.method public Cp()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/xiaomi/smack/a;->aLO:I

    return v0
.end method

.method public Cq()V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smack/a;->aLO:I

    .line 587
    return-void
.end method

.method public Cr()V
    .locals 2

    .prologue
    .line 594
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->aLP:J

    .line 595
    return-void
.end method

.method public abstract Cs()V
.end method

.method public Ct()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    return v0
.end method

.method public Cu()V
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/a;->aLY:J

    .line 675
    return-void
.end method

.method public Cv()Z
    .locals 4

    .prologue
    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/a;->aLY:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/k;->CC()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Cw()V
    .locals 2

    .prologue
    .line 720
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 722
    monitor-exit v1

    .line 723
    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public J(J)Z
    .locals 3

    .prologue
    .line 682
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->aLY:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract K(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(IILjava/lang/Exception;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 600
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-eq p1, v0, :cond_0

    .line 601
    const-string v0, "update the connection status. %1$s -> %2$s : %3$s "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/smack/a;->aLV:I

    invoke-direct {p0, v3}, Lcom/xiaomi/smack/a;->eg(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1}, Lcom/xiaomi/smack/a;->eg(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Lcom/xiaomi/push/service/B;->getErrorDesc(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/a;->el(I)V

    .line 610
    :cond_1
    if-ne p1, v4, :cond_3

    .line 611
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/XMPushService;->ee(I)V

    .line 613
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-eqz v0, :cond_2

    .line 614
    const-string v0, "try set connected while not connecting."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 617
    :cond_2
    iput p1, p0, Lcom/xiaomi/smack/a;->aLV:I

    .line 619
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 620
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;)V

    goto :goto_0

    .line 622
    :cond_3
    if-nez p1, :cond_5

    .line 623
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->Cb()V

    .line 624
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-eq v0, v5, :cond_4

    .line 625
    const-string v0, "try set connecting while not disconnected."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 628
    :cond_4
    iput p1, p0, Lcom/xiaomi/smack/a;->aLV:I

    .line 630
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 631
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/e;->b(Lcom/xiaomi/smack/a;)V

    goto :goto_1

    .line 633
    :cond_5
    if-ne p1, v5, :cond_9

    .line 634
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/XMPushService;->ee(I)V

    .line 636
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-nez v0, :cond_7

    .line 637
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 638
    if-nez p3, :cond_6

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v3, "disconnect while connecting"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0, p0, v1}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    move-object v1, p3

    goto :goto_3

    .line 641
    :cond_7
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-ne v0, v4, :cond_8

    .line 642
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/e;

    .line 643
    invoke-interface {v0, p0, p2, p3}, Lcom/xiaomi/smack/e;->a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V

    goto :goto_4

    .line 646
    :cond_8
    iput p1, p0, Lcom/xiaomi/smack/a;->aLV:I

    .line 648
    :cond_9
    return-void
.end method

.method public a(Lcom/xiaomi/smack/e;)V
    .locals 1

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 2

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/b;-><init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 405
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aLS:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public abstract a(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V
.end method

.method public abstract a([Lcom/xiaomi/smack/packet/e;)V
.end method

.method public b(Lcom/xiaomi/smack/e;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLR:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public b(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 2

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/b;-><init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 442
    iget-object v1, p0, Lcom/xiaomi/smack/a;->aLT:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method public abstract e(Lcom/xiaomi/smack/packet/e;)V
.end method

.method public abstract f(Lcom/xiaomi/push/service/y;)V
.end method

.method protected g(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 471
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->h(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/xiaomi/smack/a;->aLP:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLX:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xiaomi/smack/a;->aLX:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 578
    iget v1, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/xiaomi/smack/a;->aLV:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/a/a/f/c;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 667
    iput-object p1, p0, Lcom/xiaomi/smack/a;->challenge:Ljava/lang/String;

    .line 668
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/xiaomi/smack/a;->a(IILjava/lang/Exception;)V

    .line 669
    return-void
.end method
