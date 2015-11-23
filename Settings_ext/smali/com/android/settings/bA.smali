.class final Lcom/android/settings_ext/bA;
.super Lcom/android/settings_ext/search/a;
.source "DevelopmentSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method

.method private j(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 1890
    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 1900
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bA;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1901
    const/4 v0, 0x0

    .line 1906
    :goto_0
    return-object v0

    .line 1904
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1905
    const v1, 0x7f060023

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1906
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public k(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .prologue
    .line 1911
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bA;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1912
    const/4 v0, 0x0

    .line 1919
    :cond_0
    :goto_0
    return-object v0

    .line 1915
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    # invokes: Lcom/android/settings_ext/DevelopmentSettings;->bJ()Z
    invoke-static {}, Lcom/android/settings_ext/DevelopmentSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1917
    const-string v1, "oem_unlock_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
