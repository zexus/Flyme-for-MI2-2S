.class public Lmiui/yellowpage/YellowPageStatistic$StatsContext;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsContext"
.end annotation


# static fields
.field public static EMPTY:Lmiui/yellowpage/YellowPageStatistic$StatsContext; = null

.field private static final serialVersionUID:J = 0xddb3451eddf42a3L


# instance fields
.field private mSource:Ljava/lang/String;

.field private mSourceModuleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->EMPTY:Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "srcModuleId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    .line 44
    iput p2, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    .line 45
    return-void
.end method

.method public static parse(Landroid/content/Intent;)Lmiui/yellowpage/YellowPageStatistic$StatsContext;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "srcModuleId":I
    const-string v1, ""

    .line 61
    .local v1, "source":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 62
    const-string v4, "mid"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    const-string v4, "source"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    # invokes: Lmiui/yellowpage/YellowPageStatistic;->isUriIntent(Landroid/content/Intent;)Z
    invoke-static {p0}, Lmiui/yellowpage/YellowPageStatistic;->access$000(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 68
    .local v0, "data":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 69
    const-string v4, "mid"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "srcModuleIdParam":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    .end local v3    # "srcModuleIdParam":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    const-string v4, "source"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .end local v0    # "data":Landroid/net/Uri;
    :cond_2
    const-string v4, "YellowPageStatistic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v4, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    invoke-direct {v4, v1, v2}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    return-object v4
.end method

.method public static parse(Landroid/os/Bundle;)Lmiui/yellowpage/YellowPageStatistic$StatsContext;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "srcModuleId":I
    const-string v0, ""

    .line 89
    .local v0, "source":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 90
    const-string v2, "mid"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 91
    const-string v2, "source"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    new-instance v2, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    invoke-direct {v2, v0, v1}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public attach(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v0, "mid"

    iget v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public attach(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "mid"

    iget v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceModuleId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    return v0
.end method
