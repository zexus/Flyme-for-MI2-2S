.class Lcom/xiaomi/push/service/ai;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field aKc:Lcom/xiaomi/push/service/y;

.field aKe:I

.field aKf:Ljava/lang/String;

.field reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/xiaomi/push/service/ai;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1335
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    .line 1336
    iput-object p2, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    .line 1337
    iput p3, p0, Lcom/xiaomi/push/service/ai;->aKe:I

    .line 1338
    iput-object p4, p0, Lcom/xiaomi/push/service/ai;->aKf:Ljava/lang/String;

    .line 1339
    iput-object p5, p0, Lcom/xiaomi/push/service/ai;->reason:Ljava/lang/String;

    .line 1340
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbind the channel. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

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
    .line 1344
    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v0, v0, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v2, v2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->K(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->aKc:Lcom/xiaomi/push/service/y;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iget v2, p0, Lcom/xiaomi/push/service/ai;->aKe:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/push/service/ai;->reason:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/ai;->aKf:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1353
    return-void

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 1349
    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
