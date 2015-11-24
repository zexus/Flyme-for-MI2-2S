.class Lcom/android/settings_ext/fq;
.super Lcom/android/settings_ext/search/a;
.source "PrivacySettings.java"


# instance fields
.field uf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    .line 308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/fq;->uf:Z

    .line 309
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-boolean v1, p0, Lcom/android/settings_ext/fq;->uf:Z

    if-nez v1, :cond_0

    .line 326
    :goto_0
    return-object v0

    .line 322
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 323
    const v2, 0x7f060062

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
