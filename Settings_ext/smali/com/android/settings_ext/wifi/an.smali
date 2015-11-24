.class final Lcom/android/settings_ext/wifi/an;
.super Lcom/android/settings_ext/search/a;
.source "WifiSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f090291

    .line 1212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1216
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 1217
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 1218
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 1219
    const v3, 0x7f090998

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ext/search/n;->aiX:Ljava/lang/String;

    .line 1220
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1225
    invoke-static {p1, v0, v4, v4}, Lcom/android/settings_ext/wifi/WifiSettings;->b(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v0

    .line 1229
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/AccessPoint;

    .line 1231
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1232
    new-instance v4, Lcom/android/settings_ext/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 1233
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 1234
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 1235
    iput-boolean p2, v4, Lcom/android/settings_ext/search/n;->enabled:Z

    .line 1236
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1239
    :cond_1
    return-object v1
.end method
