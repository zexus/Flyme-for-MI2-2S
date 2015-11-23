.class final Lcom/android/settings/wifi/I;
.super Lcom/android/settings/search/a;
.source "SavedAccessPointsWifiSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7

    .prologue
    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    const v1, 0x7f09030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 234
    iput-object v3, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 235
    iput-object v3, v0, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 236
    iput-boolean p2, v0, Lcom/android/settings/search/n;->enabled:Z

    .line 237
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 242
    invoke-static {p1, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->b(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v4

    .line 245
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 247
    new-instance v6, Lcom/android/settings/search/n;

    invoke-direct {v6, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 249
    iput-object v3, v6, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 250
    iput-boolean p2, v6, Lcom/android/settings/search/n;->enabled:Z

    .line 251
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_0
    return-object v2
.end method
