.class public Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings_ext/BaseFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private YR:Landroid/os/BatteryStats;

.field private YS:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 52
    const v0, 0x7f0400a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    const v0, 0x7f100039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;

    .line 56
    iget-object v2, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->YR:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->YS:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 57
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->YR:Landroid/os/BatteryStats;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryDetail;->YS:Landroid/content/Intent;

    .line 45
    return-void
.end method
