.class public Lcom/xiaomi/push/service/PacketSync;
.super Ljava/lang/Object;
.source "PacketSync.java"


# instance fields
.field private aIV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    .line 42
    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/a;)V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/a;->getText()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/smack/c;->Cx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/c/f;->de(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 212
    invoke-virtual {v1, v0}, Lcom/xiaomi/c/b;->f([Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 214
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method private d(Lcom/xiaomi/smack/packet/e;)V
    .locals 7

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/k;->dK(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/k;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/xiaomi/smack/packet/e;)V
    .locals 12

    .prologue
    const/4 v9, 0x7

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    const-string v0, "5"

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->d(Lcom/xiaomi/smack/packet/e;)V

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/xiaomi/smack/n;

    if-eqz v0, :cond_8

    .line 50
    check-cast p1, Lcom/xiaomi/smack/n;

    .line 51
    invoke-virtual {p1}, Lcom/xiaomi/smack/n;->CF()Lcom/xiaomi/smack/o;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/xiaomi/smack/n;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lcom/xiaomi/smack/n;->getTo()Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 62
    sget-object v5, Lcom/xiaomi/smack/o;->aMt:Lcom/xiaomi/smack/o;

    if-ne v1, v5, :cond_3

    .line 63
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/smack/n;->CN()Lcom/xiaomi/smack/packet/h;

    move-result-object v8

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: channel bind failed, error="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 69
    if-eqz v8, :cond_1

    .line 70
    const-string v1, "auth"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    const-string v1, "invalid-sig"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: bind error invalid-sig token = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/xiaomi/push/service/y;->token:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " sec = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->aLb:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-static {v3, v1, v2, v4}, Lcom/xiaomi/d/j;->b(IIILjava/lang/String;)V

    .line 78
    :cond_4
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v3, 0x5

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind failed, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_6
    const-string v1, "cancel"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->G(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_7
    const-string v1, "wait"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/y;)V

    .line 89
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    const-string v1, "1"

    .line 102
    invoke-virtual {p1, v1}, Lcom/xiaomi/smack/packet/e;->setChannelId(Ljava/lang/String;)V

    .line 104
    :cond_9
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 107
    instance-of v0, p1, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 108
    check-cast v7, Lcom/xiaomi/smack/packet/b;

    .line 109
    const-string v0, "0"

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "result"

    invoke-virtual {v7}, Lcom/xiaomi/smack/packet/b;->CM()Lcom/xiaomi/smack/packet/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->Ca()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/xiaomi/smack/p;

    if-eqz v1, :cond_a

    .line 113
    check-cast v0, Lcom/xiaomi/smack/p;

    invoke-virtual {v0}, Lcom/xiaomi/smack/p;->CK()V

    .line 115
    :cond_a
    invoke-static {}, Lcom/xiaomi/d/j;->Dd()V

    .line 138
    :cond_b
    :goto_2
    const-string v0, "ps"

    invoke-virtual {v7, v0}, Lcom/xiaomi/smack/packet/b;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    const-string v0, "ps"

    invoke-virtual {v7, v0}, Lcom/xiaomi/smack/packet/b;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/xiaomi/push/b/d;->g([B)Lcom/xiaomi/push/b/d;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/xiaomi/push/service/J;->BQ()Lcom/xiaomi/push/service/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/J;->b(Lcom/xiaomi/push/b/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Base64 exception + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_c
    const-string v0, "command"

    invoke-virtual {v7}, Lcom/xiaomi/smack/packet/b;->CM()Lcom/xiaomi/smack/packet/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->dI(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_b

    .line 119
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "startts"

    invoke-virtual {v0, v2}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v4, "endts"

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    :try_start_1
    new-instance v4, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 124
    new-instance v8, Ljava/util/Date;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 125
    const-string v2, "token"

    invoke-virtual {v0, v2}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v5, "true"

    const-string v6, "force"

    invoke-virtual {v0, v6}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 127
    const-string v5, "maxlen"

    invoke-virtual {v0, v5}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v5, v0, 0x400

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->cu(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 133
    :catch_1
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLong fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 146
    :catch_2
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pb exception + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_d
    instance-of v0, p1, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_f

    .line 154
    const-string v0, "kick"

    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->dI(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_10

    .line 156
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string v4, "reason"

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kicked by server, chid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " userid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " type="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " reason="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 162
    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 164
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/y;)V

    .line 169
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->G(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_f
    instance-of v0, p1, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_10

    move-object v0, p1

    .line 180
    check-cast v0, Lcom/xiaomi/smack/packet/d;

    .line 181
    const-string v2, "redir"

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 182
    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/d;->dI(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/PacketSync;->a(Lcom/xiaomi/smack/packet/a;)V

    goto/16 :goto_0

    .line 190
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->BZ()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/PacketSync;->aIV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2, v1, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/e;)V

    goto/16 :goto_0

    :cond_11
    move v5, v3

    goto/16 :goto_3
.end method
