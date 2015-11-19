.class public final Lmiui/content/res/ThemeResourcesSystem;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static final ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance/"

.field private static sIcons:Lmiui/content/res/ThemeResources;

.field private static sLockscreen:Lmiui/content/res/ThemeResources;

.field private static sMiui:Lmiui/content/res/ThemeResources;

.field private static sUpdatedTimeIcon:J

.field private static sUpdatedTimeLockscreen:J


# instance fields
.field private mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 1
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 54
    iget-object v0, p4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 156
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 157
    .local v0, "density":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 158
    .local v1, "screenWidthDp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 161
    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 162
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 166
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iput-object p2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 172
    const/16 v2, 0xf0

    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 173
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, "sym_def_app_icon.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string v0, "sym_def_app_icon.png"

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, "default_wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/MiuiResources;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string v3, "icons"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 33
    const-string v3, "lockscreen"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 34
    const-string v3, "framework-miui-res"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 37
    new-instance v1, Lmiui/content/res/ThemeResourcesSystem;

    const-string v3, "framework-res"

    sget-object v4, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v4, v4, v2

    invoke-direct {v1, v0, p0, v3, v4}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 36
    .end local v0    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    .local v1, "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    .end local v1    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    .restart local v0    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    goto :goto_0

    .line 40
    .end local v2    # "i":I
    :cond_0
    sget-object v3, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 41
    sget-object v3, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 42
    sget-object v3, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 43
    new-instance v0, Lmiui/content/res/ThemeResourcesSystem;

    .end local v0    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    const/4 v3, 0x0

    const-string v4, "FakeForEmpty"

    sget-object v5, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v0, v3, p0, v4, v5}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 46
    .restart local v0    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    :cond_1
    return-object v0
.end method

.method private hasAwesomeLockscreen()Z
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .prologue
    .line 58
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 60
    iget-boolean v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v2, :cond_2

    .line 61
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 62
    .local v0, "updatedTime":J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 63
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    .line 64
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 67
    :cond_0
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 68
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 69
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 70
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->hasAwesomeLockscreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/theme/lockscreen"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 72
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v2

    sput-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 76
    :cond_1
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-wide v4, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 77
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-object v4, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 79
    .end local v0    # "updatedTime":J
    :cond_2
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    return-wide v2
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    .line 197
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Z)V

    .line 134
    .local v2, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-direct {p0, v2, p1}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 150
    :goto_0
    return-object v1

    .line 136
    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_1

    .line 140
    iget v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v3

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    .line 126
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "ret":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    check-cast v1, Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    .line 184
    :cond_1
    return-object v0
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .prologue
    .line 83
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesSystem;->isMiuiResourceCookie(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .locals 1
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 104
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 106
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 108
    :cond_0
    return-void
.end method

.method public resetIcons()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 112
    return-void
.end method

.method public resetLockscreen()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 119
    return-void
.end method
