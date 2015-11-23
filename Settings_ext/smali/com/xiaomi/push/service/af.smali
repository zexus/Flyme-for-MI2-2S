.class Lcom/xiaomi/push/service/af;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/xiaomi/push/service/af;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1423
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1424
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1441
    const-string v0, "send ping.."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    :try_start_0
    invoke-static {}, Lcom/xiaomi/d/j;->Dc()V

    .line 1431
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->Cs()V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 1434
    iget-object v1, p0, Lcom/xiaomi/push/service/af;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
