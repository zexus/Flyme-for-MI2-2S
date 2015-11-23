.class public Lcom/xiaomi/push/service/Z;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/xiaomi/push/service/Z;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1365
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    const-string v0, "do reconnect.."

    return-object v0
.end method

.method public yQ()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/xiaomi/push/service/Z;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->BU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/xiaomi/push/service/Z;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->l(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1373
    :goto_0
    return-void

    .line 1371
    :cond_0
    const-string v0, "should not connect. quit the job."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
