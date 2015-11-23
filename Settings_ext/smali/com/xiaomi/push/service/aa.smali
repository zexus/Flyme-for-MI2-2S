.class public Lcom/xiaomi/push/service/aa;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field public aKd:Ljava/lang/Exception;

.field public reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/xiaomi/push/service/aa;->aJY:Lcom/xiaomi/push/service/XMPushService;

    .line 1386
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1387
    iput p2, p0, Lcom/xiaomi/push/service/aa;->reason:I

    .line 1388
    iput-object p3, p0, Lcom/xiaomi/push/service/aa;->aKd:Ljava/lang/Exception;

    .line 1389
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1397
    const-string v0, "disconnect the connection."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/xiaomi/push/service/aa;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/aa;->reason:I

    iget-object v2, p0, Lcom/xiaomi/push/service/aa;->aKd:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1393
    return-void
.end method
