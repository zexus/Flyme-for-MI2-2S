.class Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle$3;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic aak:Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle$3;->aak:Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle$3;->aak:Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {v0}, Lcom/android/settings_ext/fuelgauge/BatteryIndicatorStyle;->finish()V

    .line 62
    return-void
.end method
