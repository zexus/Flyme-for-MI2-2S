.class public final Lmiui/yellowpage/Tag$TagWebService;
.super Ljava/lang/Object;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagWebService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/Tag$TagWebService$CommonResult;,
        Lmiui/yellowpage/Tag$TagWebService$RequestLocation;,
        Lmiui/yellowpage/Tag$TagWebService$ContentGetProfileData;,
        Lmiui/yellowpage/Tag$TagWebService$ContentGetNavigationData;,
        Lmiui/yellowpage/Tag$TagWebService$ContentGetYellowPageByCid;,
        Lmiui/yellowpage/Tag$TagWebService$ContentGetImage;,
        Lmiui/yellowpage/Tag$TagWebService$ContentGetThumbnail;,
        Lmiui/yellowpage/Tag$TagWebService$ContentRemoteSearch;,
        Lmiui/yellowpage/Tag$TagWebService$ContentLocalSearch;
    }
.end annotation


# static fields
.field public static final KEY_GO_HOME:Ljava/lang/String; = "goHome"

.field public static final KEY_IS_ON_LINE:Ljava/lang/String; = "isOnLine"

.field public static final KEY_SHOW_TOAST:Ljava/lang/String; = "showToast"

.field private static sMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    .line 134
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "getPageByCid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "getThumbnail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "getImage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "remoteSearch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "localSearch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "navigationData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    const-string v1, "profileData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method public static hasContentMethod(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v0, Lmiui/yellowpage/Tag$TagWebService;->sMethodList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
