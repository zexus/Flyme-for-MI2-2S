.class Lcom/android/settings/widget/b;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# instance fields
.field final synthetic aoS:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/widget/b;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    .line 95
    iget-object v1, p0, Lcom/android/settings/widget/b;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/widget/b;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/widget/b;->aoS:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    .line 100
    return-void
.end method
