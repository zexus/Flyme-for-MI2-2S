.class public Lmiui/util/MiuiFeatureUtils;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/MiuiFeatureUtils$ConfigReader;,
        Lmiui/util/MiuiFeatureUtils$Features;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/default.conf"

.field public static final FEATURE_COMPLETE_ANIMATION:Ljava/lang/String; = "feature_complete_animation"

.field public static final FEATURE_RUNTIME_BLUR:Ljava/lang/String; = "feature_runtime_blur"

.field public static final FEATURE_THUMBNAIL:Ljava/lang/String; = "feature_thumbnail"

.field private static final LITE_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/lite.conf"

.field private static final MIUISDK_FEATURE_PREFIX:Ljava/lang/String; = "ro.sys."

.field private static final MIUISDK_KEY:Ljava/lang/String; = "miuisdk"

.field private static final PRPPERTY:Ljava/lang/String; = "persist.sys.miui_feature_config"

.field private static final SYSTEM_KEY:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "MiuiFeatureUtils"

.field private static sConfigFilePath:Ljava/lang/String;

.field private static sConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIsLiteMode:Z

.field private static sIsLiteModeSupported:Z

.field private static sMiuisdkConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-boolean v1, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    .line 35
    sput-boolean v1, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 43
    :try_start_0
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-boolean v1, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 46
    const-string v1, "MiuiFeatureUtils"

    const-string v2, "Failed to initialize MiuiFeatureUtils!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getLocalFeature(Landroid/content/Context;)Lmiui/util/MiuiFeatureUtils$Features;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_0
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 325
    .local v0, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v2, Lmiui/util/MiuiFeatureUtils$Features;

    invoke-direct {v2, v0}, Lmiui/util/MiuiFeatureUtils$Features;-><init>(Ljava/util/HashMap;)V

    .line 329
    .end local v0    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .line 328
    :cond_1
    const-string v2, "MiuiFeatureUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get feature set for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 223
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/miui_feature/default.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/miui_feature/lite.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sput-boolean v4, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 229
    :cond_0
    const-string v2, "persist.sys.miui_feature_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    sput-object v0, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 235
    :cond_1
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/miui_feature/default.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const-string v2, "/system/etc/miui_feature/default.conf"

    sput-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 241
    :cond_2
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 242
    new-instance v1, Lmiui/util/MiuiFeatureUtils$ConfigReader;

    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmiui/util/MiuiFeatureUtils$ConfigReader;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "reader":Lmiui/util/MiuiFeatureUtils$ConfigReader;
    invoke-virtual {v1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parse()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    invoke-virtual {v1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->getConfigResult()Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    .line 245
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 246
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v3, "system"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    .line 247
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v3, "miuisdk"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    .line 250
    :cond_3
    const-string v2, "/system/etc/miui_feature/lite.conf"

    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 251
    sput-boolean v4, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    .line 253
    :cond_4
    const-string v2, "MiuiFeatureUtils"

    const-string v3, "Loaded and parsed feature configure file successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "reader":Lmiui/util/MiuiFeatureUtils$ConfigReader;
    :cond_5
    return-void
.end method

.method public static isLiteMode()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    return v0
.end method

.method public static isLiteModeSupported()Z
    .locals 1

    .prologue
    .line 347
    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    return v0
.end method

.method public static isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 291
    .restart local p2    # "defaultValue":Z
    :cond_0
    const/4 v1, 0x0

    .line 292
    .local v1, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_1
    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 296
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 298
    .local v0, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 300
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 301
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 306
    .end local v0    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_2
    const-string v3, "MiuiFeatureUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSystemFeatureSupported(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .line 269
    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 270
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 271
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 275
    .end local v0    # "result":Ljava/lang/Boolean;
    :cond_1
    const-string v1, "MiuiFeatureUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get system feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMiuisdkProperties()V
    .locals 7

    .prologue
    .line 358
    sget-object v5, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 373
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    return-void

    .line 363
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    sget-object v5, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 364
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 366
    .local v4, "value":Ljava/lang/Boolean;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.sys."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MiuiFeatureUtils"

    const-string v6, "Failed to set miui sdk features."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
