.class Lcom/android/settings_ext/notification/NotificationAppList$2;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeO:Lcom/android/settings_ext/notification/NotificationAppList;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/NotificationAppList;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 434
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 435
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v3, "Collecting apps..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 437
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->e(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->f(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qG()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "NotificationAppList"

    const-string v7, "  launchable activities:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 447
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qG()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "NotificationAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 451
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->g(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->f(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v6

    .line 453
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qG()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NotificationAppList"

    const-string v7, "  config activities:"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 455
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qG()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "NotificationAppList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_5
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 460
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 461
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 462
    iget-object v8, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v8}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 467
    iget-object v8, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v8}, Lcom/android/settings_ext/notification/NotificationAppList;->g(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v9}, Lcom/android/settings_ext/notification/NotificationAppList;->h(Lcom/android/settings_ext/notification/NotificationAppList;)Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lcom/android/settings_ext/notification/NotificationAppList;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ext/notification/NotificationAppList$Backend;)Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    move-result-object v0

    .line 468
    iget-object v8, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v8}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->g(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v3}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/settings_ext/notification/NotificationAppList;->a(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->e(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v3}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->e(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qH()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->c(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->e(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    .line 481
    iget-object v6, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    iget-object v7, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lcom/android/settings_ext/notification/NotificationAppList;->a(Lcom/android/settings_ext/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeW:Ljava/lang/String;

    .line 482
    iget-object v6, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeW:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 483
    iget-object v0, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeW:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v1}, Lcom/android/settings_ext/notification/NotificationAppList;->c(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object v1, v0

    .line 486
    goto :goto_3

    .line 487
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->j(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v1}, Lcom/android/settings_ext/notification/NotificationAppList;->i(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 489
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAppList;->qG()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "NotificationAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationAppList$2;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v5}, Lcom/android/settings_ext/notification/NotificationAppList;->d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apps in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    return-void

    :cond_b
    move-object v0, v1

    goto :goto_4
.end method
