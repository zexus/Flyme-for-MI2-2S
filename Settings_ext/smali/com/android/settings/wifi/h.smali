.class Lcom/android/settings_ext/wifi/h;
.super Ljava/lang/Object;
.source "MiuiAccessPoint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private asR:Lcom/android/settings_ext/wifi/AccessPoint;

.field private asS:Lcom/android/settings_ext/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/wifi/AccessPoint;Lcom/android/settings_ext/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/android/settings_ext/wifi/h;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 331
    iput-object p2, p0, Lcom/android/settings_ext/wifi/h;->asS:Lcom/android/settings_ext/SettingsPreferenceFragment;

    .line 332
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 336
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 337
    iget-object v0, p0, Lcom/android/settings_ext/wifi/h;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0, v4}, Lcom/android/settings_ext/wifi/AccessPoint;->k(Landroid/os/Bundle;)V

    .line 338
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "ssid"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/h;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings_ext/wifi/h;->asS:Lcom/android/settings_ext/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/h;->asS:Lcom/android/settings_ext/SettingsPreferenceFragment;

    const-class v2, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 341
    return-void
.end method
