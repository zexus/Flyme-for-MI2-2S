.class Lcom/xiaomi/push/service/X;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field aKc:Lcom/xiaomi/push/service/y;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V
    .locals 1

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/xiaomi/push/service/X;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1225
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

    .line 1226
    iput-object p2, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

    .line 1227
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

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
    .line 1232
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/X;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    const-string v0, "trying bind while the connection is not created, quit!"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 1254
    :goto_0
    return-void

    .line 1237
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v2, v2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v0

    .line 1239
    if-nez v0, :cond_1

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore bind because the channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 1252
    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0

    .line 1241
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_2

    .line 1242
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/a;->f(Lcom/xiaomi/push/service/y;)V

    .line 1245
    iget-object v1, p0, Lcom/xiaomi/push/service/X;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/d/j;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V

    goto :goto_0

    .line 1247
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying duplicate bind, ingore! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
