.class Lcom/xiaomi/smack/j;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# instance fields
.field private aFa:Ljava/io/Writer;

.field private aMj:Lcom/xiaomi/smack/p;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/smack/p;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    .line 60
    iget-object v0, p1, Lcom/xiaomi/smack/p;->aFa:Ljava/io/Writer;

    iput-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    .line 61
    return-void
.end method

.method private i(Lcom/xiaomi/smack/packet/e;)V
    .locals 8

    .prologue
    .line 92
    iget-object v7, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    monitor-enter v7

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 97
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    iget-object v0, v0, Lcom/xiaomi/smack/p;->aJi:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/smack/d/k;->dK(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/k;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    :try_start_1
    monitor-exit v7

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method CB()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v1, "<stream:stream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, " xmlns=\"xm\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " xmlns:stream=\"xm\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v2}, Lcom/xiaomi/smack/p;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, " version=\"105\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " model=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " os=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {}, Lcom/xiaomi/smack/d/h;->CP()Ljava/lang/String;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    const-string v2, " uid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    const-string v1, " sdk=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, " connpt=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v2}, Lcom/xiaomi/smack/p;->Cn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, " host=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v2}, Lcom/xiaomi/smack/p;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, " locale=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v1}, Lcom/xiaomi/smack/p;->Cm()Lcom/xiaomi/smack/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/c;->Cc()[B

    move-result-object v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    const-string v2, " ps=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 142
    return-void
.end method

.method public Cs()V
    .locals 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v3}, Lcom/xiaomi/smack/p;->CI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 149
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v0}, Lcom/xiaomi/smack/p;->CJ()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    monitor-exit v1

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v2, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    iget-object v0, v0, Lcom/xiaomi/smack/p;->aLT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    return-void
.end method

.method public e(Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/j;->i(Lcom/xiaomi/smack/packet/e;)V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/p;->g(Lcom/xiaomi/smack/packet/e;)V

    .line 75
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    const-string v2, "</stream:stream>"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/smack/j;->aFa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
