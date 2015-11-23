.class Lcom/android/settings_ext/aZ;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ext/widget/e;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bl()V
    .locals 4

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->tc()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;J)V

    .line 1403
    return-void
.end method

.method public bm()V
    .locals 4

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->td()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;J)V

    .line 1408
    return-void
.end method

.method public bn()V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->y(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1413
    return-void
.end method

.method public bo()V
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/settings_ext/aZ;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->y(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1418
    return-void
.end method
