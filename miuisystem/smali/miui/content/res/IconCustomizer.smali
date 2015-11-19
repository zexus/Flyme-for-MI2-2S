.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final FINAL_MOD_ICONS:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String; = "/data/system/customized_icons/miui_version"

.field private static final ICON_NAME_SUFFIX:Ljava/lang/String; = ".png"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/"

.field private static final MIUI_MOD_DOWNLOAD_ICONS:Ljava/lang/String; = "/data/data/com.xiaomi.market/files/miui_mod_icons/"

.field private static final sAlphaShift:I = 0x18

.field private static final sAlphaThreshold:I = 0x32

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sColorByteSize:I = 0x4

.field private static final sColorShift:I = 0x8

.field private static sCustomizedIconHeight:I = 0x0

.field private static sCustomizedIconWidth:I = 0x0

.field private static sCutPaint:Landroid/graphics/Paint; = null

.field private static sIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static sIconTransformNeeded:Z = false

.field private static final sMaxContentRatio:F = 2.0f

.field private static sPaintForTransformBitmap:Landroid/graphics/Paint; = null

.field private static final sRGBMask:I = 0xffffff

.field private static sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 97
    sput-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 98
    sput-object v4, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 120
    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    .line 162
    sput v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 170
    sput v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 433
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v2, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.weather2.png"

    const-string v2, "com.miui.weather.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.gallery.png"

    const-string v2, "com.android.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.png"

    const-string v2, "com.cooliris.media.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.xiaomi.market.png"

    const-string v2, "com.miui.supermarket.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.wali.miui.networkassistant.png"

    const-string v2, "com.android.monitor.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.camera.CameraEntry.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.album.png"

    const-string v2, "com.miui.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.activity.FMRadioMain.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.hwcamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.huawei.android.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.android.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.fmradio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.motorola.Camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lge.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.oppo.camera.OppoCamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.scg#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.camera2#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    .line 801
    sput-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method

.method private static RGBToColor([I)I
    .locals 2
    .param p0, "RGB"    # [I

    .prologue
    .line 1178
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F
    .locals 16
    .param p0, "pixelSize"    # I
    .param p1, "width"    # I
    .param p2, "strideSize"    # I
    .param p3, "basePixels"    # [I
    .param p4, "bg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1098
    const/4 v10, 0x0

    .line 1099
    .local v10, "sum":I
    const/4 v12, 0x4

    new-array v11, v12, [I

    fill-array-data v11, :array_0

    .line 1102
    .local v11, "sumRGBA":[I
    const/4 v12, 0x3

    new-array v2, v12, [I

    fill-array-data v2, :array_1

    .line 1106
    .local v2, "RGB":[I
    const/4 v6, 0x0

    .line 1107
    .local v6, "i":I
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 1108
    .local v3, "bgPixels":[B
    :goto_0
    move/from16 v0, p0

    if-ge v6, v0, :cond_3

    .line 1109
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    move/from16 v0, p1

    if-ge v7, v0, :cond_2

    .line 1110
    add-int v12, v6, v7

    aget v4, p3, v12

    .line 1112
    .local v4, "color":I
    const v12, 0xffffff

    and-int/2addr v12, v4

    if-lez v12, :cond_0

    .line 1114
    const/4 v12, 0x0

    aget v13, v11, v12

    const/high16 v14, 0xff0000

    and-int/2addr v14, v4

    shr-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    aput v13, v11, v12

    .line 1115
    const/4 v12, 0x1

    aget v13, v11, v12

    const v14, 0xff00

    and-int/2addr v14, v4

    shr-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v14

    aput v13, v11, v12

    .line 1116
    const/4 v12, 0x2

    aget v13, v11, v12

    and-int/lit16 v14, v4, 0xff

    add-int/2addr v13, v14

    aput v13, v11, v12

    .line 1117
    add-int/lit8 v10, v10, 0x1

    .line 1119
    :cond_0
    const/4 v12, 0x3

    aget v12, v11, v12

    if-nez v12, :cond_1

    .line 1120
    const/4 v12, 0x3

    aget v13, v11, v12

    shr-int/lit8 v14, v4, 0x18

    add-int v15, v6, v7

    shl-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x3

    aget-byte v15, v3, v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    aput v13, v11, v12

    .line 1109
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1123
    .end local v4    # "color":I
    :cond_2
    add-int v6, v6, p2

    goto :goto_0

    .line 1126
    .end local v7    # "j":I
    :cond_3
    if-lez v10, :cond_4

    .line 1127
    const/4 v12, 0x0

    aget v13, v11, v12

    div-int/2addr v13, v10

    aput v13, v11, v12

    .line 1128
    const/4 v12, 0x1

    aget v13, v11, v12

    div-int/2addr v13, v10

    aput v13, v11, v12

    .line 1129
    const/4 v12, 0x2

    aget v13, v11, v12

    div-int/2addr v13, v10

    aput v13, v11, v12

    .line 1133
    :cond_4
    invoke-static {v11}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v4

    .line 1134
    .restart local v4    # "color":I
    invoke-static {v4, v2}, Lmiui/content/res/IconCustomizer;->getSaturation(I[I)F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    .line 1135
    const/4 v4, 0x0

    .line 1167
    :goto_2
    invoke-static {v4, v11}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1168
    const/4 v12, 0x4

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v11, v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget v14, v11, v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x2

    aget v14, v11, v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x3

    aget v14, v11, v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    return-object v12

    .line 1138
    :cond_5
    const/4 v12, 0x2

    new-array v9, v12, [[I

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_2

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_3

    aput-object v13, v9, v12

    .line 1145
    .local v9, "mappingSections":[[I
    const/4 v10, 0x0

    .line 1146
    const/4 v6, 0x0

    :goto_3
    array-length v12, v9

    if-ge v6, v12, :cond_6

    .line 1147
    aget-object v12, v9, v6

    const/4 v13, 0x1

    aget v12, v12, v13

    aget-object v13, v9, v6

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 1146
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1150
    :cond_6
    invoke-static {v4, v2}, Lmiui/content/res/IconCustomizer;->getHue(I[I)F

    move-result v5

    .line 1151
    .local v5, "hue":F
    int-to-float v12, v10

    mul-float/2addr v12, v5

    const/high16 v13, 0x43b40000    # 360.0f

    div-float v5, v12, v13

    .line 1152
    const/4 v6, 0x0

    :goto_4
    array-length v12, v9

    if-ge v6, v12, :cond_8

    .line 1153
    aget-object v12, v9, v6

    const/4 v13, 0x1

    aget v12, v12, v13

    aget-object v13, v9, v6

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int v8, v12, v13

    .line 1154
    .local v8, "length":I
    int-to-float v12, v8

    cmpl-float v12, v5, v12

    if-lez v12, :cond_7

    .line 1155
    int-to-float v12, v8

    sub-float/2addr v5, v12

    .line 1152
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1157
    :cond_7
    aget-object v12, v9, v6

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    add-float/2addr v5, v12

    .line 1161
    .end local v8    # "length":I
    :cond_8
    invoke-static {v4, v5, v2}, Lmiui/content/res/IconCustomizer;->setHue(IF[I)I

    move-result v4

    .line 1164
    const v12, 0x3f19999a    # 0.6f

    invoke-static {v4, v12, v2}, Lmiui/content/res/IconCustomizer;->setValue(IF[I)I

    move-result v4

    .line 1165
    const v12, 0x3ecccccd    # 0.4f

    invoke-static {v4, v12, v2}, Lmiui/content/res/IconCustomizer;->setSaturation(IF[I)I

    move-result v4

    goto/16 :goto_2

    .line 1099
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 1102
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 1138
    :array_2
    .array-data 4
        0x64
        0x6e
    .end array-data

    :array_3
    .array-data 4
        0xbe
        0x113
    .end array-data
.end method

.method public static checkModIconsTimestamp()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 242
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/system/customized_icons/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "clearReason":Ljava/lang/String;
    :try_start_0
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v10, "/data/system/customized_icons/"

    invoke-interface {v9, v10}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v9

    iget-wide v10, v9, Landroid/system/StructStat;->st_ctime:J

    const-wide/16 v12, 0x3e8

    mul-long v2, v10, v12

    .line 247
    .local v2, "createdTime":J
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 248
    .local v6, "modifiedTime":J
    cmp-long v9, v6, v2

    if-gtz v9, :cond_4

    .line 249
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/system/customized_icons/miui_version"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v5, "lastVersionFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 251
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    .local v8, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 253
    const-string v0, "miui version update"

    .line 255
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 262
    .end local v5    # "lastVersionFile":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 264
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "clearReason":Ljava/lang/String;
    .end local v2    # "createdTime":J
    .end local v6    # "modifiedTime":J
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 272
    const/16 v9, 0x1ed

    invoke-static {v4, v9, v14, v14}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 274
    :cond_2
    return-void

    .line 257
    .restart local v0    # "clearReason":Ljava/lang/String;
    .restart local v2    # "createdTime":J
    .restart local v5    # "lastVersionFile":Ljava/io/File;
    .restart local v6    # "modifiedTime":J
    :cond_3
    :try_start_1
    const-string v0, "miui version flag miss"

    goto :goto_0

    .line 260
    .end local v5    # "lastVersionFile":Ljava/io/File;
    :cond_4
    const-string v0, "mod download icon update"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 266
    .end local v2    # "createdTime":J
    .end local v6    # "modifiedTime":J
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static clearCache(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    sget-object v3, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 221
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 222
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 224
    :try_start_1
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 225
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    const/4 v2, 0x0

    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 227
    const/4 v2, 0x0

    sput-boolean v2, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 239
    :goto_0
    return-void

    .line 222
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 225
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 229
    :cond_0
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 230
    :try_start_4
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 237
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    .end local v1    # "p":Ljava/lang/String;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3e8

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 301
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Landroid/miui/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 302
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0, v1, v1}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 303
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 306
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static colorToRGB(I[I)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "rgb"    # [I

    .prologue
    .line 1172
    const/4 v0, 0x0

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    aput v1, p1, v0

    .line 1173
    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    aput v1, p1, v0

    .line 1174
    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    aput v1, p1, v0

    .line 1175
    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "modMask"    # Landroid/graphics/Bitmap;
    .param p2, "modBackground"    # Landroid/graphics/Bitmap;
    .param p3, "modPattern"    # Landroid/graphics/Bitmap;
    .param p4, "modCover"    # Landroid/graphics/Bitmap;

    .prologue
    .line 805
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 806
    .local v8, "baseWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 807
    .local v9, "baseHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    div-int/lit8 v21, v4, 0x4

    .line 808
    .local v21, "pixelSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    div-int/lit8 v5, v4, 0x4

    .line 810
    .local v5, "strideSize":I
    move/from16 v0, v21

    new-array v3, v0, [I

    .line 811
    .local v3, "basePixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 815
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v4

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 816
    .local v22, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 819
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 822
    if-eqz p1, :cond_2

    .line 823
    sget-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_1

    .line 824
    const-class v6, Lmiui/content/res/IconCustomizer;

    monitor-enter v6

    .line 825
    :try_start_0
    sget-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 826
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    .line 827
    sget-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 829
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 832
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v22

    move-object v11, v3

    move v13, v5

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 833
    const/4 v4, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 836
    :cond_2
    const/16 v18, 0x0

    .line 837
    .local v18, "bgColor":[F
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    move/from16 v0, v21

    if-ne v4, v0, :cond_3

    .line 838
    move/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v8, v5, v3, v1}, Lmiui/content/res/IconCustomizer;->calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F

    move-result-object v18

    .line 842
    :cond_3
    if-eqz v18, :cond_4

    const/4 v4, 0x3

    aget v4, v18, v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    .line 843
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 844
    .local v19, "bgPaint":Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 845
    .local v20, "cm":Landroid/graphics/ColorMatrix;
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v18, v7

    aput v7, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x6

    const/4 v7, 0x1

    aget v7, v18, v7

    aput v7, v4, v6

    const/4 v6, 0x7

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x9

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xa

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xb

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xc

    const/4 v7, 0x2

    aget v7, v18, v7

    aput v7, v4, v6

    const/16 v6, 0xd

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xe

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xf

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x10

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x11

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x12

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v4, v6

    const/16 v6, 0x13

    const/4 v7, 0x0

    aput v7, v4, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 849
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 850
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v4, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 854
    .end local v19    # "bgPaint":Landroid/graphics/Paint;
    .end local v20    # "cm":Landroid/graphics/ColorMatrix;
    :cond_4
    if-eqz p3, :cond_5

    .line 855
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 859
    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 862
    if-eqz p4, :cond_6

    .line 863
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 866
    :cond_6
    return-object v22

    .line 829
    .end local v18    # "bgColor":[F
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "modMask"    # Ljava/lang/String;
    .param p2, "modBackground"    # Ljava/lang/String;
    .param p3, "modPattern"    # Ljava/lang/String;
    .param p4, "modCover"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 774
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v5, v5, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v5, :cond_0

    .line 775
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v5, v5, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    invoke-virtual {v5, p0}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v2

    .line 776
    .local v2, "imgData":Lmiui/imagefilters/ImageData;
    invoke-static {v2}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 778
    .end local v2    # "imgData":Lmiui/imagefilters/ImageData;
    :cond_0
    sget-boolean v5, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v5, :cond_1

    .line 779
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 782
    :cond_1
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 783
    .local v3, "mask":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 784
    .local v0, "background":Landroid/graphics/Bitmap;
    invoke-static {p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 785
    .local v4, "pattern":Landroid/graphics/Bitmap;
    invoke-static {p4}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 787
    .local v1, "cover":Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v0, v4, v1}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "ratio"    # F

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 728
    sget-object v10, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 729
    :try_start_0
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v8

    .line 730
    .local v8, "targetWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v7

    .line 732
    .local v7, "targetHeight":I
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_1

    .line 733
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v4, v0

    .line 734
    .local v4, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 735
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 745
    .end local v4    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 746
    .local v6, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 747
    .local v5, "sourceHeight":I
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 749
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 751
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 752
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 753
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 754
    int-to-float v9, v8

    int-to-float v11, v6

    mul-float/2addr v11, p1

    sub-float/2addr v9, v11

    div-float/2addr v9, v13

    int-to-float v11, v7

    int-to-float v12, v5

    mul-float/2addr v12, p1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 755
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 756
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 757
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 759
    monitor-exit v10

    return-object v1

    .line 736
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    :cond_1
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 738
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 739
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 740
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_0

    .line 741
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 760
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "targetHeight":I
    .end local v8    # "targetWidth":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static ensureIconConfigLoaded()V
    .locals 2

    .prologue
    .line 791
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_1

    .line 792
    const-class v1, Lmiui/content/res/IconCustomizer;

    monitor-enter v1

    .line 793
    :try_start_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_0

    .line 794
    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 795
    invoke-static {}, Lmiui/content/res/IconCustomizer;->makeIconMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 797
    :cond_0
    monitor-exit v1

    .line 799
    :cond_1
    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static ensureMiuiVersionFlagExist(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x3e8

    .line 278
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/customized_icons/miui_version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v1, "/data/system/customized_icons/miui_version"

    .line 282
    .local v1, "tmpPath":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 283
    const-string v2, "customized_icons_version"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 287
    .local v0, "out":Ljava/io/BufferedWriter;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "out":Ljava/io/BufferedWriter;
    :goto_1
    const-string v2, "/data/system/customized_icons/miui_version"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    const-string v2, "/data/system/customized_icons/miui_version"

    invoke-static {v1, v2}, Landroid/miui/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    :cond_2
    const-string v2, "/data/system/customized_icons/miui_version"

    invoke-static {v2, v4, v4}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 295
    const-string v2, "/data/system/customized_icons/miui_version"

    const/16 v3, 0x1ed

    invoke-static {v2, v3}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mask"    # Landroid/graphics/Bitmap;
    .param p2, "background"    # Landroid/graphics/Bitmap;
    .param p3, "pattern"    # Landroid/graphics/Bitmap;
    .param p4, "cover"    # Landroid/graphics/Bitmap;
    .param p5, "cropOutside"    # Z

    .prologue
    .line 547
    invoke-static {p0, p5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3, p4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;
    .param p1, "cropOutside"    # Z

    .prologue
    .line 539
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 540
    .local v0, "icon":Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_pattern.png"

    const-string v4, "icon_border.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 529
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 530
    .local v0, "icon":Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const/4 v2, 0x0

    const-string v3, "icon_shortcut.png"

    const-string v4, "icon_shortcut_arrow.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 12
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 678
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1

    .line 689
    .end local p0    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v4, "top":F
    :cond_0
    :goto_0
    return v5

    .line 680
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "top":F
    .restart local p0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 681
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_0

    .line 684
    invoke-static {v0, v10, v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v4, v6

    .restart local v4    # "top":F
    cmpg-float v6, v4, v8

    if-ltz v6, :cond_0

    .line 685
    invoke-static {v0, v10, v10}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v1, v6

    .local v1, "bottom":F
    cmpg-float v6, v1, v8

    if-ltz v6, :cond_0

    .line 686
    invoke-static {v0, v9, v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v2, v6

    .local v2, "left":F
    cmpg-float v6, v2, v8

    if-ltz v6, :cond_0

    .line 687
    invoke-static {v0, v9, v10}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v3, v6

    .local v3, "right":F
    cmpg-float v6, v3, v8

    if-ltz v6, :cond_0

    .line 689
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v3, v2

    add-float/2addr v6, v11

    div-float/2addr v5, v6

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v7, v1, v4

    add-float/2addr v7, v11

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 557
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 558
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    invoke-static {p0, v0, p3, v1}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconHeight()I
    .locals 2

    .prologue
    .line 172
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 176
    :cond_0
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    return v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "original"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tryModIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 568
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 569
    .local v2, "filename":Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 570
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 603
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 572
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 574
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 575
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 574
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 578
    :cond_1
    if-nez v0, :cond_5

    .line 579
    const/4 v4, 0x0

    .line 580
    .local v4, "icon":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 581
    const/4 v3, 0x0

    :goto_2
    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 582
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 586
    :cond_2
    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    .line 587
    invoke-static {p2, v8}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v5

    invoke-static {p2, v5}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 590
    :cond_3
    if-eqz v4, :cond_4

    .line 591
    const-string v5, "IconCustomizer"

    const-string v6, "Generate customized icon for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v5, "icon_mask.png"

    const-string v6, "icon_background.png"

    const-string v7, "icon_pattern.png"

    const-string v8, "icon_border.png"

    invoke-static {v4, v5, v6, v7, v8}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 593
    invoke-static {v2, v4, p0}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 595
    :cond_4
    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 598
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v0, :cond_6

    .line 599
    sget-object v6, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v6

    .line 600
    :try_start_0
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    monitor-exit v6

    :cond_6
    move-object v1, v0

    .line 603
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 601
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static getCustomizedIconVersionContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconWidth()I
    .locals 2

    .prologue
    .line 164
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 168
    :cond_0
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    return v0
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 515
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 516
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :goto_0
    return-object v2

    .line 516
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 517
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/customized_icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "pathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-static {v2}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    if-nez v0, :cond_0

    .line 506
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 509
    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 650
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "isHorizontal"    # Z
    .param p2, "isInvert"    # Z

    .prologue
    const/16 v12, 0x32

    const/4 v1, 0x1

    const/4 v9, -0x1

    .line 694
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 695
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 696
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    .line 697
    .local v5, "rowBytes":I
    iget-object v4, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 699
    .local v4, "pixels":[B
    if-nez p2, :cond_3

    move v7, v9

    .line 700
    .local v7, "x":I
    :goto_0
    if-nez p2, :cond_4

    move v8, v9

    .line 701
    .local v8, "y":I
    :goto_1
    if-eqz p2, :cond_5

    move v0, v9

    .line 702
    .local v0, "dx":I
    :goto_2
    if-eqz p2, :cond_0

    move v1, v9

    .line 704
    .local v1, "dy":I
    :cond_0
    const/4 v3, 0x0

    .line 705
    .local v3, "length":I
    :cond_1
    if-nez v3, :cond_2

    .line 706
    if-eqz p1, :cond_8

    .line 707
    add-int/2addr v8, v1

    .line 708
    if-ltz v8, :cond_2

    if-lt v8, v2, :cond_6

    .line 723
    :cond_2
    if-eqz p1, :cond_a

    .end local v6    # "width":I
    :goto_3
    mul-int/lit8 v10, v6, 0x1

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_b

    .line 724
    .end local v8    # "y":I
    :goto_4
    return v9

    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v3    # "length":I
    .end local v7    # "x":I
    .restart local v6    # "width":I
    :cond_3
    move v7, v6

    .line 699
    goto :goto_0

    .restart local v7    # "x":I
    :cond_4
    move v8, v2

    .line 700
    goto :goto_1

    .restart local v8    # "y":I
    :cond_5
    move v0, v1

    .line 701
    goto :goto_2

    .line 710
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    .restart local v3    # "length":I
    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_1

    .line 711
    mul-int v10, v8, v5

    shl-int/lit8 v11, v7, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    if-le v10, v12, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 710
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 715
    :cond_8
    add-int/2addr v7, v0

    .line 716
    if-ltz v7, :cond_2

    if-ge v7, v6, :cond_2

    .line 718
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v2, :cond_1

    .line 719
    mul-int v10, v8, v5

    shl-int/lit8 v11, v7, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    if-le v10, v12, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 718
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    move v6, v2

    .line 723
    goto :goto_3

    .line 724
    .end local v6    # "width":I
    :cond_b
    if-eqz p1, :cond_c

    .end local v8    # "y":I
    :goto_7
    move v9, v8

    goto :goto_4

    .restart local v8    # "y":I
    :cond_c
    move v8, v7

    goto :goto_7
.end method

.method public static getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v4, :cond_0

    .line 482
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 485
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, "name":Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".png"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 489
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fancy_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "relativePath":Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 494
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "relativePath":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 484
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "relativePath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "relativePath":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 207
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 407
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b4

    invoke-static {v3, v4}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 411
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    .line 409
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static getHue(I[I)F
    .locals 12
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v8, 0x2

    .line 1231
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1233
    aget v5, p1, v10

    aget v6, p1, v11

    aget v7, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1234
    .local v3, "min":I
    aget v5, p1, v10

    aget v6, p1, v11

    aget v7, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1236
    .local v2, "max":I
    sub-int v4, v2, v3

    .line 1237
    .local v4, "range":I
    if-nez v4, :cond_0

    .line 1238
    const/4 v0, 0x0

    .line 1248
    :goto_0
    return v0

    .line 1240
    :cond_0
    const/4 v1, 0x0

    .line 1241
    .local v1, "index":I
    :goto_1
    if-ge v1, v8, :cond_1

    aget v5, p1, v1

    if-eq v3, v5, :cond_1

    .line 1242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1244
    :cond_1
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x78

    int-to-float v0, v5

    .line 1245
    .local v0, "hue":F
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v4

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 1246
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v4

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 1248
    goto :goto_0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 522
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 523
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 524
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    .line 524
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 525
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "fileName":Ljava/lang/String;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    .local v1, "mappingName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    const-string v3, "%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_1
    return-object v2
.end method

.method private static getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 607
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v2, :cond_0

    .line 608
    const-string v2, "com.android.stk.png"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 609
    const-string p0, "com.android.stk.cu.png"

    .line 616
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    new-instance v1, Ljava/io/File;

    .end local v1    # "iconFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v1    # "iconFile":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 622
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 624
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    :cond_2
    return-object v0

    .line 611
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconFile":Ljava/io/File;
    :cond_3
    const-string v2, "com.android.stk.StkLauncherActivity2.png"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    const-string p0, "com.android.stk.cu.2.png"

    goto :goto_0
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 144
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    if-nez v0, :cond_2

    .line 146
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    :cond_2
    if-eqz v0, :cond_0

    .line 149
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 150
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 128
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 129
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 132
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v2

    .line 136
    :cond_0
    return-object v0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSaturation(I[I)F
    .locals 8
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1204
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1206
    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1207
    .local v1, "min":I
    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1208
    .local v0, "max":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1209
    :cond_0
    int-to-float v2, p0

    .line 1211
    :goto_0
    return v2

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 9
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "cropOutside"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 654
    instance-of v6, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v6, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v5

    .line 656
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 657
    .local v4, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 658
    .local v3, "sourceHeight":I
    if-lez v4, :cond_0

    if-lez v4, :cond_0

    .line 660
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float v2, v6, v7

    .line 661
    .local v2, "ratioW":F
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 663
    .local v1, "ratioH":F
    if-eqz p1, :cond_2

    .line 664
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 667
    :cond_2
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v0

    .line 668
    .local v0, "contentRatio":F
    const-string v6, "IconCustomizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content Ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_3

    .line 670
    const v5, 0x3f75c28f    # 0.96f

    mul-float/2addr v5, v0

    goto :goto_0

    .line 673
    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0
.end method

.method private static getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_2

    .line 418
    const-class v2, Lmiui/content/res/IconCustomizer;

    monitor-enter v2

    .line 419
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_1

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 421
    .local v0, "saveContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 422
    move-object v0, p0

    .line 424
    :cond_0
    new-instance v1, Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {v1, v0}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    .line 426
    .end local v0    # "saveContext":Landroid/content/Context;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_2
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    return-object v1

    .line 426
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getValue(I[I)F
    .locals 4
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .prologue
    .line 1182
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1184
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1185
    .local v0, "max":I
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public static hdpiIconSizeToCurrent(D)D
    .locals 4
    .param p0, "pixelSize"    # D

    .prologue
    .line 973
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static hdpiIconSizeToCurrent(F)F
    .locals 2
    .param p0, "pixelSize"    # F

    .prologue
    .line 965
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static hdpiIconSizeToCurrent(I)I
    .locals 2
    .param p0, "pixelSize"    # I

    .prologue
    .line 969
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .locals 23

    .prologue
    .line 977
    new-instance v10, Lmiui/content/res/IconCustomizer$IconConfig;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    .line 993
    .local v10, "iconConfig":Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v20

    const-string v21, "transform_config.xml"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v11

    .line 994
    .local v11, "input":Ljava/io/InputStream;
    if-nez v11, :cond_1

    .line 995
    const-string v20, "IconCustomizer"

    const-string v21, "can\'t load transform_config.xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    :goto_0
    return-object v10

    .line 999
    :cond_1
    const/16 v18, 0x0

    .line 1000
    .local v18, "root":Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 1002
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1003
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1010
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1016
    if-eqz v18, :cond_0

    .line 1017
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1019
    .local v6, "configs":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_14

    .line 1020
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1019
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1004
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "configs":Lorg/w3c/dom/NodeList;
    .end local v9    # "i":I
    :catch_0
    move-exception v7

    .line 1005
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "IconCustomizer"

    const-string v21, "load icon config failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1011
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1
    move-exception v7

    .line 1012
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1023
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "configs":Lorg/w3c/dom/NodeList;
    .restart local v9    # "i":I
    :cond_3
    :try_start_3
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 1024
    .local v3, "config":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    .line 1025
    .local v13, "name":Ljava/lang/String;
    const-string v20, "IconFilters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1026
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1089
    .end local v3    # "config":Lorg/w3c/dom/Element;
    .end local v13    # "name":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 1090
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "IconCustomizer"

    const-string v21, "transform_config.xml parse failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1027
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "config":Lorg/w3c/dom/Element;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v20, "PointsMapping"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1028
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1029
    .local v15, "points":Lorg/w3c/dom/NodeList;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v16, "pointsMappingFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v17, "pointsMappingTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 1032
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 1031
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1035
    :cond_6
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 1036
    .local v14, "point":Lorg/w3c/dom/Element;
    const-string v20, "Point"

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1037
    const-string v20, "fromX"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    const-string v20, "fromY"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    const-string v20, "toX"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    const-string v20, "toY"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1044
    .end local v14    # "point":Lorg/w3c/dom/Element;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    .line 1045
    .local v19, "size":I
    if-lez v19, :cond_2

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    .line 1046
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    .line 1047
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    .line 1048
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1049
    iget-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    aput v20, v21, v12

    .line 1050
    iget-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    aput v20, v21, v12

    .line 1048
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1053
    .end local v12    # "j":I
    .end local v15    # "points":Lorg/w3c/dom/NodeList;
    .end local v16    # "pointsMappingFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17    # "pointsMappingTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v19    # "size":I
    :cond_8
    const-string v20, "Config"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1054
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1055
    .local v4, "configName":Ljava/lang/String;
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1056
    .local v5, "configValue":Ljava/lang/String;
    const-string v20, "UseModIcon"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1057
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    goto/16 :goto_2

    .line 1062
    .end local v4    # "configName":Ljava/lang/String;
    .end local v5    # "configValue":Ljava/lang/String;
    :cond_9
    const-string v20, "ScaleX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1063
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_2

    .line 1064
    :cond_a
    const-string v20, "ScaleY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1065
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_2

    .line 1066
    :cond_b
    const-string v20, "SkewX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1067
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_2

    .line 1068
    :cond_c
    const-string v20, "SkewY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1069
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_2

    .line 1070
    :cond_d
    const-string v20, "TransX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1071
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_2

    .line 1072
    :cond_e
    const-string v20, "TransY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1073
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_2

    .line 1074
    :cond_f
    const-string v20, "RotateX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1075
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_2

    .line 1076
    :cond_10
    const-string v20, "RotateY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1077
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto/16 :goto_2

    .line 1078
    :cond_11
    const-string v20, "RotateZ"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1079
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto/16 :goto_2

    .line 1080
    :cond_12
    const-string v20, "CameraX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1081
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto/16 :goto_2

    .line 1082
    :cond_13
    const-string v20, "CameraY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1083
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto/16 :goto_2

    .line 1088
    .end local v3    # "config":Lorg/w3c/dom/Element;
    .end local v13    # "name":Ljava/lang/String;
    :cond_14
    const/16 v20, 0x1

    sput-boolean v20, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    .locals 28
    .param p0, "configs"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 898
    const-string v3, "ignoreWhenNotSupported"

    .line 899
    .local v3, "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/imagefilters/IImageFilter;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_b

    .line 902
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 901
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 904
    :cond_1
    new-instance v6, Lmiui/imagefilters/ImageFilterBuilder;

    invoke-direct {v6}, Lmiui/imagefilters/ImageFilterBuilder;-><init>()V

    .line 905
    .local v6, "builder":Lmiui/imagefilters/ImageFilterBuilder;
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 906
    .local v8, "ele":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v17

    .line 908
    .local v17, "name":Ljava/lang/String;
    const-string v26, "Filter"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 909
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 910
    .local v10, "filterChildren":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_a

    .line 911
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 910
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 913
    :cond_3
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    .line 914
    .local v20, "paramEle":Lorg/w3c/dom/Element;
    const-string v26, "Param"

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 915
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v21, "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v26, "ignoreWhenNotSupported"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 918
    .local v24, "strParamIgnoreWhenNotSupported":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 919
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 920
    .local v19, "paramChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_4
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_6

    .line 921
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 920
    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 924
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 925
    .local v18, "paramChildEle":Lorg/w3c/dom/Element;
    const-string v26, "IconFilters"

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 926
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 931
    .end local v14    # "k":I
    .end local v18    # "paramChildEle":Lorg/w3c/dom/Element;
    .end local v19    # "paramChildNodes":Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_8

    .line 932
    const-string v26, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 933
    .local v25, "strParamValue":Ljava/lang/String;
    const-string v26, "\\|"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 934
    .local v5, "arrParamValue":[Ljava/lang/String;
    move-object v4, v5

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_6
    if-ge v12, v15, :cond_8

    aget-object v22, v4, v12

    .line 935
    .local v22, "str":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 939
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "arrParamValue":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v22    # "str":Ljava/lang/String;
    .end local v25    # "strParamValue":Ljava/lang/String;
    :cond_8
    const-string v26, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x0

    :goto_7
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_3

    :cond_9
    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    goto :goto_7

    .line 943
    .end local v20    # "paramEle":Lorg/w3c/dom/Element;
    .end local v21    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v24    # "strParamIgnoreWhenNotSupported":Ljava/lang/String;
    :cond_a
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setFilterName(Ljava/lang/String;)V

    .line 944
    const-string v26, "ignoreWhenNotSupported"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 945
    .local v23, "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setIgnoreWhenNotSupported(Z)V

    .line 949
    :try_start_0
    invoke-virtual {v6}, Lmiui/imagefilters/ImageFilterBuilder;->createImageFilter()Lmiui/imagefilters/IImageFilter;

    move-result-object v9

    .line 950
    .local v9, "filter":Lmiui/imagefilters/IImageFilter;
    if-eqz v9, :cond_0

    .line 951
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmiui/imagefilters/ImageFilterBuilder$NoSupportException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 953
    .end local v9    # "filter":Lmiui/imagefilters/IImageFilter;
    :catch_0
    move-exception v7

    .line 954
    .local v7, "e":Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    invoke-virtual {v7}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;->printStackTrace()V

    .line 955
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 961
    .end local v6    # "builder":Lmiui/imagefilters/ImageFilterBuilder;
    .end local v7    # "e":Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    .end local v8    # "ele":Lorg/w3c/dom/Element;
    .end local v10    # "filterChildren":Lorg/w3c/dom/NodeList;
    .end local v13    # "j":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v23    # "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    :cond_b
    new-instance v27, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Lmiui/imagefilters/IImageFilter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lmiui/imagefilters/IImageFilter;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;-><init>([Lmiui/imagefilters/IImageFilter;)V

    return-object v27

    .line 945
    .restart local v6    # "builder":Lmiui/imagefilters/ImageFilterBuilder;
    .restart local v8    # "ele":Lorg/w3c/dom/Element;
    .restart local v10    # "filterChildren":Lorg/w3c/dom/NodeList;
    .restart local v13    # "j":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v23    # "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    :cond_c
    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    goto :goto_8
.end method

.method private static makeIconMatrix()Landroid/graphics/Matrix;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 870
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 872
    .local v0, "matrix":Landroid/graphics/Matrix;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_0

    .line 873
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v4, v4, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v4, v4

    div-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 894
    :goto_0
    return-object v0

    .line 877
    :cond_0
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 878
    .local v6, "camera":Landroid/graphics/Camera;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 879
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 880
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 881
    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 884
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v1, v2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 886
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v1, v2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 890
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 891
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto :goto_0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "l"    # Lmiui/content/res/IconCustomizer$CustomizedIconsListener;

    .prologue
    .line 311
    const-string v19, "icon_mask.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 312
    .local v14, "mask":Landroid/graphics/Bitmap;
    const-string v19, "icon_background.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 313
    .local v4, "background":Landroid/graphics/Bitmap;
    const-string v19, "icon_pattern.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 314
    .local v15, "pattern":Landroid/graphics/Bitmap;
    const-string v19, "icon_border.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 316
    .local v5, "cover":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .local v12, "launcherIntent":Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 320
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 322
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 323
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 326
    :cond_0
    const/16 v17, 0x1

    .line 327
    .local v17, "taskCnt":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 329
    .local v7, "execService":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 330
    .local v20, "time":J
    const-string v19, "IconCustomizer"

    const-string v22, "prepareCustomizedIcons start"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v9, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 333
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    new-instance v19, Lmiui/content/res/IconCustomizer$1;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lmiui/content/res/IconCustomizer$1;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 338
    .local v8, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v8    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 342
    .restart local v8    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    :goto_2
    if-eqz p1, :cond_2

    .line 349
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "taskCnt":I
    .local v18, "taskCnt":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move/from16 v17, v18

    .end local v18    # "taskCnt":I
    .restart local v17    # "taskCnt":I
    goto :goto_1

    .line 343
    :catch_0
    move-exception v6

    .line 344
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 345
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 346
    .local v6, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2

    .line 352
    .end local v6    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 353
    const-string v19, "IconCustomizer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "prepareCustomizedIcons end "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v20

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz p1, :cond_4

    .line 356
    invoke-interface/range {p1 .. p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 358
    :cond_4
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 384
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    if-nez v1, :cond_0

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 389
    :cond_0
    if-nez v1, :cond_1

    .line 401
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 392
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 393
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 395
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/content/res/ThemeRuntimeManager;->saveIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 396
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 372
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 199
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    .local v2, "density":I
    :cond_0
    :goto_0
    return-object p0

    .line 182
    .end local v2    # "density":I
    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 183
    .restart local v2    # "density":I
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 190
    .local v3, "scaleReverse":F
    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v5

    .line 191
    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_3

    .line 192
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 193
    .local v1, "blurRadius":I
    invoke-static {p0, v1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 194
    .local v4, "tempBlur":Landroid/graphics/Bitmap;
    move-object p0, v4

    .line 197
    .end local v1    # "blurRadius":I
    .end local v4    # "tempBlur":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v5

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object p0, v0

    .line 199
    goto :goto_0
.end method

.method private static setHue(IF[I)I
    .locals 12
    .param p0, "color"    # I
    .param p1, "hue"    # F
    .param p2, "RGB"    # [I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x42700000    # 60.0f

    .line 1252
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1254
    aget v4, p2, v10

    aget v5, p2, v11

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1255
    .local v2, "min":I
    aget v4, p2, v10

    aget v5, p2, v11

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1257
    .local v1, "max":I
    sub-int v3, v1, v2

    .line 1258
    .local v3, "range":I
    if-nez v3, :cond_0

    .line 1274
    .end local p0    # "color":I
    :goto_0
    return p0

    .line 1261
    .restart local p0    # "color":I
    :cond_0
    :goto_1
    cmpg-float v4, p1, v9

    if-gez v4, :cond_1

    .line 1262
    add-float/2addr p1, v7

    goto :goto_1

    .line 1263
    :cond_1
    :goto_2
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    .line 1264
    sub-float/2addr p1, v7

    goto :goto_2

    .line 1266
    :cond_2
    const/high16 v4, 0x42f00000    # 120.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1267
    .local v0, "index":I
    mul-int/lit8 v4, v0, 0x78

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 1268
    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v0, v4, 0x3

    .line 1270
    aput v2, p2, v0

    .line 1271
    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v4, v4, 0x3

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v4

    .line 1272
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x3

    int-to-float v5, v1

    int-to-float v6, v3

    sub-float v7, p1, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v4

    .line 1274
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setSaturation(IF[I)I
    .locals 9
    .param p0, "color"    # I
    .param p1, "saturation"    # F
    .param p2, "RGB"    # [I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1215
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1217
    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1218
    .local v2, "min":I
    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1219
    .local v1, "max":I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 1227
    .end local p0    # "color":I
    :cond_0
    :goto_0
    return p0

    .line 1222
    .restart local p0    # "color":I
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 1223
    .local v0, "currentSaturation":F
    int-to-float v3, v1

    aget v4, p2, v6

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v6

    .line 1224
    int-to-float v3, v1

    aget v4, p2, v7

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v7

    .line 1225
    int-to-float v3, v1

    aget v4, p2, v8

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v8

    .line 1227
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setValue(IF[I)I
    .locals 8
    .param p0, "color"    # I
    .param p1, "value"    # F
    .param p2, "RGB"    # [I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1189
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1191
    aget v2, p2, v5

    aget v3, p2, v6

    aget v4, p2, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1192
    .local v1, "max":I
    if-nez v1, :cond_0

    .line 1200
    .end local p0    # "color":I
    :goto_0
    return p0

    .line 1195
    .restart local p0    # "color":I
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v0, v2, v3

    .line 1196
    .local v0, "currentValue":F
    aget v2, p2, v5

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v5

    .line 1197
    aget v2, p2, v6

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v6

    .line 1198
    aget v2, p2, v7

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v7

    .line 1200
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 766
    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 767
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 768
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 769
    return-object v1
.end method
