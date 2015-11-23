.class Lcom/xiaomi/push/service/T;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic aKa:[B

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/xiaomi/push/service/T;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/T;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/T;->aKa:[B

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    const-string v0, "send mi push message"

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->aJY:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/T;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/T;->aKa:[B

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->c(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 529
    iget-object v1, p0, Lcom/xiaomi/push/service/T;->aJY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
