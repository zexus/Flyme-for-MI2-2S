.class final Lcom/android/settings_ext/notification/ZenModeSettings$14;
.super Lcom/android/settings_ext/search/a;
.source "ZenModeSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7

    .prologue
    .line 544
    invoke-static {p1}, Lcom/android/settings_ext/notification/ZenModeSettings;->bi(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 548
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 549
    new-instance v6, Lcom/android/settings_ext/search/n;

    invoke-direct {v6, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 551
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 552
    const v0, 0x7f0909c0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 553
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :cond_0
    return-object v4
.end method

.method public k(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .prologue
    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-static {p1}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string v1, "phone_calls"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_0
    return-object v0
.end method
