.class Lcom/xiaomi/smack/r;
.super Lcom/xiaomi/push/service/ab;
.source "XMPPConnection.java"


# instance fields
.field final synthetic aMH:Lcom/xiaomi/smack/p;

.field final synthetic aMI:Ljava/lang/Exception;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/p;IILjava/lang/Exception;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/xiaomi/smack/r;->aMH:Lcom/xiaomi/smack/p;

    iput p3, p0, Lcom/xiaomi/smack/r;->val$error:I

    iput-object p4, p0, Lcom/xiaomi/smack/r;->aMI:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown the connection. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smack/r;->val$error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/r;->aMI:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/xiaomi/smack/r;->aMH:Lcom/xiaomi/smack/p;

    invoke-static {v0}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/p;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smack/r;->val$error:I

    iget-object v2, p0, Lcom/xiaomi/smack/r;->aMI:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 540
    return-void
.end method
