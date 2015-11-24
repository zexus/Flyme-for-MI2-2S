.class Lcom/android/settings_ext/fuelgauge/BatterySettings$1;
.super Landroid/database/ContentObserver;
.source "BatterySettings.java"


# instance fields
.field final synthetic aaB:Lcom/android/settings_ext/fuelgauge/BatterySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/fuelgauge/BatterySettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings$1;->aaB:Lcom/android/settings_ext/fuelgauge/BatterySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySettings$1;->aaB:Lcom/android/settings_ext/fuelgauge/BatterySettings;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/BatterySettings;->a(Lcom/android/settings_ext/fuelgauge/BatterySettings;)V

    .line 51
    return-void
.end method
