.class final Lcom/android/settings/ba;
.super Lcom/android/settings/search/a;
.source "DataUsageSummary.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2530
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5

    .prologue
    const v4, 0x7f090843

    .line 2533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2538
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 2539
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 2540
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 2541
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2544
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 2545
    const-string v3, "data_usage_enable_mobile"

    iput-object v3, v2, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 2546
    const v3, 0x7f09086e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 2547
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 2548
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2551
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 2552
    const-string v3, "data_usage_disable_mobile_limit"

    iput-object v3, v2, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 2553
    const v3, 0x7f090862

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 2554
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 2555
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2558
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 2559
    const-string v3, "data_usage_cycle"

    iput-object v3, v2, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 2560
    const v3, 0x7f09084a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 2561
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 2562
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2564
    return-object v0
.end method
