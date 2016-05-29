.class Lcom/android/settings_ext/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ext/widget/ChartDataUsageView$1;->this$0:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ext/widget/ChartSweepView;

    .line 95
    .local v0, "sweep":Lcom/android/settings_ext/widget/ChartSweepView;
    iget-object v1, p0, Lcom/android/settings_ext/widget/ChartDataUsageView$1;->this$0:Lcom/android/settings_ext/widget/ChartDataUsageView;

    # invokes: Lcom/android/settings_ext/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ext/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lcom/android/settings_ext/widget/ChartDataUsageView;->access$000(Lcom/android/settings_ext/widget/ChartDataUsageView;Lcom/android/settings_ext/widget/ChartSweepView;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings_ext/widget/ChartDataUsageView$1;->this$0:Lcom/android/settings_ext/widget/ChartDataUsageView;

    # invokes: Lcom/android/settings_ext/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->access$100(Lcom/android/settings_ext/widget/ChartDataUsageView;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ext/widget/ChartDataUsageView$1;->this$0:Lcom/android/settings_ext/widget/ChartDataUsageView;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings_ext/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings_ext/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/settings_ext/widget/ChartDataUsageView;->access$200(Lcom/android/settings_ext/widget/ChartDataUsageView;Lcom/android/settings_ext/widget/ChartSweepView;Z)V

    .line 100
    return-void
.end method
