.class public Lcom/android/settings/location/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aW(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v0

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v1, v3

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 26
    const/16 v4, 0x1000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    .line 29
    :goto_0
    if-ge v1, v5, :cond_1

    .line 30
    const-string v6, "BackgroundLocationManagerFragment"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 34
    invoke-static {v6}, Lcom/android/settings/location/Utils;->d(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    return-object v2

    .line 37
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static d(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
