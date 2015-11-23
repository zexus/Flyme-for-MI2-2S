.class Lcom/xiaomi/push/service/ah;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/xiaomi/push/service/ah;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1404
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1405
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    const-string v0, "reset the connection."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1409
    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->BU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->l(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1412
    :cond_0
    return-void
.end method
