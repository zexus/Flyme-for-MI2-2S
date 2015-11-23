.class Lcom/xiaomi/push/service/ag;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field aKc:Lcom/xiaomi/push/service/y;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V
    .locals 1

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/xiaomi/push/service/ag;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1300
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    .line 1301
    iput-object p2, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    .line 1302
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yQ()V
    .locals 6

    .prologue
    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v2, v2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->K(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->aKc:Lcom/xiaomi/push/service/y;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->f(Lcom/xiaomi/push/service/y;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :goto_0
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 1315
    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
