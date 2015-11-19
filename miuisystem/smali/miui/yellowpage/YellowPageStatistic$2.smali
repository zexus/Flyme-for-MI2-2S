.class final Lmiui/yellowpage/YellowPageStatistic$2;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->viewNormalDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$display:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$srcModuleId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$display:Ljava/lang/String;

    iput-object p3, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$source:Ljava/lang/String;

    iput p4, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$srcModuleId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    sget-object v2, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "view_normal_display"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "display"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$display:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "source"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$source:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "srcModuleId"

    iget v3, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$srcModuleId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
