.class final Lcom/android/settings_ext/print/n;
.super Lcom/android/settings_ext/search/a;
.source "PrintSettingsFragment.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10

    .prologue
    .line 561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 564
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090686

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 568
    new-instance v1, Lcom/android/settings_ext/search/n;

    invoke-direct {v1, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 569
    iput-object v4, v1, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 570
    iput-object v4, v1, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 571
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v0}, Landroid/print/PrintManager;->getInstalledPrintServices()Ljava/util/List;

    move-result-object v5

    .line 575
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 576
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    .line 577
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/printservice/PrintServiceInfo;

    .line 579
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v8, Lcom/android/settings_ext/search/n;

    invoke-direct {v8, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 585
    invoke-virtual {v0}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 586
    const v0, 0x7f09068e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/settings_ext/search/n;->Rz:Ljava/lang/String;

    .line 587
    const v0, 0x7f09068f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/settings_ext/search/n;->RA:Ljava/lang/String;

    .line 588
    iput-object v4, v8, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 589
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 592
    :cond_0
    return-object v2
.end method

.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 600
    const v2, 0x7f060060

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 601
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    return-object v0
.end method