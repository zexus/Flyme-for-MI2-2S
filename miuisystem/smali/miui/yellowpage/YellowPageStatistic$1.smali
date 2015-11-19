.class final Lmiui/yellowpage/YellowPageStatistic$1;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$displayAdName:Ljava/lang/String;

.field final synthetic val$hit:Z

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$show:Z

.field final synthetic val$type:I

.field final synthetic val$yid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$number:Ljava/lang/String;

    iput p3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$type:I

    iput-boolean p4, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$hit:Z

    iput-object p5, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$yid:Ljava/lang/String;

    iput-object p6, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$displayAdName:Ljava/lang/String;

    iput-boolean p7, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    sget-object v2, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "view_yp_in_phone_call"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "number"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "type"

    iget v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v2, "hit"

    iget-boolean v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$hit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    const-string v2, "yid"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$yid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "displayAdName"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$displayAdName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "show"

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$show:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 134
    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method
