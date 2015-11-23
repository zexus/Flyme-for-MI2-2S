.class Lcom/android/settings_ext/aX;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/settings_ext/b/a;)V
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0, p2}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/b/a;)Lcom/android/settings_ext/b/a;

    .line 1316
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->o(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ext/b/a;->adk:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1317
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->o(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ext/b/a;->adl:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1320
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;Z)V

    .line 1321
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->p(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1324
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->o(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ext/b/a;->adl:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->q(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1327
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3

    .prologue
    .line 1310
    new-instance v0, Lcom/android/settings_ext/b/b;

    iget-object v1, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings_ext/DataUsageSummary;->n(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ext/b/b;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1307
    check-cast p2, Lcom/android/settings_ext/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/aX;->a(Landroid/content/Loader;Lcom/android/settings_ext/b/a;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1331
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/b/a;)Lcom/android/settings_ext/b/a;

    .line 1332
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1333
    iget-object v0, p0, Lcom/android/settings_ext/aX;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1334
    return-void
.end method
