.class final Lcom/android/settings_ext/deviceinfo/Memory$6;
.super Lcom/android/settings_ext/search/a;
.source "Memory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8

    .prologue
    const v7, 0x7f0903e1

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 534
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 535
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 538
    const v2, 0x7f090549

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 539
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 540
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v2, Lcom/android/settings_ext/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 543
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 544
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 545
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 546
    invoke-virtual {v5, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 547
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 548
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_1
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 553
    const v2, 0x7f0903fd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 554
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 555
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 558
    const v2, 0x7f0903fb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 559
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 560
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 563
    const v2, 0x7f0903ff

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 564
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 565
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 568
    const v2, 0x7f090402

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 569
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 570
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 573
    const v2, 0x7f090403

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 574
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 575
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 578
    const v2, 0x7f090401

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 579
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 580
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 583
    const v2, 0x7f090405

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 584
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 585
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 588
    const v2, 0x7f090404

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 589
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 590
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    return-object v1
.end method
