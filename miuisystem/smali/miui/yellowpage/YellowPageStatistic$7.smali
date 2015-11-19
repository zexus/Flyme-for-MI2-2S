.class final Lmiui/yellowpage/YellowPageStatistic$7;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$display:Ljava/lang/String;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$srcModuleId:I

.field final synthetic val$values:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$display:Ljava/lang/String;

    iput-object p4, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$source:Ljava/lang/String;

    iput p5, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$srcModuleId:I

    iput-object p6, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$values:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 272
    sget-object v2, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "log_event"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "event"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "display"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$display:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "source"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$source:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "srcModuleId"

    iget v3, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$srcModuleId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v2, "values"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$values:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$7;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
