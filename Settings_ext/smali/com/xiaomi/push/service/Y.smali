.class Lcom/xiaomi/push/service/Y;
.super Lcom/xiaomi/push/service/ab;
.source "XMPushService.java"


# instance fields
.field private final aKc:Lcom/xiaomi/push/service/y;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/y;)V
    .locals 1

    .prologue
    .line 1267
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    .line 1268
    iput-object p1, p0, Lcom/xiaomi/push/service/Y;->aKc:Lcom/xiaomi/push/service/y;

    .line 1269
    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind time out. chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/Y;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1284
    instance-of v0, p1, Lcom/xiaomi/push/service/Y;

    if-nez v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/xiaomi/push/service/Y;

    iget-object v0, p1, Lcom/xiaomi/push/service/Y;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v0, v0, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/Y;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/xiaomi/push/service/Y;->aKc:Lcom/xiaomi/push/service/y;

    iget-object v0, v0, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public yQ()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1273
    iget-object v0, p0, Lcom/xiaomi/push/service/Y;->aKc:Lcom/xiaomi/push/service/y;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x15

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1275
    return-void
.end method
