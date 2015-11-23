.class final Lcom/android/settings_ext/print/g;
.super Landroid/widget/BaseAdapter;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/Filterable;


# instance fields
.field final synthetic ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

.field private final ahh:Ljava/util/List;

.field private final ahi:Ljava/util/List;

.field private ahj:Ljava/lang/CharSequence;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V
    .locals 1

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/print/g;->mLock:Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Lcom/android/settings_ext/print/b;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/android/settings_ext/print/g;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/print/g;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings_ext/print/g;->ahj:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/print/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/print/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/print/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 610
    iget-object v2, p0, Lcom/android/settings_ext/print/g;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 612
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 613
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 614
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 615
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v5}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->k(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    iget-object v4, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 620
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahj:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ext/print/g;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/g;->ahj:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 624
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {p0}, Lcom/android/settings_ext/print/g;->notifyDataSetChanged()V

    .line 626
    return-void

    .line 624
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 482
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 478
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/settings_ext/print/g;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 491
    new-instance v0, Lcom/android/settings_ext/print/h;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/print/h;-><init>(Lcom/android/settings_ext/print/g;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/settings_ext/print/g;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 548
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 553
    if-nez p2, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d0

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 558
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/print/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 559
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->h(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 565
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->i(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 566
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->j(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    .line 571
    :goto_0
    const v0, 0x7f100052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 572
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    const v0, 0x7f10007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 575
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 576
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :goto_1
    const v0, 0x7f100051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 584
    if-eqz v1, :cond_2

    .line 585
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    :goto_2
    return-object p2

    .line 567
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v1, v2

    move-object v3, v0

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 588
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 567
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    .prologue
    .line 601
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 602
    new-instance v0, Lcom/android/settings_ext/print/i;

    iget-object v1, p0, Lcom/android/settings_ext/print/g;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/print/i;-><init>(Landroid/content/Context;)V

    .line 604
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 466
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/print/g;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/settings_ext/print/g;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 632
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/print/g;->ahj:Ljava/lang/CharSequence;

    .line 634
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ext/print/g;->notifyDataSetInvalidated()V

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public rf()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings_ext/print/g;->ahh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
