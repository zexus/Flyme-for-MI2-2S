.class public Lcom/xiaomi/d/f;
.super Ljava/lang/Object;
.source "StatsContext.java"

# interfaces
.implements Lcom/xiaomi/smack/e;


# instance fields
.field aIr:Lcom/xiaomi/push/service/XMPushService;

.field private exception:Ljava/lang/Exception;

.field private reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaomi/d/f;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 17
    return-void
.end method


# virtual methods
.method CT()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->aKD:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/d/j;->c(IILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xiaomi/d/f;->reason:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 34
    iput p2, p0, Lcom/xiaomi/d/f;->reason:I

    .line 35
    iput-object p3, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    .line 36
    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/d/j;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->aKq:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/d/j;->b(IIILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/xiaomi/d/f;->reason:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    .line 27
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->aKD:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/d/j;->z(II)V

    .line 28
    return-void
.end method
