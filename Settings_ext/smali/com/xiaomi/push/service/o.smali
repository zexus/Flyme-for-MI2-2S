.class final Lcom/xiaomi/push/service/o;
.super Lcom/xiaomi/push/service/ab;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic aII:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 0

    .prologue
    .line 266
    iput-object p2, p0, Lcom/xiaomi/push/service/o;->aII:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/o;->aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const-string v0, "send ack message for message."

    return-object v0
.end method

.method public yQ()V
    .locals 3

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/o;->aII:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/o;->aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/m;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/xiaomi/push/service/o;->aII:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 276
    iget-object v1, p0, Lcom/xiaomi/push/service/o;->aII:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
