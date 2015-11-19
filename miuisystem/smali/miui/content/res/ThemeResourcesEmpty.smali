.class public Lmiui/content/res/ThemeResourcesEmpty;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesEmpty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResourcesEmpty$LoadThemeValuesCallback;
    }
.end annotation


# static fields
.field public static sInstance:Lmiui/content/res/ThemeResourcesEmpty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lmiui/content/res/ThemeResourcesEmpty;

    invoke-direct {v0}, Lmiui/content/res/ThemeResourcesEmpty;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    const-string v0, "FakeForEmpty"

    sget-object v1, Lmiui/content/res/ThemeResourcesEmpty;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 14
    return-void
.end method


# virtual methods
.method public checkUpdate()J
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasThemeFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .locals 0
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .prologue
    .line 29
    return-void
.end method
