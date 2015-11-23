.class Lcom/xiaomi/push/service/U;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic aKb:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/xiaomi/push/service/U;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/U;->aKb:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string v0, "add Stats message"

    return-object v0
.end method

.method public yQ()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/xiaomi/push/service/U;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/U;->aKb:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    .line 627
    return-void
.end method
