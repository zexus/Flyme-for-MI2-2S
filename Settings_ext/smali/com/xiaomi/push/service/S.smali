.class Lcom/xiaomi/push/service/S;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic aJZ:I

.field final synthetic aKa:[B

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/xiaomi/push/service/S;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lcom/xiaomi/push/service/S;->aJZ:I

    iput-object p4, p0, Lcom/xiaomi/push/service/S;->aKa:[B

    iput-object p5, p0, Lcom/xiaomi/push/service/S;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    const-string v0, "clear account cache."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/xiaomi/push/service/S;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/i;->cB(Landroid/content/Context;)V

    .line 482
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->dt(Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/xiaomi/push/service/S;->aJZ:I

    invoke-static {v0}, Lcom/xiaomi/a/a/d/a;->dM(I)V

    .line 484
    iget-object v0, p0, Lcom/xiaomi/push/service/S;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/c;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/smack/c;->Cx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->setHost(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/xiaomi/push/service/S;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/S;->aKa:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/S;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->c([BLjava/lang/String;)V

    .line 486
    return-void
.end method
