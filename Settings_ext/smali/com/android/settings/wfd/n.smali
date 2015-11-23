.class Lcom/android/settings/wfd/n;
.super Landroid/preference/CheckBoxPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic aoA:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 408
    iget-object v0, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->d(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 413
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/n;->setChecked(Z)V

    .line 414
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/n;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
