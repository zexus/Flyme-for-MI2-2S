.class public Lcom/xiaomi/push/service/I;
.super Lcom/xiaomi/push/service/ab;
.source "SendMessageJob.java"


# instance fields
.field private aIr:Lcom/xiaomi/push/service/XMPushService;

.field private aJI:Lcom/xiaomi/smack/packet/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/I;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 17
    iput-object p1, p0, Lcom/xiaomi/push/service/I;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/push/service/I;->aJI:Lcom/xiaomi/smack/packet/e;

    .line 19
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "send a message."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/I;->aIr:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/I;->aJI:Lcom/xiaomi/smack/packet/e;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/smack/packet/e;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 27
    iget-object v1, p0, Lcom/xiaomi/push/service/I;->aIr:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
