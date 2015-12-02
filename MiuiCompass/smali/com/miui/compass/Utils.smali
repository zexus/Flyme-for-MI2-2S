.class public Lcom/miui/compass/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final sTypefaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/compass/Utils;->sTypefaceMap:Ljava/util/HashMap;

    return-void
.end method

.method public static calculateSLP(DD)D
    .locals 4
    .param p0, "altitude"    # D
    .param p2, "currentPressure"    # D

    .prologue
    .line 37
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x40e5a54000000000L    # 44330.0

    div-double v2, p0, v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4015051eb851eb85L    # 5.255

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, p2, v0

    return-wide v0
.end method

.method public static dismissDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    :cond_0
    return-void
.end method

.method public static getLocationString(D)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # D

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 41
    double-to-int v0, p0

    .line 42
    .local v0, "du":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    div-int/lit8 v1, v3, 0x3c

    .line 43
    .local v1, "fen":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    rem-int/lit8 v2, v3, 0x3c

    .line 44
    .local v2, "miao":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final getTypeface(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v1, Lcom/miui/compass/Utils;->sTypefaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 17
    .local v0, "tf":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/miui/compass/Utils;->sTypefaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .locals 2
    .param p0, "mConnectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 26
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 33
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static normalizeDegree(F)F
    .locals 2
    .param p0, "degree"    # F

    .prologue
    .line 49
    const/high16 v0, 0x44340000    # 720.0f

    add-float/2addr v0, p0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method
