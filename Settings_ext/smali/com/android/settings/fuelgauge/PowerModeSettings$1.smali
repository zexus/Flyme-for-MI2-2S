.class Lcom/android/settings/fuelgauge/PowerModeSettings$1;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->a(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->a(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "persist.sys.aries.power_profile"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->aaD:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->finish()V

    .line 53
    return-void
.end method
