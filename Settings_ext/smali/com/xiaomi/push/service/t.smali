.class public Lcom/xiaomi/push/service/t;
.super Ljava/lang/Object;
.source "MIPushNotificationHelper.java"


# static fields
.field public static aIN:J

.field private static aIO:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/t;->aIN:J

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    return-void
.end method

.method public static N(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 86
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move v0, v1

    .line 89
    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 96
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static O(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 388
    .line 389
    const-string v0, "mipush_notification"

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/t;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 390
    const-string v1, "mipush_small_notification"

    invoke-static {p0, p1, v1}, Lcom/xiaomi/push/service/t;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 391
    if-lez v0, :cond_1

    .line 398
    :goto_0
    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 401
    :cond_0
    return v0

    .line 393
    :cond_1
    if-lez v1, :cond_2

    move v0, v1

    .line 394
    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method

.method public static P(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 467
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 469
    sget-object v3, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    monitor-enter v3

    .line 470
    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 471
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 472
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 474
    sget-object v2, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    return-void
.end method

.method static Q(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 496
    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 502
    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 505
    return-void
.end method

.method static S(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 508
    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 438
    :try_start_0
    const-class v0, Landroid/app/Notification;

    .line 439
    const-string v1, "extraNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 440
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 441
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTargetPkg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 445
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 446
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-object p0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 241
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 242
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 246
    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 247
    if-eqz p3, :cond_3

    .line 248
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 252
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 253
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 254
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mipush_notification"

    invoke-static {p0, v0, v3}, Lcom/xiaomi/push/service/t;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mipush_small_notification"

    invoke-static {p0, v3, v4}, Lcom/xiaomi/push/service/t;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 256
    if-lez v0, :cond_4

    if-lez v3, :cond_4

    .line 257
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->s(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 258
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 262
    :goto_1
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 264
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v3

    .line 265
    if-eqz v3, :cond_1

    const-string v0, "ticker"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "ticker"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 268
    :cond_1
    sget-wide v6, Lcom/xiaomi/push/service/t;->aIN:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 269
    sput-wide v4, Lcom/xiaomi/push/service/t;->aIN:J

    .line 271
    iget v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 272
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/t;->S(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->Q(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 276
    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 277
    if-eqz v3, :cond_2

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2

    .line 278
    const-string v0, "sound_uri"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 281
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 285
    :cond_2
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 249
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 250
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 260
    :cond_4
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/t;->O(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 170
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.xmsf"

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 180
    const-string v1, "mipush_notified"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 190
    const-string v1, "mipush_notified"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)V
    .locals 18

    .prologue
    .line 102
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v8

    .line 106
    invoke-static/range {p0 .. p2}, Lcom/xiaomi/push/service/t;->b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v8, v2}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Landroid/app/PendingIntent;

    move-result-object v5

    .line 109
    if-nez v5, :cond_0

    .line 110
    const-string v4, "The click PendingIntent is null. "

    invoke-static {v4}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 113
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_3

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v9, v5}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v5

    .line 150
    :goto_1
    const-string v6, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/push/service/t;->a(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;

    .line 153
    :cond_1
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v6

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    .line 156
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 157
    new-instance v4, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    sget-object v5, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    monitor-enter v5

    .line 159
    :try_start_0
    sget-object v6, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v4, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_2

    .line 162
    sget-object v4, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 164
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 116
    :cond_3
    new-instance v7, Landroid/app/Notification;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/t;->O(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v7, v6, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 119
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x1

    aget-object v6, v6, v11

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v10, v6, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v10

    .line 123
    if-eqz v10, :cond_4

    const-string v5, "ticker"

    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 124
    const-string v5, "ticker"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 126
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 127
    sget-wide v14, Lcom/xiaomi/push/service/t;->aIN:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x2710

    cmp-long v5, v14, v16

    if-lez v5, :cond_5

    .line 128
    sput-wide v12, Lcom/xiaomi/push/service/t;->aIN:J

    .line 129
    iget v5, v8, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 130
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/t;->S(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/xiaomi/push/service/t;->Q(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    move v6, v5

    .line 133
    :goto_2
    iput v6, v7, Landroid/app/Notification;->defaults:I

    .line 134
    if-eqz v10, :cond_5

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_5

    .line 135
    const-string v5, "sound_uri"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 136
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "android.resource://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 138
    xor-int/lit8 v6, v6, 0x1

    iput v6, v7, Landroid/app/Notification;->defaults:I

    .line 139
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 143
    :cond_5
    iget v5, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v7, Landroid/app/Notification;->flags:I

    .line 145
    if-eqz v9, :cond_6

    .line 146
    iput-object v9, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_6
    move-object v5, v7

    goto/16 :goto_1

    :cond_7
    move v6, v5

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 207
    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 209
    const/16 v4, 0x140

    if-gt v0, v4, :cond_2

    .line 210
    const-string v0, "title_short"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v0

    .line 214
    :cond_0
    const-string v0, "description_short"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    move-object v2, v0

    .line 229
    :cond_1
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-object v0

    .line 218
    :cond_2
    const/16 v4, 0x168

    if-le v0, v4, :cond_1

    .line 219
    const-string v0, "title_long"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v1, v0

    .line 223
    :cond_3
    const-string v0, "description_long"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    .line 225
    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 293
    invoke-static {p1}, Lcom/xiaomi/push/service/t;->e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    .line 295
    if-nez v1, :cond_0

    move-object v0, v2

    .line 371
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const-string v0, "layout_name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    const-string v3, "layout_value"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    .line 302
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 307
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 312
    const-string v3, "layout"

    invoke-virtual {v5, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 313
    if-nez v0, :cond_3

    move-object v0, v2

    .line 314
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 310
    goto :goto_0

    .line 317
    :cond_3
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-direct {v3, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 319
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    const-string v0, "text"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    const-string v0, "text"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 324
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    const-string v9, "id"

    invoke-virtual {v5, v0, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 328
    if-lez v0, :cond_4

    .line 329
    invoke-virtual {v3, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 367
    :catch_1
    move-exception v0

    .line 368
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 369
    goto :goto_0

    .line 334
    :cond_5
    :try_start_2
    const-string v0, "image"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 335
    const-string v0, "image"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 337
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 338
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 340
    const-string v9, "id"

    invoke-virtual {v5, v0, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 341
    const-string v9, "drawable"

    invoke-virtual {v5, v8, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 342
    if-lez v0, :cond_6

    .line 343
    invoke-virtual {v3, v0, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 348
    :cond_7
    const-string v0, "time"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 349
    const-string v0, "time"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 350
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 351
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 352
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 355
    const-string v1, "yy-MM-dd hh:mm"

    .line 357
    :cond_9
    const-string v8, "id"

    invoke-virtual {v5, v0, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 358
    if-lez v0, :cond_8

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 360
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 362
    invoke-virtual {v10, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_a
    move-object v0, v3

    .line 371
    goto/16 :goto_0
.end method

.method public static c(Ljava/util/Map;)Z
    .locals 2

    .prologue
    .line 520
    if-eqz p0, :cond_0

    const-string v0, "notify_foreground"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    .line 523
    :cond_1
    const-string v0, "notify_foreground"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 419
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 420
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 424
    if-lez v0, :cond_2

    .line 425
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 426
    if-lez v2, :cond_1

    move v1, v2

    .line 428
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 424
    goto :goto_1
.end method

.method static e(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "miui_package_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->DB()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 481
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    add-int v2, v1, p2

    .line 484
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 485
    sget-object v3, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    monitor-enter v3

    .line 486
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 487
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    sget-object v1, Lcom/xiaomi/push/service/t;->aIO:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 492
    :cond_1
    monitor-exit v3

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 413
    const-string v1, "drawable"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 514
    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 516
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 517
    return-void
.end method

.method private static s(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 375
    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/xiaomi/push/service/t;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
