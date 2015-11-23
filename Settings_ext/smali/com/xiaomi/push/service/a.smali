.class public Lcom/xiaomi/push/service/a;
.super Lcom/xiaomi/push/service/ab;
.source "BatchSendMessageJob.java"


# instance fields
.field private aIr:Lcom/xiaomi/push/service/XMPushService;

.field private aIs:[Lcom/xiaomi/smack/packet/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/smack/packet/d;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 16
    iput-object p1, p0, Lcom/xiaomi/push/service/a;->aIr:Lcom/xiaomi/push/service/XMPushService;

    .line 17
    iput-object p2, p0, Lcom/xiaomi/push/service/a;->aIs:[Lcom/xiaomi/smack/packet/d;

    .line 18
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "batch send message."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a;->aIr:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/a;->aIs:[Lcom/xiaomi/smack/packet/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a([Lcom/xiaomi/smack/packet/e;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 26
    iget-object v1, p0, Lcom/xiaomi/push/service/a;->aIr:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
