.class Lcom/xiaomi/push/service/V;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/push/service/A;


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/xiaomi/push/service/V;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 3

    .prologue
    .line 774
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->b(Lcom/xiaomi/push/service/XMPushService;)V

    .line 776
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->c(Lcom/xiaomi/push/service/XMPushService;)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const v1, 0x42c1d81

    const-string v2, " the push is not connected."

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/l;->b(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
