.class public Lcom/xiaomi/c/l;
.super Lcom/xiaomi/c/f;
.source "HostManagerV2.java"


# instance fields
.field private final DEFAULT_PORT:I

.field private final aHw:I

.field private port:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/c/l;-><init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/c/f;-><init>(Landroid/content/Context;Lcom/xiaomi/c/e;Lcom/xiaomi/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput v1, p0, Lcom/xiaomi/c/l;->DEFAULT_PORT:I

    .line 51
    const/16 v0, 0x1466

    iput v0, p0, Lcom/xiaomi/c/l;->aHw:I

    .line 63
    iput v1, p0, Lcom/xiaomi/c/l;->port:I

    .line 64
    const-string v0, "resolver.msg.xiaomi.net"

    const-string v1, "resolver.msg.xiaomi.net:5222"

    invoke-static {v0, v1}, Lcom/xiaomi/c/l;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected AT()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-boolean v2, Lcom/xiaomi/c/l;->aHs:Z

    if-nez v2, :cond_1

    .line 148
    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/c/l;->aHs:Z

    .line 149
    iget-object v2, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/c/l;->AS()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-virtual {p0, v2}, Lcom/xiaomi/c/l;->dl(Ljava/lang/String;)V

    .line 154
    const-string v2, "loading the new hosts succeed"

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    monitor-exit v1

    .line 164
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load bucket failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 163
    :cond_0
    monitor-exit v1

    .line 164
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public AU()V
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/l;->aFx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/c/l;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 173
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaomi/c/l;->AZ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 184
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist bucket failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected AZ()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 188
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    const-string v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v2, "data"

    invoke-virtual {p0}, Lcom/xiaomi/c/l;->AW()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    monitor-exit v1

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    invoke-direct {v0, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uuid"

    invoke-direct {v0, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "list"

    const-string v5, ","

    invoke-static {p1, v5}, Lcom/xiaomi/c/l;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v0, "resolver.msg.xiaomi.net"

    invoke-virtual {p0, v0}, Lcom/xiaomi/c/l;->df(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 106
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "http://%1$s/gslb/?ver=3.0"

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolver.msg.xiaomi.net:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/xiaomi/c/l;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 107
    if-nez v0, :cond_1

    .line 108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v4, Lcom/xiaomi/c/l;->aHf:Ljava/util/Map;

    monitor-enter v4

    .line 110
    :try_start_0
    sget-object v0, Lcom/xiaomi/c/l;->aHf:Ljava/util/Map;

    const-string v5, "resolver.msg.xiaomi.net"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "http://%1$s/gslb/?ver=3.0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 122
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 123
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 116
    :cond_1
    invoke-virtual {v0, v4}, Lcom/xiaomi/c/b;->cZ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/c/l;->aHh:Lcom/xiaomi/c/k;

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/xiaomi/c/l;->aFx:Landroid/content/Context;

    new-instance v5, Ljava/net/URL;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/xiaomi/a/a/e/a;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_3
    :goto_4
    return-object v2

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/c/l;->aHh:Lcom/xiaomi/c/k;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/xiaomi/c/k;->dk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_4

    .line 137
    :cond_5
    if-eqz v0, :cond_3

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/c/f;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 132
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected dl(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 196
    iget-object v1, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    const-string v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 201
    new-instance v0, Lorg/json/JSONException;

    const-string v2, "Bad version"

    invoke-direct {v0, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_0
    :try_start_1
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 204
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 205
    new-instance v3, Lcom/xiaomi/c/c;

    invoke-direct {v3}, Lcom/xiaomi/c/c;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/c/c;->k(Lorg/json/JSONObject;)Lcom/xiaomi/c/c;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/xiaomi/c/c;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    return-void
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "resolver.msg.xiaomi.net"

    return-object v0
.end method

.method public purge()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v4, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

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

    check-cast v0, Lcom/xiaomi/c/c;

    .line 79
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/xiaomi/c/c;->bI(Z)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 83
    :goto_1
    if-nez v0, :cond_2

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/c/c;

    invoke-virtual {v1}, Lcom/xiaomi/c/c;->AO()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/xiaomi/c/l;->aHe:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 89
    goto :goto_1

    .line 93
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return-void

    :cond_3
    move v0, v3

    goto :goto_1
.end method
