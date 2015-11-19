.class public final Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeZipFile$MyZipFile;
    }
.end annotation


# static fields
.field static DBG:Z = false

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field public static final THEME_FALLBACK_FILE:Ljava/lang/String; = "theme_fallback.xml"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values"

.field public static final THEME_VALUE_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final sDensity:I

.field private static final sFallbackDensities:[I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mLastModifiedTime:J

.field private mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field private mPath:Ljava/lang/String;

.field private mUpatedTime:J

.field private mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    .line 32
    const-string v0, "ThemeZipFile"

    sput-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 34
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    .line 35
    sget v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getFallbackOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 3
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 71
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ThemeZipFile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 74
    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    .line 327
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_1

    .line 331
    :try_start_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    .line 336
    :cond_1
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 12
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/16 v10, 0xa0

    .line 132
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 133
    iget v11, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v11, :cond_0

    :goto_0
    iput v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 174
    :goto_1
    return v9

    .line 133
    :cond_0
    iget v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    goto :goto_0

    .line 137
    :cond_1
    const-string v4, "/drawable"

    .line 138
    .local v4, "drawableTag":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 139
    .local v5, "drawableTagEndIndex":I
    if-gez v5, :cond_2

    .line 140
    const-string v4, "/raw"

    .line 141
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 143
    :cond_2
    if-gtz v5, :cond_3

    .line 144
    const/4 v9, 0x0

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v5, v11

    .line 148
    invoke-direct {p0, p2, v5}, Lmiui/content/res/ThemeZipFile;->regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "regularPath":Ljava/lang/String;
    if-eq p2, v8, :cond_5

    .line 150
    move-object p2, v8

    .line 151
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 152
    iget v11, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v11, :cond_4

    :goto_2
    iput v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    goto :goto_1

    :cond_4
    iget v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    goto :goto_2

    .line 156
    :cond_5
    const/16 v11, 0x2f

    invoke-virtual {p2, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 158
    .local v3, "drawablePathEndIndex":I
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    .line 159
    .local v1, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v1, p2, v5}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 160
    const/4 v9, 0x0

    .line 161
    .local v9, "result":Z
    sget-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    .local v0, "arr$":[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_8

    aget v2, v0, v6

    .line 162
    .local v2, "density":I
    iget v11, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-ne v2, v11, :cond_7

    .line 161
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 164
    :cond_7
    invoke-virtual {v1, v5}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 165
    invoke-static {v2}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, p2, v3, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 167
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 168
    if-nez v2, :cond_9

    :goto_4
    iput v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 169
    const/4 v9, 0x1

    .line 173
    .end local v2    # "density":I
    :cond_8
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    goto :goto_1

    .restart local v2    # "density":I
    :cond_9
    move v10, v2

    .line 168
    goto :goto_4
.end method

.method protected static getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;
    .locals 9
    .param p0, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "path":Ljava/lang/String;
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 49
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/res/ThemeZipFile;

    move-object v4, v6

    .line 50
    .local v4, "zipFile":Lmiui/content/res/ThemeZipFile;
    :goto_0
    if-nez v4, :cond_1

    .line 51
    sget-object v8, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v8

    .line 52
    :try_start_0
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 53
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/res/ThemeZipFile;

    move-object v4, v6

    .line 54
    :goto_1
    if-nez v4, :cond_0

    .line 55
    new-instance v5, Lmiui/content/res/ThemeZipFile;

    invoke-direct {v5, v1, p0}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v4    # "zipFile":Lmiui/content/res/ThemeZipFile;
    .local v5, "zipFile":Lmiui/content/res/ThemeZipFile;
    :try_start_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :try_start_2
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .local v4, "zipFile":Ljava/lang/Object;
    move-object v2, v3

    .line 59
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .end local v4    # "zipFile":Ljava/lang/Object;
    .end local v5    # "zipFile":Lmiui/content/res/ThemeZipFile;
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :cond_0
    :try_start_3
    monitor-exit v8

    .line 61
    :cond_1
    return-object v4

    :cond_2
    move-object v4, v7

    .line 49
    goto :goto_0

    .local v4, "zipFile":Lmiui/content/res/ThemeZipFile;
    :cond_3
    move-object v4, v7

    .line 53
    goto :goto_1

    .line 59
    .end local v4    # "zipFile":Lmiui/content/res/ThemeZipFile;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .restart local v5    # "zipFile":Lmiui/content/res/ThemeZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .local v4, "zipFile":Ljava/lang/Object;
    goto :goto_2

    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .end local v4    # "zipFile":Ljava/lang/Object;
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :catchall_2
    move-exception v6

    move-object v4, v5

    .restart local v4    # "zipFile":Ljava/lang/Object;
    move-object v2, v3

    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    goto :goto_2
.end method

.method private getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    const-string v6, "#*.png"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "#*.png"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "fuzzyIconName":Ljava/lang/String;
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v6}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 292
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 294
    .local v3, "enumEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    move-object v2, v3

    .line 306
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "enumEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "fuzzyIconName":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 307
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    iput-wide v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    .line 308
    iget-boolean v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    if-eqz v6, :cond_4

    .line 309
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v6, v2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 310
    iget-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    if-nez v6, :cond_4

    .line 317
    :cond_2
    :goto_1
    return v5

    .line 303
    :cond_3
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v6, p2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_0

    .line 312
    :cond_4
    iget-wide v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V
    .locals 1
    .param p1, "callback"    # Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/content/res/ThemeResources$ConfigType;

    .prologue
    .line 264
    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 265
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p1, v0, p3}, Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;->load(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 268
    :cond_0
    return-void
.end method

.method private regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "drawableTagEndIndex"    # I

    .prologue
    .line 184
    const/16 v6, 0x2f

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 185
    .local v4, "drawablePathEndIndex":I
    if-ltz v4, :cond_0

    add-int/lit8 v6, p2, 0x1

    if-ne v4, v6, :cond_1

    .line 213
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 191
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 192
    .local v3, "dpiTag":Ljava/lang/String;
    const-string v6, "dpi"

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 193
    .local v2, "dpiStartIndex":I
    if-lez v2, :cond_4

    .line 194
    const-string v6, "dpi"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v2, v6

    .line 195
    .local v1, "dpiEndIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_2

    if-le v2, p2, :cond_2

    .line 196
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 198
    :cond_2
    if-ne v2, p2, :cond_3

    if-eq v1, v4, :cond_0

    .line 202
    :cond_3
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 206
    .end local v1    # "dpiEndIndex":I
    :cond_4
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 207
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v0, p1, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, p1, v4, v6}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 210
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "ret":Ljava/lang/String;
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    move-object p1, v5

    .line 213
    goto :goto_0
.end method

.method private trimVersionPart(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dpiEndIndex"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge p1, v3, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x76

    if-ne v3, v4, :cond_1

    .line 221
    add-int/lit8 v2, p1, 0x2

    .line 222
    .local v2, "versionEndIndex":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 223
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 224
    .local v1, "ch":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_0

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    .line 228
    .end local v1    # "ch":C
    :cond_0
    add-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_1

    .line 229
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 230
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v0, p2, p1}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 232
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 236
    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v2    # "versionEndIndex":I
    :cond_1
    return-object p2

    .line 222
    .restart local v1    # "ch":C
    .restart local v2    # "versionEndIndex":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkUpdate()J
    .locals 8

    .prologue
    .line 77
    sget-boolean v4, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUpdate for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 81
    .local v2, "lastModified":J
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lmiui/content/res/ThemeCompatibility;->isCompatibleResource(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    .line 86
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 88
    iput-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 89
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 90
    sget-boolean v4, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openZipFile for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    :try_start_1
    new-instance v4, Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-direct {v4, p0, v1}, Lmiui/content/res/ThemeZipFile$MyZipFile;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V

    iput-object v4, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :cond_3
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    return-wide v4

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 323
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 324
    return-void
.end method

.method getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .prologue
    .line 112
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v3, v3, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 128
    :goto_0
    return v2

    .line 114
    :cond_1
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 115
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 118
    :cond_2
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 122
    .local v2, "result":Z
    if-nez v2, :cond_3

    const-string v3, ".9.png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const-string v3, "9.png"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 124
    const-string v3, "png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 127
    :cond_3
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    goto :goto_0
.end method

.method getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v2

    .line 273
    :cond_1
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 274
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 276
    :try_start_0
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3, v1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadThemeConfig(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;
    .param p2, "basePath"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 245
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 246
    const-string v1, "theme_values"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 247
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 250
    const-string v1, ".xml"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 251
    sget v1, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 252
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 256
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 257
    const-string v1, "theme_fallback.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 260
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    goto :goto_0
.end method
