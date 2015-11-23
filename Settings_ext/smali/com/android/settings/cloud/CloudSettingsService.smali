.class public Lcom/android/settings/cloud/CloudSettingsService;
.super Landroid/app/IntentService;
.source "CloudSettingsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "CloudSettingsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/android/settings/cloud/network/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string v1, "CloudSettingsService"

    const-string v2, "[AppControlDownloadInfo] JSON : root is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-object v0

    .line 232
    :cond_0
    new-instance v1, Lcom/android/settings/cloud/network/a;

    invoke-direct {v1}, Lcom/android/settings/cloud/network/a;-><init>()V

    .line 234
    :try_start_0
    const-string v2, "host"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/cloud/network/a;->Qp:Ljava/lang/String;

    .line 235
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/cloud/network/a;->Qq:Ljava/lang/String;

    .line 236
    const-string v2, "hash"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/cloud/network/a;->Qr:Ljava/lang/String;

    .line 237
    const-string v2, "v"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/settings/cloud/network/a;->Qs:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    iget-object v2, v1, Lcom/android/settings/cloud/network/a;->Qp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/cloud/network/a;->Qq:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/cloud/network/a;->Qr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, v1, Lcom/android/settings/cloud/network/a;->Qs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 243
    :cond_1
    const-string v2, "CloudSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AppControlDownloadInfo] JSON : some string is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 246
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/android/settings/cloud/network/a;)Ljava/io/File;
    .locals 5

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cloud_app_control"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/android/settings/cloud/network/Connection;

    invoke-virtual {p1}, Lcom/android/settings/cloud/network/a;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsService;->a(Lcom/android/settings/cloud/network/Connection;)V

    .line 175
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/settings/cloud/network/Connection;->f(Ljava/io/File;)Lcom/android/settings/cloud/network/Connection$NetworkError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    const-string v0, "CloudSettingsService"

    const-string v2, "download list succeed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v2, "CloudSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download list failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/android/settings/cloud/network/Connection;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/cloud/network/Connection;->av(Z)V

    .line 164
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 251
    const-string v1, "CloudSettingsService"

    const-string v2, "[CloudAppControlListPage] JSON : root is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    :try_start_0
    const-string v3, "l"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_0

    .line 261
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 262
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 263
    array-length v6, v5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    .line 261
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 267
    const-string v7, "data_id"

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v7, "package_name"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v7, "release_key"

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v7, "max_version_code"

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v7, "min_version_code"

    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v7, "attributes"

    const/4 v8, 0x5

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 275
    :catch_0
    move-exception v1

    .line 276
    const-string v1, "CloudSettingsService"

    const-string v2, "[CloudAppControlListPage] JSON : get list page string failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 279
    goto :goto_0
.end method

.method private e(Ljava/io/File;)I
    .locals 6

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 190
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 191
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 192
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 195
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 196
    const-string v4, "data_id"

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v4, "package_name"

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v4, "release_key"

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "max_version_code"

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v4, "min_version_code"

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v4, "attributes"

    const/4 v5, 0x5

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/cloud/c;->Qo:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method private ns()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsService;->nu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "cloud_app_control_version"

    invoke-static {v0, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 75
    cmp-long v0, v2, v10

    if-lez v0, :cond_4

    .line 76
    const-string v0, "last_update_list_time"

    invoke-static {v0, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 79
    invoke-static {p0}, Lcom/android/settings/cloud/a/c;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xf731400

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 84
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 89
    :cond_3
    new-instance v5, Lcom/android/settings/cloud/network/Connection;

    sget-object v6, Lcom/android/settings/cloud/b;->PD:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v5}, Lcom/android/settings/cloud/CloudSettingsService;->a(Lcom/android/settings/cloud/network/Connection;)V

    .line 91
    new-instance v6, Lcom/android/settings/cloud/network/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v5}, Lcom/android/settings/cloud/network/b;-><init>(Lcom/android/settings/cloud/network/Connection;)V

    .line 92
    const-string v7, "version"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 93
    const-string v7, "len"

    const-string v8, "20"

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 94
    const-string v7, "offset"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 95
    const-string v7, "imei"

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsService;->nv()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 96
    const-string v7, "miui_version"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lmiui/R$attr;->miui_version:I

    invoke-static {p0, v9, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 97
    const-string v7, "device"

    const-string v8, "ro.product.device"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 98
    const-string v7, "carrier"

    const-string v8, "ro.carrier.name"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 99
    const-string v7, "region"

    const-string v8, "ro.product.mod_device"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 100
    invoke-virtual {v5}, Lcom/android/settings/cloud/network/Connection;->nD()Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v6

    sget-object v7, Lcom/android/settings/cloud/network/Connection$NetworkError;->Qz:Lcom/android/settings/cloud/network/Connection$NetworkError;

    if-ne v6, v7, :cond_0

    .line 103
    invoke-virtual {v5}, Lcom/android/settings/cloud/network/Connection;->nC()Lorg/json/JSONObject;

    move-result-object v5

    .line 105
    :try_start_0
    const-string v6, "v"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 109
    invoke-direct {p0, v5}, Lcom/android/settings/cloud/CloudSettingsService;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v5

    .line 111
    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    add-int/lit8 v0, v0, 0x14

    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 120
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/cloud/c;->Qo:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 123
    if-ltz v0, :cond_0

    .line 124
    const-string v0, "last_update_list_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    .line 125
    const-string v0, "cloud_app_control_version"

    invoke-static {v0, v6, v7, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 129
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsService;->nt()Lcom/android/settings/cloud/network/a;

    move-result-object v0

    .line 130
    if-nez v0, :cond_5

    .line 131
    const-string v0, "CloudSettingsService"

    const-string v1, "get list download info failed : downloadInfo null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    :cond_5
    const-string v1, "CloudSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download list begin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsService;->a(Lcom/android/settings/cloud/network/a;)Ljava/io/File;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 140
    :cond_6
    const-string v0, "CloudSettingsService"

    const-string v1, "download file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    :cond_7
    invoke-static {v1}, Lcom/android/settings/cloud/a/b;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v3, v0, Lcom/android/settings/cloud/network/a;->Qr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 145
    const-string v0, "CloudSettingsService"

    const-string v1, "download file hash mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_8
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/settings/cloud/CloudSettingsService;->e(Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 155
    if-ltz v1, :cond_0

    .line 156
    const-string v1, "last_update_list_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    .line 157
    const-string v1, "cloud_app_control_version"

    iget-wide v2, v0, Lcom/android/settings/cloud/network/a;->Qs:J

    invoke-static {v1, v2, v3, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "CloudSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update database for list failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private nt()Lcom/android/settings/cloud/network/a;
    .locals 7

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    new-instance v1, Lcom/android/settings/cloud/network/Connection;

    sget-object v2, Lcom/android/settings/cloud/b;->PC:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v1}, Lcom/android/settings/cloud/CloudSettingsService;->a(Lcom/android/settings/cloud/network/Connection;)V

    .line 214
    new-instance v2, Lcom/android/settings/cloud/network/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcom/android/settings/cloud/network/b;-><init>(Lcom/android/settings/cloud/network/Connection;)V

    .line 215
    const-string v3, "imei"

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsService;->nv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 216
    const-string v3, "miui_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmiui/R$attr;->miui_version:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 217
    const-string v3, "device"

    const-string v4, "ro.product.device"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 218
    const-string v3, "carrier"

    const-string v4, "ro.carrier.name"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 219
    const-string v3, "region"

    const-string v4, "ro.product.mod_device"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cloud/network/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/cloud/network/b;

    .line 220
    invoke-virtual {v1}, Lcom/android/settings/cloud/network/Connection;->nD()Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v2

    sget-object v3, Lcom/android/settings/cloud/network/Connection$NetworkError;->Qz:Lcom/android/settings/cloud/network/Connection$NetworkError;

    if-ne v2, v3, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/android/settings/cloud/network/Connection;->nC()Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsService;->a(Lorg/json/JSONObject;)Lcom/android/settings/cloud/network/a;

    move-result-object v0

    .line 224
    :cond_0
    return-object v0
.end method

.method private nu()Z
    .locals 2

    .prologue
    .line 283
    const-string v0, "persist.sys.sc_allow_conn"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private nv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "command"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 58
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsService;->ns()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
