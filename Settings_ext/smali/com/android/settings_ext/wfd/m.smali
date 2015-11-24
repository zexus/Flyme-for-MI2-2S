.class Lcom/android/settings_ext/wfd/m;
.super Landroid/preference/CheckBoxPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings_ext/wfd/m;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/settings_ext/wfd/m;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings_ext/wfd/m;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->b(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Z)Z

    .line 395
    iget-object v0, p0, Lcom/android/settings_ext/wfd/m;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ext/wfd/m;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->b(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->b(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Z)V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ext/wfd/m;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->b(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/m;->setChecked(Z)V

    .line 397
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
