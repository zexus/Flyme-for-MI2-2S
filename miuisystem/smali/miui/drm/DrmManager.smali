.class public Lmiui/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/DrmManager$DrmNSContext;,
        Lmiui/drm/DrmManager$RightObject;,
        Lmiui/drm/DrmManager$RightObjectCache;,
        Lmiui/drm/DrmManager$DrmResult;
    }
.end annotation


# static fields
.field private static final ASSET_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

.field private static final DISPLAY_COUNT_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

.field private static final IMEI_EVERYONE:Ljava/lang/String; = "-1"

.field private static final IMEI_PREFIX:Ljava/lang/String; = "d"

.field private static final INDIVIDUAL_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

.field private static final ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = ":"

.field private static final PUBLIC_KEY_E:Ljava/lang/String; = "10001"

.field private static final PUBLIC_KEY_M:Ljava/lang/String; = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

.field private static final SUPPORT_AD:Ljava/lang/String; = "support_ad"

.field public static final TAG:Ljava/lang/String; = "drm"

.field private static final TIME_END_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

.field private static final TIME_START_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

.field private static final USER_EVERYONE:Ljava/lang/String; = "-1"

.field private static final USER_PREFIX:Ljava/lang/String; = "m"

.field private static mRightsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/drm/DrmManager$RightObjectCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lmiui/drm/DrmManager$1;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/drm/DrmManager$1;-><init>(IFZ)V

    sput-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method private static convertHexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 407
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 408
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 407
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 410
    :cond_0
    return-object v0
.end method

.method public static exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/drm.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recreate log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 422
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 426
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "export error message into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/drm/DrmManager;->getContextInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 429
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    if-eqz v3, :cond_4

    .line 435
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 441
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 436
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 438
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 431
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    if-eqz v2, :cond_2

    .line 435
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 436
    :catch_2
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_3

    .line 435
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 438
    :cond_3
    :goto_3
    throw v4

    .line 436
    :catch_3
    move-exception v0

    .line 437
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 430
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private static getContextInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 444
    const-string v0, "%s %s_%s %s"

    .line 445
    .local v0, "info":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEncodedImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 450
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, ""

    .line 455
    :goto_0
    return-object v1

    .line 454
    :cond_0
    invoke-static {v0}, Lmiui/util/HashUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 455
    goto :goto_0
.end method

.method public static getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;
    .locals 1
    .param p0, "r1"    # Lmiui/drm/DrmManager$DrmResult;
    .param p1, "r2"    # Lmiui/drm/DrmManager$DrmResult;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lmiui/drm/DrmManager$DrmResult;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    .end local p0    # "r1":Lmiui/drm/DrmManager$DrmResult;
    :goto_0
    return-object p0

    .restart local p0    # "r1":Lmiui/drm/DrmManager$DrmResult;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private static getOriginImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 459
    invoke-static {p0}, Lmiui/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const-string v0, ""

    .line 463
    .end local v0    # "imei":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getTime(Ljava/lang/String;)J
    .locals 5
    .param p0, "rfc822"    # Ljava/lang/String;

    .prologue
    .line 331
    const-wide/16 v2, 0x0

    .line 333
    .local v2, "time":J
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 338
    :goto_0
    return-wide v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 336
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static isLegal(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentFile"    # Ljava/io/File;
    .param p2, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 175
    invoke-static {p1}, Lmiui/util/HashUtils;->getSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "hash":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v1

    return-object v1
.end method

.method public static isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 180
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 181
    sget-object v4, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

    .line 198
    :cond_0
    :goto_0
    return-object v4

    .line 183
    :cond_1
    sget-object v4, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

    .line 184
    .local v4, "ret":Lmiui/drm/DrmManager$DrmResult;
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 185
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 186
    .local v1, "file":Ljava/io/File;
    const-string v7, "drm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking asset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {v1}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v5

    .line 188
    .local v5, "ro":Lmiui/drm/DrmManager$RightObject;
    invoke-static {p0, p1, v5}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v6

    .line 189
    .local v6, "tempRet":Lmiui/drm/DrmManager$DrmResult;
    sget-object v7, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-ne v6, v7, :cond_2

    .line 190
    sget-object v4, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v4, v6}, Lmiui/drm/DrmManager;->getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v4

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "ro":Lmiui/drm/DrmManager$RightObject;
    .end local v6    # "tempRet":Lmiui/drm/DrmManager$DrmResult;
    :cond_3
    const-string v7, "drm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking asset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p2}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v5

    .line 198
    .restart local v5    # "ro":Lmiui/drm/DrmManager$RightObject;
    invoke-static {p0, p1, v5}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v4

    goto :goto_0
.end method

.method private static isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetAsset"    # Ljava/lang/String;
    .param p2, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .prologue
    const-wide/16 v10, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 204
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

    .line 244
    :goto_0
    return-object v8

    .line 206
    :cond_0
    iget-wide v8, p2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    iget-wide v8, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 207
    :cond_1
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    goto :goto_0

    .line 208
    :cond_2
    iget-wide v8, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    .local v2, "current":J
    iget-wide v8, p2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    cmp-long v8, v2, v8

    if-ltz v8, :cond_3

    iget-wide v8, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 211
    :cond_3
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    goto :goto_0

    .line 214
    .end local v2    # "current":J
    :cond_4
    const/4 v5, 0x0

    .line 215
    .local v5, "match":Z
    iget-object v8, p2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "asset":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 217
    const/4 v5, 0x1

    .line 221
    .end local v0    # "asset":Ljava/lang/String;
    :cond_6
    if-nez v5, :cond_7

    .line 222
    const-string v8, "drm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right object has no definition for asset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    goto :goto_0

    .line 226
    :cond_7
    iget-object v8, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 227
    const-string v8, "drm"

    const-string v9, "right object does not have any imeis"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    goto :goto_0

    .line 230
    :cond_8
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "targetOriginImei":Ljava/lang/String;
    invoke-static {p0}, Lmiui/drm/DrmManager;->getEncodedImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "targetEncodedImei":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 233
    const-string v8, "drm"

    const-string v9, "the imei retrieved is empty"

    invoke-static {v8, v9}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_9
    :goto_1
    iget-object v8, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    .local v4, "imei":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "-1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 239
    :cond_b
    const-string v8, "drm"

    const-string v9, "right object has matched imei"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    goto/16 :goto_0

    .line 234
    .end local v4    # "imei":Ljava/lang/String;
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 235
    const-string v8, "drm"

    const-string v9, "the imei encoded is empty"

    invoke-static {v8, v9}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_d
    const-string v8, "drm"

    const-string v9, "right object does not have matched imei"

    invoke-static {v8, v9}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v8, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    goto/16 :goto_0
.end method

.method public static isPermanentRights(Ljava/io/File;)Z
    .locals 1
    .param p0, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 248
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    invoke-static {v0}, Lmiui/drm/DrmManager;->isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z

    move-result v0

    return v0
.end method

.method private static isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z
    .locals 4
    .param p0, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 252
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lmiui/drm/DrmManager$RightObject;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRightsFileLegal(Ljava/io/File;)Z
    .locals 15
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v14, -0x1

    .line 342
    const/4 v7, 0x0

    .line 344
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 347
    .local v2, "document":Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 389
    .end local v2    # "document":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 390
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    if-eqz v7, :cond_0

    .line 396
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 402
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const/4 v13, 0x0

    :goto_3
    return v13

    .line 350
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "document":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "contentPart":Ljava/lang/String;
    const/4 v11, 0x0

    .line 355
    .local v11, "signaturePart":Ljava/lang/String;
    const/4 v6, 0x0

    .line 356
    .local v6, "p":Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 357
    .local v5, "m":Ljava/util/regex/Matcher;
    const/4 v12, -0x1

    .line 358
    .local v12, "startIndex":I
    const/4 v4, -0x1

    .line 360
    .local v4, "endIndex":I
    const-string v13, "<o-ex:rights.*?>"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 361
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 362
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 363
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 364
    const-string v13, "</o-ex:rights>"

    invoke-virtual {v2, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 366
    :cond_2
    if-eq v12, v14, :cond_3

    if-eq v4, v14, :cond_3

    .line 367
    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_3
    const-string v13, "<o-ex:rights.*?o-ex:id=\""

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 371
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 372
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 373
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 375
    :cond_4
    const-string v13, "<o-ex:rights.*?o-ex:id=\".*?\""

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 376
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 378
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .line 380
    :cond_5
    if-eq v12, v14, :cond_6

    if-eq v4, v14, :cond_6

    .line 381
    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 384
    :cond_6
    if-eqz v1, :cond_8

    if-eqz v11, :cond_8

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 386
    .local v0, "contentBytes":[B
    invoke-static {v11}, Lmiui/drm/DrmManager;->convertHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 387
    .local v10, "signatureBytes":[B
    const-string v13, "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

    const-string v14, "10001"

    invoke-static {v13, v14}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13

    invoke-static {v0, v13, v10}, Lmiui/util/RSAUtils;->verify([BLjava/security/PublicKey;[B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v13

    .line 395
    if-eqz v8, :cond_7

    .line 396
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    :goto_4
    move-object v7, v8

    .line 400
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 398
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 399
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 395
    .end local v0    # "contentBytes":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "signatureBytes":[B
    :cond_8
    if-eqz v8, :cond_9

    .line 396
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    move-object v7, v8

    .line 400
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 398
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 399
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 401
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 398
    .end local v1    # "contentPart":Ljava/lang/String;
    .end local v2    # "document":Ljava/lang/String;
    .end local v4    # "endIndex":I
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "signaturePart":Ljava/lang/String;
    .end local v12    # "startIndex":I
    :catch_3
    move-exception v3

    .line 399
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 391
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 392
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 395
    if-eqz v7, :cond_0

    .line 396
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 398
    :catch_5
    move-exception v3

    .line 399
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 394
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 395
    :goto_6
    if-eqz v7, :cond_a

    .line 396
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 400
    :cond_a
    :goto_7
    throw v13

    .line 398
    :catch_6
    move-exception v3

    .line 399
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 394
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 391
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 389
    :catch_8
    move-exception v3

    goto/16 :goto_1
.end method

.method public static isSupportAd(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "support_ad"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportAd(Ljava/io/File;)Z
    .locals 2
    .param p0, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    .line 169
    .local v0, "ro":Lmiui/drm/DrmManager$RightObject;
    iget-boolean v1, v0, Lmiui/drm/DrmManager$RightObject;->adSupport:Z

    .line 171
    .end local v0    # "ro":Lmiui/drm/DrmManager$RightObject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;
    .locals 26
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 257
    .local v15, "path":Ljava/lang/String;
    sget-object v21, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/drm/DrmManager$RightObjectCache;

    .line 258
    .local v6, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    iget-wide v0, v6, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-nez v21, :cond_1

    .line 259
    iget-object v0, v6, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    move-object/from16 v16, v0

    .line 327
    :cond_0
    :goto_0
    return-object v16

    .line 261
    :cond_1
    invoke-static/range {p0 .. p0}, Lmiui/drm/DrmManager;->isRightsFileLegal(Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 262
    const/16 v16, 0x0

    goto :goto_0

    .line 264
    :cond_2
    new-instance v16, Lmiui/drm/DrmManager$RightObject;

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lmiui/drm/DrmManager$RightObject;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 265
    .local v16, "ro":Lmiui/drm/DrmManager$RightObject;
    new-instance v6, Lmiui/drm/DrmManager$RightObjectCache;

    .end local v6    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lmiui/drm/DrmManager$RightObjectCache;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 266
    .restart local v6    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    move-object/from16 v0, v16

    iput-object v0, v6, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    .line 267
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    .line 268
    sget-object v21, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 271
    .local v11, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 272
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 273
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 274
    .local v9, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v20

    .line 275
    .local v20, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual/range {v20 .. v20}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v19

    .line 276
    .local v19, "xPath":Ljavax/xml/xpath/XPath;
    new-instance v21, Lmiui/drm/DrmManager$DrmNSContext;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lmiui/drm/DrmManager$DrmNSContext;-><init>(Lmiui/drm/DrmManager$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 277
    const-string v21, "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

    sget-object v22, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v9, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 278
    .local v4, "assetList":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_5

    .line 279
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_5

    .line 280
    invoke-interface {v4, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "content":Ljava/lang/String;
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 282
    .local v14, "pair":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 283
    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v14, v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 284
    :cond_4
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 285
    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v14, v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v22, v14, v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 316
    .end local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "content":Ljava/lang/String;
    .end local v9    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v14    # "pair":[Ljava/lang/String;
    .end local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_0
    move-exception v10

    .line 317
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 290
    .end local v10    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "document":Lorg/w3c/dom/Document;
    .restart local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .restart local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_5
    :try_start_1
    const-string v21, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

    sget-object v22, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v9, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/NodeList;

    .line 291
    .local v13, "individualList":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_8

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_8

    .line 292
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_8

    .line 293
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 294
    .restart local v7    # "content":Ljava/lang/String;
    const-string v21, "d"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 295
    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    move-object/from16 v21, v0

    const-string v22, "d"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 296
    :cond_7
    const-string v21, "m"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 297
    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/drm/DrmManager$RightObject;->users:Ljava/util/List;

    move-object/from16 v21, v0

    const-string v22, "m"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_4

    .line 318
    .end local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "content":Ljava/lang/String;
    .end local v9    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_1
    move-exception v10

    .line 319
    .local v10, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 301
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    .restart local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "document":Lorg/w3c/dom/Document;
    .restart local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13    # "individualList":Lorg/w3c/dom/NodeList;
    .restart local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .restart local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_8
    :try_start_2
    const-string v21, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

    sget-object v22, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v9, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/NodeList;

    .line 302
    .local v18, "timeStartList":Lorg/w3c/dom/NodeList;
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_9

    .line 303
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 304
    .restart local v7    # "content":Ljava/lang/String;
    invoke-static {v7}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    .line 306
    .end local v7    # "content":Ljava/lang/String;
    :cond_9
    const-string v21, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

    sget-object v22, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v9, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/NodeList;

    .line 307
    .local v17, "timeEndList":Lorg/w3c/dom/NodeList;
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_a

    .line 308
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 309
    .restart local v7    # "content":Ljava/lang/String;
    invoke-static {v7}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    .line 311
    .end local v7    # "content":Ljava/lang/String;
    :cond_a
    const-string v21, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

    sget-object v22, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v9, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/NodeList;

    .line 312
    .local v8, "displayCountList":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_0

    .line 313
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 314
    .restart local v7    # "content":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-lez v21, :cond_b

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lmiui/drm/DrmManager$RightObject;->adSupport:Z
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 320
    .end local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "displayCountList":Lorg/w3c/dom/NodeList;
    .end local v9    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v17    # "timeEndList":Lorg/w3c/dom/NodeList;
    .end local v18    # "timeStartList":Lorg/w3c/dom/NodeList;
    .end local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_2
    move-exception v10

    .line 321
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 314
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v8    # "displayCountList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "document":Lorg/w3c/dom/Document;
    .restart local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13    # "individualList":Lorg/w3c/dom/NodeList;
    .restart local v17    # "timeEndList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "timeStartList":Lorg/w3c/dom/NodeList;
    .restart local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .restart local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_b
    const/16 v21, 0x0

    goto :goto_5

    .line 322
    .end local v4    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "displayCountList":Lorg/w3c/dom/NodeList;
    .end local v9    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v17    # "timeEndList":Lorg/w3c/dom/NodeList;
    .end local v18    # "timeStartList":Lorg/w3c/dom/NodeList;
    .end local v19    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v20    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_3
    move-exception v10

    .line 323
    .local v10, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v10}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    goto/16 :goto_0

    .line 324
    .end local v10    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :catch_4
    move-exception v10

    .line 325
    .local v10, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static setSupportAd(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "support_ad"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
