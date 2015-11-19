.class public final Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethod:Ljava/lang/String;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCache:Z

.field private mRequestServer:Z

.field private mRequestYellowPage:Z

.field private mRequireLocId:Z

.field private mRequireLogin:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mContext:Landroid/content/Context;

    .line 594
    const-string v0, "GET"

    iput-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mMethod:Ljava/lang/String;

    .line 595
    iput-object p2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mUrl:Ljava/lang/String;

    .line 596
    iput-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    .line 597
    iput-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    .line 598
    iput-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    .line 599
    iput-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    .line 600
    iput-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    .line 602
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    .line 603
    return-void
.end method

.method private constructParams()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "method"

    iget-object v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v4, "url"

    iget-object v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v4, "set_attach_location"

    iget-boolean v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const-string v4, "set_attach_user_info"

    iget-boolean v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    const-string v4, "set_request_cache"

    iget-boolean v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    const-string v4, "set_request_server"

    iget-boolean v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v4, "set_request_yellowpage"

    iget-boolean v5, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    iget-object v4, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 647
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 648
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getResult(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 655
    iget-object v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mContext:Landroid/content/Context;

    const-string v2, "request.http"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 656
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    return-object p0
.end method

.method public requestLocal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    invoke-direct {p0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->constructParams()Landroid/os/Bundle;

    move-result-object v0

    .line 667
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "invoke_request_local"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 660
    invoke-direct {p0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->constructParams()Landroid/os/Bundle;

    move-result-object v0

    .line 661
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "invoke_request_server"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 662
    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setRequestCache(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "request"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    .line 623
    return-object p0
.end method

.method public setRequestServer(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "request"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    .line 628
    return-object p0
.end method

.method public setRequestYellowPage(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "request"    # Z

    .prologue
    .line 632
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    .line 633
    return-object p0
.end method

.method public setRequireLocId(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "requireLocId"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    .line 612
    return-object p0
.end method

.method public setRequireLogin(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "requireLogin"    # Z

    .prologue
    .line 606
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    .line 607
    return-object p0
.end method
