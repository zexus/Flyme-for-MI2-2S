.class public Lcom/xiaomi/push/service/b;
.super Ljava/lang/Object;
.source "ClientEventDispatcher.java"


# instance fields
.field private aIt:Lcom/xiaomi/push/service/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/xiaomi/push/service/m;

    invoke-direct {v0}, Lcom/xiaomi/push/service/m;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/b;->aIt:Lcom/xiaomi/push/service/m;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/push/service/b;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static do(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/y;I)V
    .locals 3

    .prologue
    .line 69
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    const-string v1, "com.xiaomi.push.channel_closed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p2, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "ext_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p2, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 152
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "mipush kicked by server"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "com.xiaomi.push.kicked"

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v0, p2, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v0, "ext_kick_type"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "ext_kick_reason"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v0, "ext_chid"

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v0, p2, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/y;ZILjava/lang/String;)V
    .locals 6

    .prologue
    .line 43
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaomi/push/service/b;->aIt:Lcom/xiaomi/push/service/m;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/m;->b(Landroid/content/Context;Lcom/xiaomi/push/service/y;ZILjava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    const-string v1, "com.xiaomi.push.channel_opened"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v1, p2, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "ext_succeeded"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    if-nez p3, :cond_1

    .line 51
    const-string v1, "ext_reason"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    const-string v1, "ext_reason_msg"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_2
    const-string v1, "ext_chid"

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p2, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/e;)V
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/b;->b(Lcom/xiaomi/smack/packet/e;)Lcom/xiaomi/push/service/y;

    move-result-object v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while notify channel closed! channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "5"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/xiaomi/push/service/b;->aIt:Lcom/xiaomi/push/service/m;

    invoke-virtual {v0, p1, p3, v1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;Lcom/xiaomi/push/service/y;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v2, v1, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    .line 98
    instance-of v0, p3, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "com.xiaomi.push.new_msg"

    .line 108
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 109
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v0, "ext_chid"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v0, "ext_packet"

    invoke-virtual {p3}, Lcom/xiaomi/smack/packet/e;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_SECURITY:Ljava/lang/String;

    iget-object v1, v1, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-static {p1, v3, v2}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    instance-of v0, p3, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "com.xiaomi.push.new_iq"

    goto :goto_1

    .line 102
    :cond_3
    instance-of v0, p3, Lcom/xiaomi/smack/packet/Presence;

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "com.xiaomi.push.new_pres"

    goto :goto_1

    .line 105
    :cond_4
    const-string v0, "unknown packet type, drop it"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Lcom/xiaomi/smack/packet/e;)Lcom/xiaomi/push/service/y;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->dv(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/y;

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/y;

    .line 135
    iget-object v5, v0, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 139
    goto :goto_0
.end method

.method public cv(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    const-string v1, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
