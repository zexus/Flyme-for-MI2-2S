.class Lcom/xiaomi/push/service/ae;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field private aJI:Lcom/xiaomi/smack/packet/e;

.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/xiaomi/push/service/ae;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1205
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/ae;->aJI:Lcom/xiaomi/smack/packet/e;

    .line 1206
    iput-object p2, p0, Lcom/xiaomi/push/service/ae;->aJI:Lcom/xiaomi/smack/packet/e;

    .line 1207
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1216
    const-string v0, "receive a message."

    return-object v0
.end method

.method public yQ()V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/xiaomi/push/service/ae;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->k(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ae;->aJI:Lcom/xiaomi/smack/packet/e;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->c(Lcom/xiaomi/smack/packet/e;)V

    .line 1212
    return-void
.end method
