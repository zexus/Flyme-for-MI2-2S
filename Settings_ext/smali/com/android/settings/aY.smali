.class Lcom/android/settings/aY;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic gH:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bk()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1359
    iget-object v0, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bs;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->t(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1360
    :goto_0
    iget-object v2, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->u(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    iget-object v2, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->v(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    return-void

    :cond_0
    move v0, v1

    .line 1359
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1360
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1361
    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->r(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 1348
    iget-object v1, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/bs;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/settings/bs;->a(Landroid/net/NetworkStats;[I)V

    .line 1349
    invoke-direct {p0}, Lcom/android/settings/aY;->bk()V

    .line 1350
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3

    .prologue
    .line 1341
    new-instance v0, Lcom/android/settings/b/h;

    iget-object v1, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->n(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/b/h;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1338
    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/aY;->a(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/settings/aY;->gH:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/bs;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bs;->a(Landroid/net/NetworkStats;[I)V

    .line 1355
    invoke-direct {p0}, Lcom/android/settings/aY;->bk()V

    .line 1356
    return-void
.end method
