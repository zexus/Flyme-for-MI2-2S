.class Lcom/xiaomi/push/service/Q;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xiaomi/push/service/Q;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "prepare the mi push account."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/Q;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/Q;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/d/g;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/p;)V

    .line 199
    iget-object v0, p0, Lcom/xiaomi/push/service/Q;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->f(Lcom/xiaomi/push/service/XMPushService;)V

    .line 200
    return-void
.end method
