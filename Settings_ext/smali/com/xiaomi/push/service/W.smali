.class Lcom/xiaomi/push/service/W;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/xiaomi/push/service/W;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    const-string v0, "disconnect for service destroy."

    return-object v0
.end method

.method public yQ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 941
    iget-object v0, p0, Lcom/xiaomi/push/service/W;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/xiaomi/push/service/W;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/smack/packet/Presence;

    sget-object v2, Lcom/xiaomi/smack/packet/Presence$Type;->aNx:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/smack/a;->a(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V

    .line 944
    iget-object v0, p0, Lcom/xiaomi/push/service/W;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/a;

    .line 946
    :cond_0
    return-void
.end method
