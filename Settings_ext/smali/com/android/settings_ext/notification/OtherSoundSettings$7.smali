.class final Lcom/android/settings_ext/notification/OtherSoundSettings$7;
.super Lcom/android/settings_ext/search/a;
.source "OtherSoundSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 240
    const v1, 0x7f060058

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 241
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    .prologue
    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-static {}, Lcom/android/settings_ext/notification/OtherSoundSettings;->qO()[Lcom/android/settings_ext/notification/SettingPref;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 247
    invoke-virtual {v4, p1}, Lcom/android/settings_ext/notification/SettingPref;->be(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 248
    invoke-virtual {v4}, Lcom/android/settings_ext/notification/SettingPref;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    return-object v1
.end method
