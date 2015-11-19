.class public Lmiui/content/res/ThemeResources$FilterInfo;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilterInfo"
.end annotation


# instance fields
.field public mFallback:Lcom/miui/internal/content/res/ThemeFallback;

.field public mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPath:Ljava/lang/String;

.field public mValues:Lmiui/content/res/ThemeValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    .line 136
    new-instance v0, Lcom/miui/internal/content/res/ThemeFallback;

    invoke-direct {v0}, Lcom/miui/internal/content/res/ThemeFallback;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    .line 139
    iput-object p1, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    .line 141
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
