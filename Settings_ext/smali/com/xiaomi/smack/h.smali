.class Lcom/xiaomi/smack/h;
.super Ljava/lang/Object;
.source "PacketReader.java"


# instance fields
.field private aMi:Ljava/lang/Thread;

.field private aMj:Lcom/xiaomi/smack/p;

.field private aMk:Lorg/xmlpull/v1/XmlPullParser;

.field private done:Z


# direct methods
.method protected constructor <init>(Lcom/xiaomi/smack/p;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    .line 60
    invoke-virtual {p0}, Lcom/xiaomi/smack/h;->init()V

    .line 61
    return-void
.end method

.method private CA()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/smack/h;->Cz()V

    .line 135
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 136
    const-string v0, ""

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v2}, Lcom/xiaomi/smack/p;->Cu()V

    .line 139
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 140
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/d/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    .line 202
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 203
    iget-boolean v2, p0, Lcom/xiaomi/smack/h;->done:Z

    if-nez v2, :cond_2

    if-ne v1, v6, :cond_0

    .line 204
    :cond_2
    if-ne v1, v6, :cond_3

    .line 206
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: server close the connection or timeout happened, last element name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v2}, Lcom/xiaomi/smack/p;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    .line 212
    iget-boolean v1, p0, Lcom/xiaomi/smack/h;->done:Z

    if-nez v1, :cond_f

    .line 215
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/smack/h;->b(ILjava/lang/Exception;)V

    .line 221
    :cond_3
    :goto_1
    return-void

    .line 143
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "iq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    invoke-static {v0, v2}, Lcom/xiaomi/smack/d/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    goto :goto_0

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "presence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/d/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Presence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    goto :goto_0

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    const-string v2, ""

    .line 156
    const/4 v0, 0x0

    move v7, v0

    move-object v0, v2

    move v2, v7

    :goto_2
    iget-object v3, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 157
    iget-object v3, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    iget-object v3, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    iget-object v3, v3, Lcom/xiaomi/smack/p;->aLX:Lcom/xiaomi/smack/c;

    iget-object v4, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/smack/c;->setServiceName(Ljava/lang/String;)V

    .line 156
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    :cond_8
    iget-object v3, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "challenge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 164
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 165
    :cond_9
    const-string v3, "ps"

    iget-object v4, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 167
    iget-object v3, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance v4, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v4}, Lcom/xiaomi/smack/packet/b;-><init>()V

    .line 169
    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/b;->setChannelId(Ljava/lang/String;)V

    .line 170
    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/b;->setPacketID(Ljava/lang/String;)V

    .line 171
    const-string v5, "ps"

    invoke-virtual {v4, v5, v3}, Lcom/xiaomi/smack/packet/b;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v3, Lcom/xiaomi/smack/packet/c;->aMR:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/c;)V

    .line 173
    invoke-direct {p0, v4}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_3

    .line 177
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/p;->setChallenge(Ljava/lang/String;)V

    move-object v0, v1

    .line 178
    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 180
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    iget-object v1, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/xiaomi/smack/d/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Lcom/xiaomi/smack/packet/g;)V

    throw v0

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "warning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 183
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 184
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multi-login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 187
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/smack/h;->b(ILjava/lang/Exception;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 189
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 191
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/d/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/n;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    .line 194
    goto/16 :goto_0

    .line 195
    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 196
    iget-object v1, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/smack/h;->b(ILjava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 217
    :cond_f
    const-string v0, "reader is shutdown, ignore the exception."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private Cz()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    .line 121
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMk:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    iget-object v1, v1, Lcom/xiaomi/smack/p;->aFb:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/smack/h;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/xiaomi/smack/h;->CA()V

    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 239
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    iget-object v0, v0, Lcom/xiaomi/smack/p;->aLS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 237
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->h(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0
.end method


# virtual methods
.method b(ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/h;->done:Z

    .line 111
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smack/p;->b(ILjava/lang/Exception;)V

    .line 112
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    iget-object v0, v0, Lcom/xiaomi/smack/p;->aLS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smack/h;->done:Z

    .line 70
    new-instance v0, Lcom/xiaomi/smack/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smack Packet Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/h;->aMj:Lcom/xiaomi/smack/p;

    iget v2, v2, Lcom/xiaomi/smack/p;->aLW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/smack/i;-><init>(Lcom/xiaomi/smack/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/smack/h;->aMi:Ljava/lang/Thread;

    .line 76
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/h;->done:Z

    .line 95
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xiaomi/smack/h;->aMi:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method
