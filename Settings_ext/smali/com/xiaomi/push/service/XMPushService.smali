.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/e;


# static fields
.field public static START_STICKY:I


# instance fields
.field private aJP:Lcom/xiaomi/smack/c;

.field private aJQ:Lcom/xiaomi/push/service/H;

.field private aJR:J

.field private aJS:Lcom/xiaomi/smack/p;

.field private aJT:Lcom/xiaomi/smack/a;

.field private aJU:Lcom/xiaomi/push/service/PacketSync;

.field private aJV:Lcom/xiaomi/push/service/a/a;

.field private aJW:Lcom/xiaomi/push/service/d;

.field private aJX:Lcom/xiaomi/smack/g;

.field private aJe:Lcom/xiaomi/push/service/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "42.62.94.2"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app01.nodes.gslb.mi-idc.com"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "120.134.33.29"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app02.nodes.gslb.mi-idc.com"

    invoke-static {v0, v1}, Lcom/xiaomi/c/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sput-boolean v2, Lcom/xiaomi/smack/p;->aLN:Z

    .line 910
    sput v2, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJR:J

    .line 114
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->aJU:Lcom/xiaomi/push/service/PacketSync;

    .line 116
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->aJV:Lcom/xiaomi/push/service/a/a;

    .line 118
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    .line 123
    new-instance v0, Lcom/xiaomi/push/service/M;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/M;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJX:Lcom/xiaomi/smack/g;

    .line 1515
    return-void
.end method

.method private B(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 639
    sget-object v0, Lcom/xiaomi/push/service/B;->aJs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 644
    const-string v1, "ext_stats_key"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 645
    const-string v2, "ext_stats_val"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 646
    const-string v3, "ext_stats_host"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    const-string v4, "ext_stats_magic"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 650
    if-lez v0, :cond_0

    const/16 v5, 0xff

    if-ge v0, v5, :cond_0

    if-eq v1, v6, :cond_0

    .line 651
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/d/j;->a(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/d/j;->b(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method private BT()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/y;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/y;)V

    .line 231
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/y;)V

    .line 232
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    .line 236
    :cond_0
    return-void
.end method

.method private BW()V
    .locals 2

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->BU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJV:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJV:Lcom/xiaomi/push/service/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/a/a;->bO(Z)V

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJV:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->stop()V

    goto :goto_0
.end method

.method private BX()V
    .locals 4

    .prologue
    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->aJX:Lcom/xiaomi/smack/g;

    new-instance v2, Lcom/xiaomi/push/service/N;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/N;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 1121
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    invoke-virtual {v0}, Lcom/xiaomi/smack/p;->connect()V

    .line 1123
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    const-string v1, "fail to create xmpp connection"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/c/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1126
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    new-instance v2, Lcom/xiaomi/smack/packet/Presence;

    sget-object v3, Lcom/xiaomi/smack/packet/Presence$Type;->aNx:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/a;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    return-object p1
.end method

.method private a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 826
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/G;->I(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 827
    new-instance v3, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v3}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 828
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 832
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 834
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/G;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 837
    invoke-virtual {v5, v4}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v3, v5}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 839
    return-object v3
.end method

.method private a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;
    .locals 4

    .prologue
    .line 786
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 787
    invoke-virtual {v1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->du(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 788
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open channel should be called first before sending a packet, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 820
    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    return-object p1

    .line 793
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaomi/smack/packet/e;->setPackageName(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 797
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 798
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->setChannelId(Ljava/lang/String;)V

    .line 800
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v1

    .line 801
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not connected, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, v3, :cond_5

    .line 807
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not opened, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_5
    iget-object v0, v1, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid session. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_6
    instance-of v0, p1, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 814
    check-cast p1, Lcom/xiaomi/smack/packet/d;

    iget-object v0, v1, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object p1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->B(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 843
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v2

    .line 845
    const/4 v0, 0x0

    .line 846
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 847
    sget-object v3, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 848
    sget-object v4, Lcom/xiaomi/push/service/B;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    iget-object v5, v2, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session changed. old session="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", new session="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move v0, v1

    .line 853
    :cond_0
    iget-object v2, v2, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 854
    const-string v0, "security changed. "

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move v0, v1

    .line 858
    :cond_1
    return v0
.end method

.method private b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/y;
    .locals 3

    .prologue
    .line 862
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v0

    .line 865
    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lcom/xiaomi/push/service/y;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/y;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 870
    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    .line 871
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    .line 872
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->token:Ljava/lang/String;

    .line 873
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    .line 874
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->aJb:Ljava/lang/String;

    .line 875
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->aJc:Ljava/lang/String;

    .line 876
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_KICK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaomi/push/service/y;->aJa:Z

    .line 877
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    .line 878
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->session:Ljava/lang/String;

    .line 879
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->aIZ:Ljava/lang/String;

    .line 880
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->aJe:Lcom/xiaomi/push/service/b;

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->aJe:Lcom/xiaomi/push/service/b;

    .line 881
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/y;->context:Landroid/content/Context;

    .line 883
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/y;)V

    .line 884
    return-object v0
.end method

.method private connect()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    const-string v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 1110
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    const-string v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJP:Lcom/xiaomi/smack/c;

    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->dD(Ljava/lang/String;)V

    .line 1099
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->BX()V

    .line 1101
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_2

    .line 1103
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager;->cD(Landroid/content/Context;)V

    .line 1104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1107
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private dx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iq to=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' id=\'0\' chid=\'0\' type=\'get\'><ping xmlns=\'urn:xmpp:ping\'>%1$s%2$s</ping></iq>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/p;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->BT()V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->BW()V

    return-void
.end method

.method static synthetic h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/c;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJP:Lcom/xiaomi/smack/c;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/d;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJU:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method static synthetic l(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connect()V

    return-void
.end method

.method private t(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 897
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->dv(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_1

    .line 900
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/y;

    .line 901
    if-eqz v2, :cond_0

    .line 902
    new-instance v0, Lcom/xiaomi/push/service/ai;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/ai;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto :goto_0

    .line 906
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->dt(Ljava/lang/String;)V

    .line 907
    return-void
.end method


# virtual methods
.method public BU()Z
    .locals 1

    .prologue
    .line 1053
    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->BG()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->BV()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public BV()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1065
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1066
    const-string v2, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1067
    const-string v3, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1068
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1070
    :cond_1
    :goto_0
    return v0

    .line 1069
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public BY()Lcom/xiaomi/push/service/b;
    .locals 1

    .prologue
    .line 1131
    new-instance v0, Lcom/xiaomi/push/service/b;

    invoke-direct {v0}, Lcom/xiaomi/push/service/b;-><init>()V

    return-object v0
.end method

.method public BZ()Lcom/xiaomi/push/service/b;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJe:Lcom/xiaomi/push/service/b;

    return-object v0
.end method

.method public Ca()Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method public Cb()V
    .locals 4

    .prologue
    .line 1480
    new-instance v0, Lcom/xiaomi/push/service/O;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/O;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 1493
    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 2

    .prologue
    .line 697
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 698
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 699
    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 700
    invoke-static {}, Lcom/xiaomi/smack/packet/e;->nextID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->dX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 701
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cj(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 703
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->aOW:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaomi/smack/c;)Lcom/xiaomi/smack/p;
    .locals 1

    .prologue
    .line 1135
    new-instance v0, Lcom/xiaomi/smack/p;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/smack/p;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    .line 708
    invoke-static {p3}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 710
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 711
    new-instance v2, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 712
    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 713
    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 714
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 715
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 716
    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->b(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 717
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ch(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 718
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->dW(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 719
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cf(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 720
    invoke-virtual {v1, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->dV(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 721
    return-object v1
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    new-instance v2, Lcom/xiaomi/smack/packet/Presence;

    sget-object v3, Lcom/xiaomi/smack/packet/Presence$Type;->aNx:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    invoke-virtual {v0, v2, p1, p2}, Lcom/xiaomi/smack/a;->a(Lcom/xiaomi/smack/packet/Presence;ILjava/lang/Exception;)V

    .line 1038
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    .line 1041
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->ee(I)V

    .line 1042
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->ee(I)V

    .line 1044
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->t(Landroid/content/Context;I)V

    .line 1045
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/ab;)V
    .locals 2

    .prologue
    .line 927
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 928
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/ab;J)V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 932
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJQ:Lcom/xiaomi/push/service/H;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/H;->BO()V

    .line 1503
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->BF()Ljava/util/ArrayList;

    move-result-object v0

    .line 1504
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/y;

    .line 1505
    new-instance v2, Lcom/xiaomi/push/service/X;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/X;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V

    .line 1506
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto :goto_0

    .line 1508
    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    .line 1498
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    .line 1513
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 888
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v2

    .line 890
    if-eqz v2, :cond_0

    .line 891
    new-instance v0, Lcom/xiaomi/push/service/ai;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/ai;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 893
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->a([Lcom/xiaomi/smack/packet/e;)V

    .line 1006
    return-void

    .line 1004
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/xiaomi/push/service/ab;)V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    iget v1, p1, Lcom/xiaomi/push/service/ab;->type:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/d;->c(ILjava/lang/Object;)V

    .line 1467
    return-void
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 1

    .prologue
    .line 1475
    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method public bN(Z)V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJQ:Lcom/xiaomi/push/service/H;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/H;->bM(Z)V

    .line 1023
    return-void
.end method

.method public c(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_1

    .line 977
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->i([B)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_0

    .line 979
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 987
    :goto_0
    return-void

    .line 981
    :cond_0
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_1
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c([BLjava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x42c1d83

    .line 658
    if-nez p1, :cond_0

    .line 659
    const-string v0, "null payload"

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 661
    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 693
    :goto_0
    return-void

    .line 663
    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 665
    :try_start_0
    invoke-static {v1, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 666
    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOO:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v2, :cond_1

    .line 668
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DX()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 673
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/l;->a(Ljava/lang/String;[B)V

    .line 674
    new-instance v0, Lcom/xiaomi/push/service/k;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/k;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 679
    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 687
    :catch_1
    move-exception v0

    .line 688
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 689
    const-string v0, " data container error."

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 685
    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public d(Lcom/xiaomi/push/service/y;)V
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lcom/xiaomi/push/service/V;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/V;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/y;->a(Lcom/xiaomi/push/service/A;)V

    .line 783
    return-void
.end method

.method public e(Lcom/xiaomi/push/service/y;)V
    .locals 6

    .prologue
    .line 1026
    if-eqz p1, :cond_0

    .line 1027
    invoke-virtual {p1}, Lcom/xiaomi/push/service/y;->BJ()J

    move-result-wide v0

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 1029
    new-instance v2, Lcom/xiaomi/push/service/X;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/X;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;J)V

    .line 1031
    :cond_0
    return-void
.end method

.method public e(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 973
    return-void

    .line 971
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ee(I)V
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->ee(I)V

    .line 1459
    return-void
.end method

.method public ef(I)Z
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->ef(I)Z

    move-result v0

    return v0
.end method

.method public g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/smack/packet/d;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 737
    :try_start_0
    new-instance v2, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v2}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 738
    const-string v0, "5"

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 739
    const-string v0, "xiaomi.com"

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 740
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/push/service/h;->aIB:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 742
    const-string v0, "push"

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setType(Ljava/lang/String;)V

    .line 743
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setPackageName(Ljava/lang/String;)V

    .line 745
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/push/service/h;->aIB:Ljava/lang/String;

    .line 746
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const/4 v4, 0x0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 747
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 749
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 751
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/h;->security:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/push/service/G;->I(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 753
    invoke-static {v1, v0}, Lcom/xiaomi/push/service/G;->d([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/a;->e([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    .line 754
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "s"

    const/4 v7, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 756
    invoke-virtual {v5, v4}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v2, v5}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try send mi push message. packagename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 765
    :goto_0
    return-object v0

    .line 762
    :catch_0
    move-exception v0

    .line 764
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 765
    goto :goto_0
.end method

.method public h(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_0

    .line 993
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 998
    :cond_0
    return-void

    .line 996
    :cond_1
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i([B)Lcom/xiaomi/smack/packet/d;
    .locals 1

    .prologue
    .line 725
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 727
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 728
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->g(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/smack/packet/d;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 731
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 923
    new-instance v0, Lcom/xiaomi/push/service/ad;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 131
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 133
    invoke-static {p0}, Lcom/xiaomi/smack/d/h;->cG(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget v0, v0, Lcom/xiaomi/push/service/h;->aCU:I

    invoke-static {v0}, Lcom/xiaomi/a/a/d/a;->dM(I)V

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/C;->d(Lcom/xiaomi/push/service/XMPushService;)V

    .line 143
    new-instance v0, Lcom/xiaomi/push/service/P;

    const/16 v3, 0x1466

    const-string v4, "xiaomi.com"

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/P;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJP:Lcom/xiaomi/smack/c;

    .line 157
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJP:Lcom/xiaomi/smack/c;

    invoke-virtual {v0, v6}, Lcom/xiaomi/smack/c;->bU(Z)V

    .line 159
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJP:Lcom/xiaomi/smack/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/c;)Lcom/xiaomi/smack/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    .line 160
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    const-string v1, "xiaomi.com"

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->dx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/p;->dF(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/xiaomi/c/b;

    const-string v1, "mibind.chat.gslb.mi-idc.com"

    invoke-direct {v0, v1}, Lcom/xiaomi/c/b;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->BY()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJe:Lcom/xiaomi/push/service/b;

    .line 171
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 172
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sys.boot_completed"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJe:Lcom/xiaomi/push/service/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/b;->cv(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_1
    :goto_0
    new-instance v0, Lcom/xiaomi/push/service/a/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJV:Lcom/xiaomi/push/service/a/a;

    .line 183
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/e;)V

    .line 185
    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJU:Lcom/xiaomi/push/service/PacketSync;

    .line 187
    new-instance v0, Lcom/xiaomi/push/service/H;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/H;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJQ:Lcom/xiaomi/push/service/H;

    .line 189
    new-instance v0, Lcom/xiaomi/push/service/c;

    invoke-direct {v0}, Lcom/xiaomi/push/service/c;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/xiaomi/push/service/c;->register()V

    .line 192
    new-instance v0, Lcom/xiaomi/push/service/d;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    .line 193
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->start()V

    .line 194
    new-instance v0, Lcom/xiaomi/push/service/Q;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/Q;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 208
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->BI()V

    .line 210
    new-instance v1, Lcom/xiaomi/push/service/R;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/R;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/x;)V

    .line 221
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->BB()V

    .line 937
    new-instance v0, Lcom/xiaomi/push/service/W;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/W;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 953
    new-instance v0, Lcom/xiaomi/push/service/ac;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ac;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 956
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->BI()V

    .line 957
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->t(Landroid/content/Context;I)V

    .line 958
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->BH()V

    .line 960
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/p;->b(Lcom/xiaomi/smack/e;)V

    .line 961
    invoke-static {}, Lcom/xiaomi/push/service/J;->BQ()Lcom/xiaomi/push/service/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/J;->clear()V

    .line 962
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJV:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->stop()V

    .line 963
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 964
    const-string v0, "Service destroyed"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 243
    if-nez p1, :cond_2

    .line 244
    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 249
    :goto_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 250
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    const-string v0, "security is empty. ignore."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 636
    :cond_1
    :goto_1
    return-void

    .line 246
    :cond_2
    const-string v0, "onStart() with intent.Action = %s, chid = %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_3
    if-eqz v0, :cond_9

    .line 261
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    .line 262
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/y;

    move-result-object v2

    .line 264
    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJe:Lcom/xiaomi/push/service/b;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/y;ZILjava/lang/String;)V

    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, v2, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v6, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v6, :cond_5

    .line 269
    new-instance v0, Lcom/xiaomi/push/service/X;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/X;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto :goto_1

    .line 271
    :cond_5
    if-eqz v1, :cond_6

    .line 275
    new-instance v0, Lcom/xiaomi/push/service/ag;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/ag;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/y;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto :goto_1

    .line 276
    :cond_6
    iget-object v0, v2, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_7

    .line 278
    const-string v0, "the client is binding. %1$s %2$s."

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object v2, v2, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_7
    iget-object v0, v2, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v6, p0, Lcom/xiaomi/push/service/XMPushService;->aJe:Lcom/xiaomi/push/service/b;

    move-object v7, p0

    move-object v8, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/y;ZILjava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_8
    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    goto :goto_1

    .line 291
    :cond_9
    const-string v0, "channel id is empty, do nothing!"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    :cond_a
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 294
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    sget-object v2, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    sget-object v3, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 299
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->du(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-direct {p0, v0, v4}, Lcom/xiaomi/push/service/XMPushService;->t(Ljava/lang/String;I)V

    goto :goto_2

    .line 304
    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 305
    invoke-direct {p0, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->t(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_c
    move-object v1, p0

    move-object v6, v5

    .line 307
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    :cond_d
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 315
    const-string v3, "ext_encrypt"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 316
    new-instance v4, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/d;-><init>(Landroid/os/Bundle;)V

    .line 317
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1

    .line 319
    new-instance v1, Lcom/xiaomi/push/service/I;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/I;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 323
    :cond_e
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 324
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    const-string v0, "ext_packets"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 327
    array-length v0, v4

    new-array v5, v0, [Lcom/xiaomi/smack/packet/d;

    .line 328
    const-string v0, "ext_encrypt"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 329
    :goto_3
    array-length v0, v4

    if-ge v3, v0, :cond_f

    .line 330
    new-instance v7, Lcom/xiaomi/smack/packet/d;

    aget-object v0, v4, v3

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v7, v0}, Lcom/xiaomi/smack/packet/d;-><init>(Landroid/os/Bundle;)V

    aput-object v7, v5, v3

    .line 331
    aget-object v0, v5, v3

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/d;

    aput-object v0, v5, v3

    .line 332
    aget-object v0, v5, v3

    if-eqz v0, :cond_1

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 337
    :cond_f
    new-instance v0, Lcom/xiaomi/push/service/a;

    invoke-direct {v0, p0, v5}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/smack/packet/d;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 338
    :cond_10
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 339
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 343
    new-instance v4, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/b;-><init>(Landroid/os/Bundle;)V

    .line 344
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_1

    .line 346
    new-instance v0, Lcom/xiaomi/push/service/I;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/I;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 348
    :cond_11
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 349
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 353
    new-instance v4, Lcom/xiaomi/smack/packet/Presence;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/Presence;-><init>(Landroid/os/Bundle;)V

    .line 354
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Lcom/xiaomi/push/service/I;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/I;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 358
    :cond_12
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 361
    :cond_13
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 362
    const-string v0, "Service called on timer"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 375
    :goto_4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 376
    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->t(Landroid/content/Context;I)V

    .line 378
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    goto/16 :goto_1

    .line 364
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/xiaomi/push/service/XMPushService;->aJR:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJR:J

    .line 369
    const-string v0, "Service called on check alive."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_4

    .line 381
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_17

    .line 382
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 383
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    goto/16 :goto_1

    .line 387
    :cond_16
    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->bN(Z)V

    goto/16 :goto_1

    .line 389
    :cond_17
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJT:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->Cv()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 390
    new-instance v0, Lcom/xiaomi/push/service/af;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/af;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 392
    :cond_18
    new-instance v0, Lcom/xiaomi/push/service/aa;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, v5}, Lcom/xiaomi/push/service/aa;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 395
    :cond_19
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 398
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :goto_5
    if-eqz v0, :cond_1b

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 410
    :goto_6
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJS:Lcom/xiaomi/smack/p;

    invoke-virtual {v0}, Lcom/xiaomi/smack/p;->Cw()V

    .line 411
    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 412
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 413
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->aJW:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, v9}, Lcom/xiaomi/push/service/d;->ee(I)V

    .line 414
    new-instance v0, Lcom/xiaomi/push/service/Z;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/Z;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 416
    :cond_1a
    invoke-static {p0}, Lcom/xiaomi/push/a/b;->cu(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b;->Be()V

    .line 420
    :goto_7
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->BW()V

    goto/16 :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 402
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto :goto_5

    .line 407
    :cond_1b
    const-string v0, "network changed, no active network"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_6

    .line 418
    :cond_1c
    new-instance v0, Lcom/xiaomi/push/service/aa;

    invoke-direct {v0, p0, v4, v5}, Lcom/xiaomi/push/service/aa;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto :goto_7

    .line 422
    :cond_1d
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 423
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_1e

    .line 425
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/y;

    .line 428
    :cond_1e
    new-instance v0, Lcom/xiaomi/push/service/ah;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ah;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 429
    :cond_1f
    sget-object v0, Lcom/xiaomi/push/service/B;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 430
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->du(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 432
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open channel should be called first before update info, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 438
    :cond_20
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    sget-object v4, Lcom/xiaomi/push/service/B;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 442
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    :cond_21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 447
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->dv(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 449
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/y;

    move-object v5, v0

    .line 454
    :cond_22
    :goto_8
    if-eqz v5, :cond_1

    .line 455
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 456
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/y;->aJb:Ljava/lang/String;

    .line 458
    :cond_23
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/y;->aJc:Ljava/lang/String;

    goto/16 :goto_1

    .line 452
    :cond_24
    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/y;

    move-result-object v5

    goto :goto_8

    .line 462
    :cond_25
    const-string v0, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/E;->cE(Landroid/content/Context;)Lcom/xiaomi/push/service/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/E;->BK()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/E;->cE(Landroid/content/Context;)Lcom/xiaomi/push/service/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/E;->BL()I

    move-result v0

    if-nez v0, :cond_26

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register without being provisioned. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    :cond_26
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 472
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    const-string v0, "mipush_env_chanage"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 474
    const-string v1, "mipush_env_type"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 475
    invoke-static {p0}, Lcom/xiaomi/push/service/j;->cC(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/service/j;->dr(Ljava/lang/String;)V

    .line 476
    if-eqz v0, :cond_27

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 477
    new-instance v0, Lcom/xiaomi/push/service/S;

    const/16 v2, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/S;-><init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 494
    :cond_27
    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->c([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 496
    :cond_28
    const-string v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 498
    :cond_29
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 500
    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 501
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const-string v4, "5"

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->dv(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 503
    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 504
    invoke-static {p0}, Lcom/xiaomi/push/service/j;->cC(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaomi/push/service/j;->dq(Ljava/lang/String;)V

    .line 506
    :cond_2a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 507
    if-eqz v3, :cond_1

    .line 508
    invoke-static {v1, v2}, Lcom/xiaomi/push/service/l;->b(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 513
    :cond_2b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/y;

    .line 514
    iget-object v0, v0, Lcom/xiaomi/push/service/y;->aJf:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v4, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v4, :cond_2c

    .line 515
    if-eqz v3, :cond_1

    .line 516
    invoke-static {v1, v2}, Lcom/xiaomi/push/service/l;->b(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 521
    :cond_2c
    new-instance v0, Lcom/xiaomi/push/service/T;

    invoke-direct {v0, p0, v6, v1, v2}, Lcom/xiaomi/push/service/T;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 540
    :cond_2d
    sget-object v0, Lcom/xiaomi/push/service/F;->aJz:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 542
    const-string v0, "uninstall_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move v9, v3

    .line 554
    :goto_9
    const-string v1, "com.xiaomi.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->BE()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->dv(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz v9, :cond_2e

    .line 557
    const-string v0, "1"

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->t(Ljava/lang/String;I)V

    .line 558
    const-string v0, "close the miliao channel as the app is uninstalled."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 562
    :cond_2e
    const-string v1, "pref_registered_pkg_names"

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 564
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v9, :cond_1

    .line 568
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 569
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 570
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 572
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->S(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 573
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    :cond_2f
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->P(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    if-eqz v2, :cond_1

    .line 580
    :try_start_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/push/service/XMPushService;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 582
    :catch_1
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to send Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 584
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_1

    .line 589
    :cond_30
    const-string v0, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 590
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    sget-object v1, Lcom/xiaomi/push/service/B;->aJt:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 593
    if-ltz v1, :cond_31

    .line 594
    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/t;->g(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 595
    :cond_31
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 596
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->P(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 599
    :cond_32
    const-string v0, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 600
    sget-object v0, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    sget-object v0, Lcom/xiaomi/push/service/B;->aJv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 605
    sget-object v0, Lcom/xiaomi/push/service/B;->aJu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 606
    sget-object v0, Lcom/xiaomi/push/service/B;->aJu:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/c;->cs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 613
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 609
    :cond_34
    invoke-static {v2}, Lcom/xiaomi/a/a/f/c;->cs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v3, v9

    .line 610
    goto :goto_a

    .line 615
    :cond_35
    if-eqz v3, :cond_36

    .line 616
    invoke-static {p0, v2}, Lcom/xiaomi/push/service/t;->R(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :cond_36
    invoke-static {p0, v2, v1}, Lcom/xiaomi/push/service/t;->h(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 621
    :cond_37
    sget-object v0, Lcom/xiaomi/push/service/B;->aJs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    new-instance v0, Lcom/xiaomi/push/service/U;

    invoke-direct {v0, p0, v6, p1}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;ILandroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_1

    .line 550
    :catch_2
    move-exception v1

    goto/16 :goto_9
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    .line 918
    sget v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return v0
.end method
