.class public Lmiui/yellowpage/YellowPageStatistic;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageStatistic$StatsContext;,
        Lmiui/yellowpage/YellowPageStatistic$Display;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPageStatistic"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 12
    invoke-static {p0}, Lmiui/yellowpage/YellowPageStatistic;->isUriIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static clickModuleItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;
    .param p2, "hotLinkUrl"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "display"    # Ljava/lang/String;
    .param p5, "sourceModuleId"    # I

    .prologue
    .line 185
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/yellowpage/YellowPageStatistic$4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public static clickNavigationItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$3;

    invoke-direct {v0, p0, p1}, Lmiui/yellowpage/YellowPageStatistic$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public static clickSearchItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/YellowPageStatistic$6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public static clickYellowPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # Ljava/lang/String;
    .param p2, "display"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "srcModuleId"    # I

    .prologue
    .line 209
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/YellowPageStatistic$5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method private static isUriIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 292
    if-nez p0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "display"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "srcModuleId"    # I
    .param p5, "values"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/yellowpage/YellowPageStatistic$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public static uploadData(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 254
    sget-object v3, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "upload_data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 258
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    .local v0, "result":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static viewNormalDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "srcModuleId"    # I

    .prologue
    .line 143
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/yellowpage/YellowPageStatistic$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public static viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "hit"    # Z
    .param p4, "yid"    # Ljava/lang/String;
    .param p5, "displayAdName"    # Ljava/lang/String;
    .param p6, "show"    # Z

    .prologue
    .line 118
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lmiui/yellowpage/YellowPageStatistic$1;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method