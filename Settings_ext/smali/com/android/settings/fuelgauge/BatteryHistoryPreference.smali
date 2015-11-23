.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private final YR:Landroid/os/BatteryStats;

.field private final YS:Landroid/content/Intent;

.field private aah:Z

.field private aai:Landroid/view/View;

.field private aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 48
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->YR:Landroid/os/BatteryStats;

    .line 49
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->YS:Landroid/content/Intent;

    .line 50
    return-void
.end method


# virtual methods
.method public aB(Z)V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aah:Z

    if-eq v0, p1, :cond_0

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aah:Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aai:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aai:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 69
    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 71
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->YR:Landroid/os/BatteryStats;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->YS:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 74
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 86
    :goto_0
    const v0, 0x7f10019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aai:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aai:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aah:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aaj:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
