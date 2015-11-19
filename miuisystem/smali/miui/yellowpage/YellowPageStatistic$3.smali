.class final Lmiui/yellowpage/YellowPageStatistic$3;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->clickNavigationItem(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$moduleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$3;->val$moduleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    sget-object v2, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "click_navigation_item"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "moduleId"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$3;->val$moduleId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
