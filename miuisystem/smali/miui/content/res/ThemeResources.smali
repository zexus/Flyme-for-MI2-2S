.class public Lmiui/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResources$1;,
        Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;,
        Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;,
        Lmiui/content/res/ThemeResources$ConfigType;,
        Lmiui/content/res/ThemeResources$FilterInfo;,
        Lmiui/content/res/ThemeResources$MetaData;
    }
.end annotation


# static fields
.field private static final ATTR_FILTER_PATH:Ljava/lang/String; = "path"

.field static DBG:Z = false

.field private static final FILTER_DESCRIPTION_FILE:Ljava/lang/String; = "filters.xml"

.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final LANGUAGE_THEME_PATH:Ljava/lang/String; = "/data/system/language/"

.field public static final LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final MIUI_NAME:Ljava/lang/String; = "framework-miui-res"

.field public static final MIUI_PACKAGE:Ljava/lang/String; = "miui"

.field public static final SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_LANGUAGE_THEME_PATH:Ljava/lang/String; = "/system/language/"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String;

.field private static final TAG_FILTER:Ljava/lang/String; = "filter"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final THEME_DATA_CONFIG_DIR_PATH:Ljava/lang/String; = "/data/system/theme_config/"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/system/theme/"

.field public static final THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

.field public static final THEME_RIGHTS_PATH:Ljava/lang/String; = "/data/system/theme/rights/"

.field public static final THEME_VERSION_COMPATIBILITY_PATH:Ljava/lang/String; = "/data/system/theme/compatibility/"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final sAppliedLockstyleConfigPath:Ljava/lang/String; = "/data/system/theme/config.config"

.field protected static sCookieFramework:I

.field protected static sCookieMiuiExtFramework:I

.field protected static sCookieMiuiFramework:I

.field protected static sCookieMiuiSdk:I

.field private static sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static sLockWallpaperModifiedTime:J

.field private static sSystem:Lmiui/content/res/ThemeResourcesSystem;


# instance fields
.field private mFilterInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsTop:Z

.field protected mIsUserThemePath:Z

.field private mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

.field protected mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageZipFile:Lmiui/content/res/ThemeZipFile;

.field protected mResources:Landroid/content/res/MiuiResources;

.field protected mShouldFallbackDeeper:Z

.field protected mSupportWrapper:Z

.field protected mUpdatedTime:J

.field protected mWrapped:Lmiui/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 38
    sput-boolean v5, Lmiui/content/res/ThemeResources;->DBG:Z

    .line 57
    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "/system/media/theme/elder-default/"

    :goto_0
    sput-object v0, Lmiui/content/res/ThemeResources;->SYSTEM_THEME_PATH:Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/content/res/ThemeResources$MetaData;

    new-instance v1, Lmiui/content/res/ThemeResources$MetaData;

    sget-object v2, Lmiui/content/res/ThemeResources;->SYSTEM_THEME_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v3}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v0, v5

    new-instance v1, Lmiui/content/res/ThemeResources$MetaData;

    const-string v2, "/data/system/theme/"

    invoke-direct {v1, v2, v3, v3}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v0, v3

    sput-object v0, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    .line 434
    sput v4, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    .line 435
    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    .line 436
    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    .line 437
    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    return-void

    .line 57
    :cond_0
    const-string v0, "/system/media/theme/default/"

    goto :goto_0
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 4
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResources;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mIsTop:Z

    .line 127
    iput-boolean v1, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    .line 376
    new-instance v2, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;-><init>(Lmiui/content/res/ThemeResources;Lmiui/content/res/ThemeResources$1;)V

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    .line 152
    invoke-static {p2}, Lmiui/content/res/ThemeResources;->initSystemCookies(Landroid/content/res/Resources;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iput-object p1, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    .line 155
    iput-boolean v1, p1, Lmiui/content/res/ThemeResources;->mIsTop:Z

    .line 157
    :cond_0
    iput-object p2, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    .line 158
    invoke-static {p3}, Lmiui/content/res/ThemeResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 160
    const-string v2, "/data/system/theme/"

    iget-object v3, p4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    .line 161
    invoke-static {p4, p3}, Lmiui/content/res/ThemeZipFile;->getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    .line 162
    const-string v2, "icons"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "lockscreen"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    .line 163
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 164
    return-void

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public static final clearLockWallpaperCache()V
    .locals 2

    .prologue
    .line 479
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 480
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 481
    return-void
.end method

.method private static getFallbackDrawablePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "resourcePath"    # Ljava/lang/String;
    .param p1, "originalName"    # Ljava/lang/String;
    .param p2, "fallbackName"    # Ljava/lang/String;

    .prologue
    .line 275
    const/16 v7, 0x2f

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 278
    .local v5, "resPathIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    add-int v7, v5, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 279
    add-int v7, v5, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 280
    .local v4, "resCh":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 281
    .local v3, "originCh":C
    if-eq v4, v3, :cond_0

    .line 282
    const/4 v6, 0x0

    .line 295
    .end local v3    # "originCh":C
    .end local v4    # "resCh":C
    :goto_1
    return-object v6

    .line 284
    .restart local v3    # "originCh":C
    .restart local v4    # "resCh":C
    :cond_0
    const/16 v7, 0x2e

    if-ne v4, v7, :cond_2

    .line 290
    .end local v3    # "originCh":C
    .end local v4    # "resCh":C
    :cond_1
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 291
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v0, p0, v5}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "ret":Ljava/lang/String;
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    goto :goto_1

    .line 278
    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v3    # "originCh":C
    .restart local v4    # "resCh":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 484
    sget-object v9, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v9}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v4

    .line 486
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-object v8

    .line 491
    :cond_1
    sget-wide v10, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 492
    sget-object v8, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 496
    :cond_2
    sput-object v8, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 498
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 499
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 500
    .local v7, "width":I
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 501
    .local v5, "height":I
    if-le v7, v5, :cond_3

    .line 502
    const-string v8, "LockWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong display metrics for width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move v6, v7

    .line 504
    .local v6, "tmp":I
    move v7, v5

    .line 505
    move v5, v6

    .line 508
    .end local v6    # "tmp":I
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v7, v5, v9}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 510
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v8, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v5    # "height":I
    .end local v7    # "width":I
    :cond_4
    :goto_1
    sget-object v8, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 513
    :catch_0
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "ThemeResources"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 515
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 516
    .local v3, "error":Ljava/lang/OutOfMemoryError;
    const-string v8, "ThemeResources"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_0
    const-string p0, "android"

    .line 116
    .end local p0    # "componentName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 112
    .restart local p0    # "componentName":Ljava/lang/String;
    :cond_2
    const-string v0, "framework-miui-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_3
    const-string p0, "miui"

    goto :goto_0
.end method

.method public static getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/MiuiResources;

    .prologue
    .line 93
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 94
    invoke-static {p0}, Lmiui/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    .line 96
    :cond_0
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Lmiui/content/res/ThemeResourcesSystem;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method private getThemeFileWithFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;
    .param p3, "fallbackPkgName"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-boolean v12, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v12}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v12

    if-nez v12, :cond_1

    .line 229
    :cond_0
    const/4 v12, 0x0

    .line 271
    :goto_0
    return v12

    .line 231
    :cond_1
    sget-object v12, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v13, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 232
    .local v3, "compatiblityFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v3, :cond_8

    .line 233
    iget-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 234
    .local v2, "backup":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 235
    .local v5, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v12, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v13, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v12, v13, :cond_2

    iget-object v12, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    if-nez v12, :cond_2

    .line 237
    iget-object v12, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v13, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-static {v2, v12, v13}, Lmiui/content/res/ThemeResources;->getFallbackDrawablePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 238
    iget-object v12, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 241
    iget-object v12, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    if-nez v12, :cond_3

    .line 242
    invoke-direct/range {p0 .. p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 243
    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 244
    const/4 v12, 0x1

    goto :goto_0

    .line 247
    :cond_3
    const/4 v10, 0x0

    .line 248
    .local v10, "prefix":Ljava/lang/String;
    const/4 v11, 0x0

    .line 249
    .local v11, "suffix":Ljava/lang/String;
    iget-object v1, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v1, v7

    .line 250
    .local v4, "config":Ljava/lang/String;
    iget-object v12, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 251
    .local v8, "index":I
    if-lez v8, :cond_5

    .line 252
    iget-object v12, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 253
    iget-object v12, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 257
    .end local v4    # "config":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_4
    if-eqz v10, :cond_2

    .line 258
    iget-object v1, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    array-length v9, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v4, v1, v7

    .line 259
    .restart local v4    # "config":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 260
    invoke-direct/range {p0 .. p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 261
    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 262
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 249
    .restart local v8    # "index":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 258
    .end local v8    # "index":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 269
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "config":Ljava/lang/String;
    .end local v5    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v11    # "suffix":Ljava/lang/String;
    :cond_7
    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 271
    .end local v2    # "backup":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 299
    iget-object v8, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v8}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 300
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v3

    .line 301
    .local v3, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 302
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 303
    .local v2, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    invoke-virtual {v2, p2}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 304
    iget-object v8, v2, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    iput-object v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 305
    iget-object v8, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v8, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 324
    .end local v2    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    .end local v3    # "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return v7

    .line 308
    .restart local v2    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    .restart local v3    # "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    .restart local v4    # "i":I
    :cond_1
    iget-object v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "originName":Ljava/lang/String;
    iget-object v8, v2, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    iget-object v8, v8, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 310
    .local v1, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    if-eqz v1, :cond_2

    iget-object v8, v1, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v9, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 313
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 314
    .local v0, "backup":Ljava/lang/String;
    iget-object v8, v1, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 315
    iget-object v8, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v8, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v6

    .line 316
    .local v6, "result":Z
    iput-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 317
    if-nez v6, :cond_0

    .line 301
    .end local v0    # "backup":Ljava/lang/String;
    .end local v1    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v5    # "originName":Ljava/lang/String;
    .end local v6    # "result":Z
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 321
    .end local v2    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 324
    .end local v3    # "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    .end local v4    # "i":I
    :cond_4
    iget-boolean v7, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v7, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "themeResources":Lmiui/content/res/ThemeResources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 102
    new-instance v2, Lmiui/content/res/ThemeResources;

    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 101
    .end local v1    # "themeResources":Lmiui/content/res/ThemeResources;
    .local v2, "themeResources":Lmiui/content/res/ThemeResources;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2    # "themeResources":Lmiui/content/res/ThemeResources;
    .restart local v1    # "themeResources":Lmiui/content/res/ThemeResources;
    goto :goto_0

    .line 104
    :cond_0
    return-object v1
.end method

.method private initBasePaths()V
    .locals 15

    .prologue
    .line 391
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v4, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    new-instance v12, Lmiui/content/res/ThemeResources$FilterInfo;

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v12, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    const-string v13, "filters.xml"

    invoke-virtual {v12, v13}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 395
    .local v7, "input":Ljava/io/InputStream;
    if-nez v7, :cond_0

    .line 396
    iput-object v4, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    .line 428
    :goto_0
    return-void

    .line 401
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 402
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 403
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 405
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v12, "filter"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 406
    .local v5, "filters":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_4

    .line 407
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 409
    .local v3, "filter":Lorg/w3c/dom/Element;
    const-string v12, "path"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 410
    .local v11, "path":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    const-string v12, "res"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 406
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 412
    :cond_2
    const-string v12, "package"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 413
    .local v10, "packages":Lorg/w3c/dom/NodeList;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v9, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v8, v12, :cond_3

    .line 415
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 417
    :cond_3
    new-instance v12, Lmiui/content/res/ThemeResources$FilterInfo;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v9}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 419
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "filter":Lorg/w3c/dom/Element;
    .end local v5    # "filters":Lorg/w3c/dom/NodeList;
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v9    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "packages":Lorg/w3c/dom/NodeList;
    .end local v11    # "path":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 422
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 427
    :goto_4
    iput-object v4, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 422
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "filters":Lorg/w3c/dom/NodeList;
    .restart local v6    # "i":I
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 423
    :catch_1
    move-exception v12

    goto :goto_4

    .line 421
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "filters":Lorg/w3c/dom/NodeList;
    .end local v6    # "i":I
    :catchall_0
    move-exception v12

    .line 422
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 424
    :goto_5
    throw v12

    .line 423
    :catch_2
    move-exception v12

    goto :goto_4

    :catch_3
    move-exception v13

    goto :goto_5
.end method

.method private static initSystemCookies(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 440
    if-nez p0, :cond_1

    .line 462
    :cond_0
    return-void

    .line 443
    :cond_1
    const/4 v0, 0x0

    .line 445
    .local v0, "cookie":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    sget v2, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    if-ltz v2, :cond_2

    sget v2, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    if-ltz v2, :cond_2

    sget v2, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    if-ltz v2, :cond_2

    sget v2, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    if-gez v2, :cond_0

    .line 448
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "name":Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 450
    sput v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    .line 460
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .restart local v1    # "name":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 452
    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    goto :goto_1

    .line 458
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 453
    .restart local v1    # "name":Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 454
    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    goto :goto_1

    .line 455
    :cond_6
    invoke-static {v1}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static isAppResourceCookie(I)Z
    .locals 1
    .param p0, "cookie"    # I

    .prologue
    .line 469
    sget v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    if-eq v0, p0, :cond_0

    invoke-static {p0}, Lmiui/content/res/ThemeResources;->isMiuiResourceCookie(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isMiuiResourceCookie(I)Z
    .locals 1
    .param p0, "cookie"    # I

    .prologue
    .line 465
    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    if-eq p0, v0, :cond_0

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    if-eq p0, v0, :cond_0

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadThemeValues()V
    .locals 4

    .prologue
    .line 379
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    .local v0, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 381
    iget-object v3, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v3, v2}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->newTarget(Lmiui/content/res/ThemeResources$FilterInfo;)V

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .prologue
    .line 167
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->checkUpdate()J

    move-result-wide v0

    .line 168
    .local v0, "updatedTime":J
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 169
    iput-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 170
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->initBasePaths()V

    .line 171
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->loadThemeValues()V

    .line 174
    :cond_0
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    .line 175
    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v2, :cond_2

    .line 176
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 179
    :cond_2
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    return-wide v2

    .line 174
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getFilterInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .prologue
    .line 205
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;
    .param p3, "fallbackPkgName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/content/res/ThemeResources;->getThemeFileWithFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getThemeFileNonFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    .line 188
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 189
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 190
    const/4 v1, 0x0

    iget-wide v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    aput-wide v2, p2, v1

    .line 192
    :cond_0
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public hasThemeFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 201
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .locals 6
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .prologue
    .line 329
    iget-boolean v4, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 333
    :cond_0
    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v4, v4, Lmiui/content/res/ThemeResources$MetaData;->mSupportValue:Z

    if-nez v4, :cond_2

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    const/4 v3, 0x0

    .line 336
    .local v3, "updateValues":Z
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    .local v1, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 338
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 339
    .local v0, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v4}, Lmiui/content/res/ThemeValues;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 340
    iget-object v4, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {p2, v4}, Lmiui/content/res/ThemeValues;->putAll(Lmiui/content/res/ThemeValues;)V

    .line 341
    const/4 v3, 0x1

    .line 337
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    :cond_4
    if-eqz v3, :cond_1

    .line 345
    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    iget-object v5, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Lmiui/content/res/ThemeValues;->mergeNewDefaultValueIfNeed(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    goto :goto_0
.end method
