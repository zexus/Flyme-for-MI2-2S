.class public Lmiui/content/res/ThemeCompatibility;
.super Ljava/lang/Object;
.source "ThemeCompatibility.java"


# static fields
.field private static final COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final COMPATIBILITY_FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DISABLE_MIUI_THEME_MECHANISM:Ljava/lang/String; = "/data/system/theme_config/theme_disable"

.field private static final MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sThemeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 21
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/theme_config/theme_disable"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    .line 23
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    .line 24
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    .line 26
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    .line 30
    sget-boolean v9, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    if-eqz v9, :cond_7

    .line 31
    invoke-static {}, Lmiui/content/res/ThemeCompatibilityLoader;->loadConfig()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;

    .line 32
    .local v2, "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    iget-object v9, v2, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v10, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v9, v10, :cond_3

    move-object v8, v2

    .line 33
    check-cast v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 34
    .local v8, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v7, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 35
    .local v7, "pkgName":Ljava/lang/String;
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 36
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-nez v4, :cond_1

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v9, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 41
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    :cond_3
    iget-object v9, v2, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v10, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v9, v10, :cond_0

    move-object v8, v2

    .line 42
    check-cast v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    .line 43
    .local v8, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iget-object v7, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    .line 44
    .restart local v7    # "pkgName":Ljava/lang/String;
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 45
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    if-nez v5, :cond_4

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v9, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_4
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    .end local v2    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    :cond_5
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    const-string v10, "miui"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 54
    .local v6, "miuiFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v6, :cond_8

    .line 55
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 56
    .local v0, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v9, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v10, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-static {v9, v10}, Lmiui/content/res/ThemeCompatibility;->combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "key":Ljava/lang/String;
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 58
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-nez v4, :cond_6

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    sget-object v9, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    .end local v0    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    .end local v6    # "miuiFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    :cond_7
    const-string v9, "ThemeCompatibility"

    const-string v10, "theme disabled flag has been checked!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p1, "originName"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 101
    :cond_0
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 102
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {p0}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 103
    const-string v3, "/"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 105
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 107
    return-object v2
.end method

.method public static getFallbackList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "mayFilterByType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "mayFilterByOriginPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const-string v1, "miui"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p2}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "originName":Ljava/lang/String;
    sget-object v1, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-static {p1, v0}, Lmiui/content/res/ThemeCompatibility;->combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 85
    .end local v0    # "originName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static getNewDefaultValueList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static isCompatibleResource(Ljava/lang/String;)Z
    .locals 2
    .param p0, "resourceThemePath"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "/data/system/theme/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/compatibility/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isThemeEnabled()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    return v0
.end method
