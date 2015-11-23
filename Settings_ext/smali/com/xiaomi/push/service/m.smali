.class public Lcom/xiaomi/push/service/m;
.super Ljava/lang/Object;
.source "MIPushEventProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static L(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 242
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.mipush.miui.CLICK_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaomi.mipush.miui.RECEIVE_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 248
    const/16 v4, 0x20

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 250
    const/16 v4, 0x20

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 251
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 254
    :cond_1
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static M(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 417
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    :goto_0
    if-nez v1, :cond_0

    .line 425
    :goto_1
    return v0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    const/4 v1, 0x0

    goto :goto_0

    .line 425
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/xiaomi/push/service/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/o;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 285
    return-void
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Lcom/xiaomi/push/service/r;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/xiaomi/push/service/r;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 355
    return-void
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 359
    new-instance v0, Lcom/xiaomi/push/service/s;

    const/4 v1, 0x4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/s;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 380
    return-void
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;[BJ)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 73
    new-instance v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 75
    :try_start_0
    invoke-static {v9, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 76
    iget-object v0, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 77
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v0, "mipush_payload"

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 79
    const-string v0, "mrt"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v0, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {v9}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/k;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V

    .line 89
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    const-string v0, "mrt"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->aOS:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v3

    if-ne v0, v3, :cond_3

    invoke-static {p0}, Lcom/xiaomi/push/service/j;->cC(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v0

    iget-object v3, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/service/j;->dp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v9}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string v0, ""

    .line 97
    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop a message for unregistered, msgid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 101
    iget-object v0, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {p0, v9, v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V

    .line 227
    :cond_2
    :goto_0
    return-void

    .line 105
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->aOS:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v3

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaomi.xmsf"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive a message with wrong package name, expect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 111
    const-string v0, "unmatched_package"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v9, v0, v1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_4
    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 119
    const-string v0, "receive a message, appid=%1$s, msgid= %2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DZ()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 123
    :cond_5
    invoke-static {v9}, Lcom/xiaomi/push/service/m;->d(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/m;->L(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    invoke-static {p0, v9}, Lcom/xiaomi/push/service/m;->b(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto/16 :goto_0

    .line 126
    :cond_6
    invoke-static {v9}, Lcom/xiaomi/push/service/m;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/m;->L(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v9}, Lcom/xiaomi/push/service/m;->c(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 129
    invoke-static {p0, v9}, Lcom/xiaomi/push/service/m;->c(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto/16 :goto_0

    .line 130
    :cond_7
    invoke-static {v9}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/m;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-static {p0, v10}, Lcom/xiaomi/push/service/m;->h(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    :cond_9
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->aOO:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    if-ne v0, v1, :cond_a

    .line 133
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "pref_registered_pkg_names"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    iget-object v3, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    if-eq v0, v11, :cond_b

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/t;->c(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->N(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 148
    :cond_b
    iget-object v0, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/push/service/b;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 194
    :goto_1
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->aOP:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v1, :cond_2

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    goto/16 :goto_0

    .line 154
    :cond_c
    const/4 v0, 0x0

    .line 155
    if-eqz v2, :cond_13

    .line 156
    iget-object v1, v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 157
    iget-object v0, v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v1, "jobkey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 160
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_e
    iget-object v1, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/xiaomi/push/service/u;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 165
    :goto_2
    if-eqz v1, :cond_10

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a duplicate message, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 190
    :cond_f
    :goto_3
    invoke-static {p0, v9}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto :goto_1

    .line 168
    :cond_10
    invoke-static {p0, v9, p1}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)V

    .line 170
    invoke-static {v9}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 173
    iget-object v1, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :try_start_2
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 178
    iget-object v1, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/service/b;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 181
    :catch_1
    move-exception v1

    .line 182
    :try_start_3
    iget-object v1, v9, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/service/b;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_11
    new-instance v0, Lcom/xiaomi/push/service/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, v9}, Lcom/xiaomi/push/service/n;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    goto/16 :goto_0

    .line 222
    :cond_12
    const-string v0, "receive a mipush message without package name"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_13
    move v1, v7

    goto :goto_2
.end method

.method private static b(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/xiaomi/push/service/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/p;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 308
    return-void
.end method

.method private static b(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2

    .prologue
    .line 231
    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "miui_package_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Lcom/xiaomi/push/service/q;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/q;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/ab;)V

    .line 331
    return-void
.end method

.method private static c(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "notify_effect"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    .line 384
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 385
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 386
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 389
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Dq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->L(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 390
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->dN(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DZ()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->aOT:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Dp()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 397
    const-string v2, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 399
    return-object v0
.end method

.method private static d(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_1
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "obslete_ads_message"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/m;->d(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 406
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 410
    :goto_0
    return v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;Lcom/xiaomi/push/service/y;)V
    .locals 4

    .prologue
    .line 53
    instance-of v0, p2, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 54
    check-cast v0, Lcom/xiaomi/smack/packet/d;

    .line 55
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/d;->dI(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    iget-object v2, p3, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/G;->I(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/a;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/G;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/smack/d/k;->dK(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/XMPushService;[BJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "not a mipush message"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/xiaomi/push/service/y;ZILjava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    if-nez p3, :cond_0

    .line 37
    invoke-static {p1}, Lcom/xiaomi/push/service/i;->cA(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    const-string v1, "token-expired"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/push/service/h;->appId:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/push/service/h;->aFi:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/push/service/h;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/xiaomi/push/service/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
