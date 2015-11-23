.class Lcom/xiaomi/push/service/ac;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/xiaomi/push/service/ac;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1145
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1146
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    const-string v0, "ask the job queue to quit"

    return-object v0
.end method

.method public yQ()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/xiaomi/push/service/ac;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->quit()Z

    .line 1151
    return-void
.end method
