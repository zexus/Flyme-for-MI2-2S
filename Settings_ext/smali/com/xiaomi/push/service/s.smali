.class final Lcom/xiaomi/push/service/s;
.super Lcom/xiaomi/push/service/ab;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic aII:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

.field final synthetic aIL:Ljava/lang/String;

.field final synthetic aIM:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p2, p0, Lcom/xiaomi/push/service/s;->aII:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/s;->aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iput-object p4, p0, Lcom/xiaomi/push/service/s;->aIL:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/s;->aIM:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-string v0, "send wrong message ack for message."

    return-object v0
.end method

.method public yQ()V
    .locals 4

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/s;->aII:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/s;->aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/m;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 366
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    const-string v2, "error"

    iget-object v3, p0, Lcom/xiaomi/push/service/s;->aIL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    const-string v2, "reason"

    iget-object v3, p0, Lcom/xiaomi/push/service/s;->aIM:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/xiaomi/push/service/s;->aII:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 371
    iget-object v1, p0, Lcom/xiaomi/push/service/s;->aII:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
