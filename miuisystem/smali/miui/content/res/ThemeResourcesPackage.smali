.class public final Lmiui/content/res/ThemeResourcesPackage;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 0
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 59
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    check-cast v2, Lmiui/content/res/ThemeResourcesPackage;

    .line 30
    .restart local v2    # "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    :cond_0
    if-nez v2, :cond_2

    .line 31
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v2

    .line 32
    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v4

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :try_start_0
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/content/res/ThemeResourcesPackage;

    move-object v1, v0

    .line 37
    :cond_1
    if-nez v1, :cond_3

    .line 38
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    monitor-exit v4

    .line 45
    .end local v1    # "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :cond_2
    return-object v2

    .line 41
    .restart local v1    # "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :cond_3
    move-object v2, v1

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 51
    new-instance v2, Lmiui/content/res/ThemeResourcesPackage;

    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lmiui/content/res/ThemeResourcesPackage;-><init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 50
    .end local v1    # "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    .local v2, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2    # "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    .restart local v1    # "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method

.method private loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "fallback"    # Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .prologue
    .line 92
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v4, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v3, v4, :cond_0

    const-string v3, "miui"

    iget-object v4, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v4, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 97
    .local v0, "backupCookie":I
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 98
    .local v1, "backupPath":Ljava/lang/String;
    sget v3, Lmiui/content/res/ThemeResourcesPackage;->sCookieMiuiFramework:I

    iput v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 99
    iget-object v3, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v4, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    .line 101
    .local v2, "result":Z
    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 102
    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 105
    .end local v0    # "backupCookie":I
    .end local v1    # "backupPath":Ljava/lang/String;
    .end local v2    # "result":Z
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .prologue
    const/4 v6, 0x1

    .line 109
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v7}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 110
    iget v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v7}, Lmiui/content/res/ThemeResourcesPackage;->isMiuiResourceCookie(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    const-string v7, "miui"

    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v9, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v1, :cond_1

    .line 115
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 116
    .local v0, "backup":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 117
    .local v2, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    iget-object v7, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v8, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 120
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFileNonFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v5

    .line 121
    .local v5, "result":Z
    iput-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 122
    if-eqz v5, :cond_0

    .line 146
    .end local v0    # "backup":Ljava/lang/String;
    .end local v1    # "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    .end local v2    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Z
    :goto_0
    return v6

    .line 130
    :cond_1
    const/4 v5, 0x0

    .line 131
    .restart local v5    # "result":Z
    iget-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 132
    .local v4, "path":Ljava/lang/String;
    sget v7, Lmiui/content/res/ThemeResourcesPackage;->sCookieFramework:I

    iget v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-ne v7, v8, :cond_3

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "framework-res/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 134
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    const-string v8, "android"

    invoke-super {p0, p1, v7, v8}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 139
    :cond_2
    :goto_1
    iput-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 140
    if-eqz v5, :cond_4

    .line 141
    const-string v7, "package/only"

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_3
    iget v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v7}, Lmiui/content/res/ThemeResourcesPackage;->isMiuiResourceCookie(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "framework-miui-res/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 137
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    const-string v8, "miui"

    invoke-super {p0, p1, v7, v8}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 146
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "result":Z
    :cond_4
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v6

    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, p1, v7}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method


# virtual methods
.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    iget v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v7}, Lmiui/content/res/ThemeResourcesPackage;->isAppResourceCookie(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 64
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    :goto_0
    return v5

    .line 65
    :cond_0
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v7}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    move v5, v6

    goto :goto_0

    .line 68
    :cond_1
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v9, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 71
    .local v1, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeResourcesPackage;->loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 77
    .end local v1    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0}, Lmiui/content/res/ThemeResourcesPackage;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 78
    .local v2, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    iget-object v7, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 79
    iget-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "originName":Ljava/lang/String;
    iget-object v7, v2, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    iget-object v7, v7, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 81
    .restart local v1    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeResourcesPackage;->loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .end local v1    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v2    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    .end local v4    # "originName":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 86
    goto :goto_0

    .line 88
    .end local v0    # "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v5

    goto :goto_0
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .locals 1
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .prologue
    .line 151
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mIsTop:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 155
    return-void
.end method
