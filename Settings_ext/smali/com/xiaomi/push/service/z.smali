.class Lcom/xiaomi/push/service/z;
.super Ljava/lang/Object;
.source "PushClientsManager.java"

# interfaces
.implements Lcom/xiaomi/push/service/A;


# instance fields
.field final synthetic aJk:Lcom/xiaomi/push/service/y;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/y;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xiaomi/push/service/z;->aJk:Lcom/xiaomi/push/service/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 4

    .prologue
    .line 222
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xiaomi/push/service/z;->aJk:Lcom/xiaomi/push/service/y;

    invoke-static {v0}, Lcom/xiaomi/push/service/y;->c(Lcom/xiaomi/push/service/y;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/z;->aJk:Lcom/xiaomi/push/service/y;

    invoke-static {v1}, Lcom/xiaomi/push/service/y;->b(Lcom/xiaomi/push/service/y;)Lcom/xiaomi/push/service/Y;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/z;->aJk:Lcom/xiaomi/push/service/y;

    invoke-static {v0}, Lcom/xiaomi/push/service/y;->c(Lcom/xiaomi/push/service/y;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/z;->aJk:Lcom/xiaomi/push/service/y;

    invoke-static {v1}, Lcom/xiaomi/push/service/y;->b(Lcom/xiaomi/push/service/y;)Lcom/xiaomi/push/service/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/ab;)V

    goto :goto_0
.end method
