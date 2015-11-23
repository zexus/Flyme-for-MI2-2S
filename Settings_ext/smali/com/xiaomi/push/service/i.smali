.class public Lcom/xiaomi/push/service/i;
.super Ljava/lang/Object;
.source "MIPushAccountUtils.java"


# static fields
.field private static aIC:Lcom/xiaomi/push/service/h;


# direct methods
.method public static BC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/xiaomi/a/a/d/a;->yM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "http://10.237.12.17:9085/pass/register"

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/a/a/d/a;->yL()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sandbox.xmpush.xiaomi.com"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pass/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "register.xmpush.xiaomi.com"

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/service/h;)V
    .locals 3

    .prologue
    .line 152
    const-string v0, "mipush_account"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    const-string v1, "uuid"

    iget-object v2, p1, Lcom/xiaomi/push/service/h;->aIB:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v1, "security"

    iget-object v2, p1, Lcom/xiaomi/push/service/h;->security:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v1, "token"

    iget-object v2, p1, Lcom/xiaomi/push/service/h;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string v1, "app_id"

    iget-object v2, p1, Lcom/xiaomi/push/service/h;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string v1, "package_name"

    iget-object v2, p1, Lcom/xiaomi/push/service/h;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v1, "app_token"

    iget-object v2, p1, Lcom/xiaomi/push/service/h;->aFi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    const-string v1, "device_id"

    invoke-static {p0}, Lcom/xiaomi/push/service/f;->cx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v1, "env_type"

    iget v2, p1, Lcom/xiaomi/push/service/h;->aCU:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/h;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 88
    const-class v8, Lcom/xiaomi/push/service/i;

    monitor-enter v8

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "devid"

    invoke-static {p0}, Lcom/xiaomi/push/service/f;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cz(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "1000271"

    .line 91
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cz(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v5, "420100086271"

    .line 92
    :goto_1
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cz(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v6, "com.xiaomi.xmsf"

    .line 94
    :goto_2
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "appid"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apptoken"

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x4000

    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 103
    :goto_3
    :try_start_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "appversion"

    if-eqz v1, :cond_4

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-direct {v3, v7, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sdkversion"

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "packagename"

    invoke-direct {v1, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imei_md5"

    invoke-static {p0}, Lcom/xiaomi/push/service/f;->cw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/a/a/f/d;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "os"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/xiaomi/push/service/i;->BC()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/xiaomi/a/a/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 117
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    const-string v1, "ssecurity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v0, Lcom/xiaomi/push/service/h;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "@xiaomi.com/an"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/xiaomi/a/a/f/d;->dN(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/a/a/d/a;->yN()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/service/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Lcom/xiaomi/push/service/h;)V

    .line 125
    sput-object v0, Lcom/xiaomi/push/service/i;->aIC:Lcom/xiaomi/push/service/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :cond_0
    :goto_5
    monitor-exit v8

    return-object v0

    :cond_1
    move-object v4, p2

    .line 90
    goto/16 :goto_0

    :cond_2
    move-object v5, p3

    .line 91
    goto/16 :goto_1

    :cond_3
    move-object v6, p1

    .line 92
    goto/16 :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    :try_start_3
    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto/16 :goto_3

    .line 103
    :cond_4
    const-string v1, "0"

    goto/16 :goto_4

    .line 128
    :cond_5
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/xiaomi/push/service/l;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 130
    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 46
    const-class v9, Lcom/xiaomi/push/service/i;

    monitor-enter v9

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/i;->aIC:Lcom/xiaomi/push/service/h;

    if-eqz v1, :cond_1

    .line 47
    sget-object v0, Lcom/xiaomi/push/service/i;->aIC:Lcom/xiaomi/push/service/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    :goto_0
    monitor-exit v9

    return-object v0

    .line 50
    :cond_1
    :try_start_1
    const-string v1, "mipush_account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 52
    const-string v1, "uuid"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "token"

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "security"

    const/4 v4, 0x0

    invoke-interface {v10, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v4, "app_id"

    const/4 v5, 0x0

    invoke-interface {v10, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    const-string v5, "app_token"

    const/4 v6, 0x0

    invoke-interface {v10, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    const-string v6, "package_name"

    const/4 v7, 0x0

    invoke-interface {v10, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    const-string v7, "device_id"

    const/4 v8, 0x0

    invoke-interface {v10, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    const-string v7, "env_type"

    const/4 v11, 0x1

    invoke-interface {v10, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 61
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "a-"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 62
    invoke-static {p0}, Lcom/xiaomi/push/service/f;->cx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "device_id"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 67
    invoke-static {p0}, Lcom/xiaomi/push/service/f;->cx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 71
    const-string v11, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 74
    const-string v1, "erase the old account."

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/xiaomi/push/service/i;->cB(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 79
    :cond_3
    :try_start_2
    new-instance v0, Lcom/xiaomi/push/service/h;

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/service/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/service/i;->aIC:Lcom/xiaomi/push/service/h;

    .line 80
    sget-object v0, Lcom/xiaomi/push/service/i;->aIC:Lcom/xiaomi/push/service/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static cB(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "mipush_account"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/i;->aIC:Lcom/xiaomi/push/service/h;

    .line 171
    return-void
.end method

.method private static cz(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
