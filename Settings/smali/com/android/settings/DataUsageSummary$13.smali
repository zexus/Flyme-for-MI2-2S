.class Lcom/android/settings_ext/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ext/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    # getter for: Lcom/android/settings_ext/DataUsageSummary;->mChart:Lcom/android/settings_ext/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->access$1500(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/android/settings_ext/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/DataUsageSummary;->access$1000(Lcom/android/settings_ext/DataUsageSummary;J)V

    .line 1376
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    # getter for: Lcom/android/settings_ext/DataUsageSummary;->mChart:Lcom/android/settings_ext/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ext/DataUsageSummary;->access$1500(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/android/settings_ext/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/DataUsageSummary;->access$2600(Lcom/android/settings_ext/DataUsageSummary;J)V

    .line 1371
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1386
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$13;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1381
    return-void
.end method
