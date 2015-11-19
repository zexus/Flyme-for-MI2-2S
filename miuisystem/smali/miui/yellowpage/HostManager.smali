.class public Lmiui/yellowpage/HostManager;
.super Ljava/lang/Object;
.source "HostManager.java"


# static fields
.field protected static final BASE_URL:Ljava/lang/String;

.field private static final DIRECTORY_IMAGE_JPG:Ljava/lang/String; = "/thumbnail/jpeg/w%dh%d/"

.field private static final DIRECTORY_IMAGE_PHOTO:Ljava/lang/String; = "/thumbnail/jpeg/h%d/"

.field private static final DIRECTORY_IMAGE_PNG:Ljava/lang/String; = "/thumbnail/png/w%d/"

.field private static final DIRECTORY_IMAGE_THUMBNAIL:Ljava/lang/String; = "/thumbnail/jpeg/w100/"

.field private static final FORMAL_BASE_URL:Ljava/lang/String; = "http://api.huangye.miui.com"

.field private static final GLOBAL_BASE_URL:Ljava/lang/String; = "https://global.api.huangye.miui.com"

.field private static final STAGING_BASE_URL:Ljava/lang/String; = "http://trial.api.huangye.miui.com"

.field protected static final URL_DEFAULT_IMAGE_BASE:Ljava/lang/String; = "http://file.market.xiaomi.com"

.field protected static final URL_SPBOOK_BASE:Ljava/lang/String;

.field protected static final URL_YELLOW_PAGE_BASE:Ljava/lang/String;

.field private static sDisplayHeight:I

.field private static sImageDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "https://global.api.huangye.miui.com"

    :goto_0
    sput-object v0, Lmiui/yellowpage/HostManager;->BASE_URL:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/yellowpage/HostManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/spbook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/HostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/yellowpage/HostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yellowpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/HostManager;->URL_YELLOW_PAGE_BASE:Ljava/lang/String;

    return-void

    .line 20
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    const-string v0, "http://api.huangye.miui.com"

    goto :goto_0

    :cond_1
    const-string v0, "http://trial.api.huangye.miui.com"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmiui/yellowpage/HostManager;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultImageBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "http://file.market.xiaomi.com"

    return-object v0
.end method

.method private static getImageDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 72
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v1, "http://file.market.xiaomi.com"

    sput-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 61
    const-string v1, "image_domain"

    invoke-static {p0, v1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    sput-object v0, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 66
    sget-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 72
    :cond_1
    sget-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .prologue
    .line 51
    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getImageDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lmiui/yellowpage/HostManager;->getImageUrl(Ljava/lang/String;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImageUrl(Ljava/lang/String;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .locals 5
    .param p0, "imageDomain"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->PNG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    if-ne p4, v0, :cond_2

    const-string v0, "/thumbnail/png/w%d/"

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "/thumbnail/jpeg/w%dh%d/"

    goto :goto_1
.end method

.method private static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget v2, Lmiui/yellowpage/HostManager;->sDisplayHeight:I

    if-nez v2, :cond_0

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 98
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lmiui/yellowpage/HostManager;->sDisplayHeight:I

    .line 101
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    sget v2, Lmiui/yellowpage/HostManager;->sDisplayHeight:I

    return v2
.end method

.method public static getSpbookBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lmiui/yellowpage/HostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getYellowPageBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lmiui/yellowpage/HostManager;->URL_YELLOW_PAGE_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getYellowPagePhotoUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getImageDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thumbnail/jpeg/h%d/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getYellowPageThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getImageDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thumbnail/jpeg/w100/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
