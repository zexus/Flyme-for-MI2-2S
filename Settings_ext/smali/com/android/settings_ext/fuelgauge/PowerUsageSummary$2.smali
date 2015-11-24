.class Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# instance fields
.field final synthetic aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 422
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 423
    return-void

    .line 401
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;

    .line 402
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/fuelgauge/PowerGaugePreference;

    .line 405
    if-eqz v1, :cond_0

    .line 406
    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 407
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 408
    iget-object v2, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-static {v2}, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 419
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->b(Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 420
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary$2;->aaU:Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;->c(Lcom/android/settings_ext/fuelgauge/PowerUsageSummary;)V

    goto :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
