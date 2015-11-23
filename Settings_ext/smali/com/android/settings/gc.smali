.class final Lcom/android/settings/gc;
.super Lcom/android/settings/search/a;
.source "ScreenPinningSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5

    .prologue
    const v4, 0x7f090a11

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 113
    const v3, 0x7f090a12

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v0
.end method
