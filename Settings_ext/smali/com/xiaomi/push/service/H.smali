.class Lcom/xiaomi/push/service/H;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"


# static fields
.field private static aJH:I


# instance fields
.field private aJE:I

.field private aJF:J

.field private aJG:I

.field private aJi:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x12c

    sput v0, Lcom/xiaomi/push/service/H;->aJH:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    .line 31
    iput-object p1, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/H;->aJF:J

    .line 34
    return-void
.end method

.method private BP()I
    .locals 8

    .prologue
    const/16 v0, 0x28

    const/16 v1, 0x14

    const/16 v2, 0xa

    .line 78
    iget v3, p0, Lcom/xiaomi/push/service/H;->aJG:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 79
    const/16 v0, 0x12c

    .line 112
    :goto_0
    return v0

    .line 81
    :cond_0
    iget v3, p0, Lcom/xiaomi/push/service/H;->aJG:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 82
    const/16 v0, 0x3c

    goto :goto_0

    .line 84
    :cond_1
    iget v3, p0, Lcom/xiaomi/push/service/H;->aJG:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    move v0, v2

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    iget-wide v4, p0, Lcom/xiaomi/push/service/H;->aJF:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    iget-wide v6, p0, Lcom/xiaomi/push/service/H;->aJF:J

    sub-long/2addr v4, v6

    .line 93
    const-wide/32 v6, 0x493e0

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    .line 98
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    sget v1, Lcom/xiaomi/push/service/H;->aJH:I

    if-lt v0, v1, :cond_4

    .line 99
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    goto :goto_0

    .line 101
    :cond_4
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    .line 102
    iget v1, p0, Lcom/xiaomi/push/service/H;->aJE:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/xiaomi/push/service/H;->aJE:I

    goto :goto_0

    .line 104
    :cond_5
    const-wide/32 v6, 0xdbba0

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    .line 105
    iget v1, p0, Lcom/xiaomi/push/service/H;->aJE:I

    if-ge v1, v0, :cond_6

    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    :cond_6
    iput v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    .line 106
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    goto :goto_0

    .line 107
    :cond_7
    const-wide/32 v6, 0x1b7740

    cmp-long v0, v4, v6

    if-gez v0, :cond_9

    .line 108
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    :goto_1
    iput v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    .line 109
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    goto :goto_0

    :cond_8
    move v0, v1

    .line 108
    goto :goto_1

    .line 111
    :cond_9
    iput v2, p0, Lcom/xiaomi/push/service/H;->aJE:I

    .line 112
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJE:I

    goto :goto_0
.end method


# virtual methods
.method public BO()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/H;->aJF:J

    .line 39
    iget-object v0, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->ee(I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    .line 41
    return-void
.end method

.method public bM(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 44
    iget-object v0, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->BU()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->ee(I)V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/Z;

    iget-object v2, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/service/Z;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 48
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->ef(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/xiaomi/push/service/H;->BP()I

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/Z;

    iget-object v3, p0, Lcom/xiaomi/push/service/H;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/Z;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 57
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    .line 59
    iget v0, p0, Lcom/xiaomi/push/service/H;->aJG:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 60
    invoke-static {}, Lcom/xiaomi/push/service/v;->BD()V

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "should not reconnect as no client or network."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
