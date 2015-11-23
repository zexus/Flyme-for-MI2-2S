.class Lcom/xiaomi/push/service/O;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/xiaomi/push/service/O;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1489
    const-string v0, "disconnect because of connecting timeout"

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/xiaomi/push/service/O;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1485
    return-void
.end method
