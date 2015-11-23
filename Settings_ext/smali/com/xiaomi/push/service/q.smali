.class final Lcom/xiaomi/push/service/q;
.super Lcom/xiaomi/push/service/ab;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic aII:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 0

    .prologue
    .line 311
    iput-object p2, p0, Lcom/xiaomi/push/service/q;->aII:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/q;->aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string v0, "send ack message for unrecognized new miui message."

    return-object v0
.end method

.method public yQ()V
    .locals 4

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/q;->aII:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/q;->aIJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/m;->e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    const-string v2, "miui_message_unrecognized"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/xiaomi/push/service/q;->aII:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 322
    iget-object v1, p0, Lcom/xiaomi/push/service/q;->aII:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
