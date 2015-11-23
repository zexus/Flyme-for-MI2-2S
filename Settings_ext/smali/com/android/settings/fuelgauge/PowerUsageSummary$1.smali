.class Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# instance fields
.field final synthetic aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$1;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$1;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-static {v0, p2}, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$1;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$1;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_0
    return-void
.end method
