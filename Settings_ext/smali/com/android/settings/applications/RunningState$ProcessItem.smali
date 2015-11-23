.class Lcom/android/settings/applications/RunningState$ProcessItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field JS:Lcom/android/settings/applications/RunningState$MergedItem;

.field KX:J

.field final Lj:Ljava/util/HashMap;

.field final Lk:Landroid/util/SparseArray;

.field Ll:Lcom/android/settings/applications/RunningState$ProcessItem;

.field Lm:I

.field Ln:I

.field Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field Lp:Z

.field Lq:Z

.field mIsSystem:Z

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 370
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    .line 347
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090588

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDescription:Ljava/lang/String;

    .line 373
    iput p2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    .line 374
    iput-object p3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;JI)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 530
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KY:J

    .line 531
    iget v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KW:I

    if-ne v0, p4, :cond_0

    .line 532
    iget-wide v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KY:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KZ:Ljava/lang/String;

    .line 542
    :cond_0
    return v2
.end method

.method a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 469
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 470
    if-nez v0, :cond_8

    .line 472
    new-instance v2, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v2, v0}, Lcom/android/settings/applications/RunningState$ServiceItem;-><init>(I)V

    .line 473
    iput-object p2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 475
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/16 v7, 0x2000

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v0, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    .line 479
    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 480
    const-string v0, "RunningService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServiceInfo returned null for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_0
    :goto_0
    return v4

    .line 484
    :catch_0
    move-exception v0

    .line 487
    :cond_1
    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    invoke-static {v5, v0, v6}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->KV:Ljava/lang/CharSequence;

    .line 493
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 494
    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->KU:Landroid/content/pm/PackageItemInfo;

    .line 495
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    move v2, v3

    .line 497
    :goto_2
    iget v6, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KW:I

    iput v6, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->KW:I

    .line 498
    iput-object p2, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 499
    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 500
    :goto_3
    iget-wide v8, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->KX:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_2

    .line 501
    iput-wide v6, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->KX:J

    move v2, v3

    .line 504
    :cond_2
    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v6, :cond_5

    .line 505
    iget-boolean v6, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Lt:Z

    if-eqz v6, :cond_7

    .line 506
    iput-boolean v4, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Lt:Z

    .line 510
    :goto_4
    :try_start_1
    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 511
    iget v4, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090584

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move v4, v3

    .line 526
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 493
    goto :goto_1

    .line 499
    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 514
    :catch_1
    move-exception v2

    .line 515
    iput-object v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_5

    .line 518
    :cond_5
    iget-boolean v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Lt:Z

    if-nez v1, :cond_6

    .line 519
    iput-boolean v3, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Lt:Z

    .line 522
    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090583

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move v3, v2

    goto :goto_6

    :cond_7
    move v3, v2

    goto :goto_4

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v1, v0

    .line 548
    :goto_0
    if-ge v3, v4, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 550
    iget-object v5, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->Ll:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v5, p0, :cond_0

    .line 552
    iput-object p0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->Ll:Lcom/android/settings/applications/RunningState$ProcessItem;

    move v1, v2

    .line 554
    :cond_0
    iput p3, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->KW:I

    .line 555
    invoke-virtual {v0, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->c(Landroid/content/pm/PackageManager;)V

    .line 556
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v0

    or-int/2addr v1, v0

    .line 548
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 559
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lm:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lm:I

    .line 564
    :goto_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 570
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 572
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 573
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget v3, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 575
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method c(Landroid/content/pm/PackageManager;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 383
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 385
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v2, v3, :cond_1

    .line 386
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    .line 387
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 396
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 398
    if-nez v0, :cond_2

    .line 399
    const-string v0, "RunningState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagesForUid return null for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-array v0, v1, [Ljava/lang/String;

    .line 405
    :cond_2
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 407
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 409
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    .line 410
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 411
    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 413
    :catch_1
    move-exception v2

    .line 419
    :cond_3
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 421
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 422
    iget v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v5, :cond_4

    .line 423
    iget v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 425
    if-eqz v3, :cond_4

    .line 426
    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    .line 427
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 428
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 432
    :catch_2
    move-exception v3

    .line 419
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 439
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 441
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;

    .line 442
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    .line 443
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 450
    :cond_6
    :try_start_3
    array-length v1, v0

    if-nez v1, :cond_7

    .line 451
    const-string v0, "RunningState"

    const-string v1, "pkgs is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 455
    :cond_7
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 457
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    .line 458
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 459
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0
.end method
