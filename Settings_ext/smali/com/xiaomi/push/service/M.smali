.class Lcom/xiaomi/push/service/M;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/g;


# instance fields
.field final synthetic aJY:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xiaomi/push/service/M;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xiaomi/push/service/M;->aJY:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/ae;

    iget-object v2, p0, Lcom/xiaomi/push/service/M;->aJY:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/ae;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 126
    return-void
.end method
