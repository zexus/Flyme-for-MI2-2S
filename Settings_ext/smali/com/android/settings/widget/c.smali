.class Lcom/android/settings/widget/c;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/h;


# instance fields
.field final synthetic aoS:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2

    .prologue
    .line 294
    if-eqz p2, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/e;->bl()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/e;->bm()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public c(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/e;->bn()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/widget/c;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/e;->bo()V

    goto :goto_0
.end method
