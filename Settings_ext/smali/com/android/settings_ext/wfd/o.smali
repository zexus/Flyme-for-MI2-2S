.class Lcom/android/settings_ext/wfd/o;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings_ext/wfd/o;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 425
    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings_ext/wfd/o;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings_ext/wfd/o;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ext/wfd/WifiDisplaySettings;I)I

    .line 427
    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/o;->setSummary(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/wfd/o;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ext/wfd/o;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    iget-object v2, p0, Lcom/android/settings_ext/wfd/o;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->f(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    :cond_0
    return-void
.end method
