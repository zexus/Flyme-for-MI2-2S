.class Lcom/xiaomi/smack/q;
.super Lcom/xiaomi/push/service/ab;
.source "XMPPConnection.java"


# instance fields
.field final synthetic aMG:J

.field final synthetic aMH:Lcom/xiaomi/smack/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/p;IJ)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/xiaomi/smack/q;->aMH:Lcom/xiaomi/smack/p;

    iput-wide p3, p0, Lcom/xiaomi/smack/q;->aMG:J

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "check the ping-pong."

    return-object v0
.end method

.method public yQ()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xiaomi/smack/q;->aMH:Lcom/xiaomi/smack/p;

    invoke-virtual {v0}, Lcom/xiaomi/smack/p;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/q;->aMH:Lcom/xiaomi/smack/p;

    iget-wide v2, p0, Lcom/xiaomi/smack/q;->aMG:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/smack/p;->J(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaomi/smack/q;->aMH:Lcom/xiaomi/smack/p;

    invoke-static {v0}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/p;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 129
    :cond_0
    return-void
.end method
