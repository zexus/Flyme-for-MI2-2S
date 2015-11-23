.class Lcom/xiaomi/push/service/e;
.super Landroid/os/Handler;
.source "ConnectionJobController.java"


# instance fields
.field final synthetic aIx:Lcom/xiaomi/push/service/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xiaomi/push/service/e;->aIx:Lcom/xiaomi/push/service/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->aIx:Lcom/xiaomi/push/service/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d;Z)Z

    .line 39
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->aIx:Lcom/xiaomi/push/service/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d;J)J

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaomi/push/service/ab;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/service/ab;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/ab;->run()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->aIx:Lcom/xiaomi/push/service/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d;Z)Z

    .line 44
    return-void
.end method
