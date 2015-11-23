.class public abstract Lcom/xiaomi/c/n;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method private static a(Lcom/xiaomi/c/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/xiaomi/c/m;->Ba()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3}, Lcom/xiaomi/c/n;->dm(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/c/n;->y(II)I

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/c/m;->Ba()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    invoke-static {p2}, Lcom/xiaomi/c/n;->x(Ljava/util/List;)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3}, Lcom/xiaomi/c/n;->dm(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/c/n;->f(III)I

    move-result v0

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/c/m;Z)Ljava/lang/String;
    .locals 12

    .prologue
    .line 59
    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz p4, :cond_0

    .line 65
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/c/f;->dd(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/xiaomi/c/b;->cZ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 71
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    const/4 v7, 0x0

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    if-eqz p2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v2

    .line 79
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v10

    .line 81
    :try_start_1
    invoke-virtual {p3, p0, v1, v8}, Lcom/xiaomi/c/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 121
    :cond_2
    :goto_2
    return-object v7

    .line 77
    :cond_3
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p3, p0, v1, v8}, Lcom/xiaomi/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 87
    if-eqz v0, :cond_2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {p3, v1, v8, v7}, Lcom/xiaomi/c/n;->a(Lcom/xiaomi/c/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/c/b;->a(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 104
    :catch_0
    move-exception v6

    .line 105
    if-eqz v0, :cond_5

    .line 106
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {p3, v1, v8, v7}, Lcom/xiaomi/c/n;->a(Lcom/xiaomi/c/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/c/b;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 112
    :cond_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v7

    :goto_3
    move-object v7, v1

    .line 114
    goto :goto_0

    .line 96
    :cond_6
    if-eqz v0, :cond_7

    .line 97
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {p3, v1, v8, v7}, Lcom/xiaomi/c/n;->a(Lcom/xiaomi/c/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/c/b;->a(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object v1, v7

    .line 113
    goto :goto_3

    .line 117
    :catch_1
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 121
    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/c/o;

    invoke-direct {v0}, Lcom/xiaomi/c/o;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/c/m;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dm(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static f(III)I
    .locals 1

    .prologue
    .line 169
    add-int/lit16 v0, p1, 0xc8

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x3f3

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/2addr v0, p2

    return v0
.end method

.method static x(Ljava/util/List;)I
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 141
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 144
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 149
    :cond_1
    mul-int/lit8 v0, v1, 0x2

    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static y(II)I
    .locals 1

    .prologue
    .line 164
    add-int/lit16 v0, p1, 0xf3

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x438

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method
