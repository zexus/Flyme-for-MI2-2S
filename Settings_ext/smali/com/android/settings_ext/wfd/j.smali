.class Lcom/android/settings_ext/wfd/j;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/settings_ext/wfd/j;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/settings_ext/wfd/j;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->f(Lcom/android/settings_ext/wfd/WifiDisplaySettings;I)V

    .line 636
    :cond_0
    return-void
.end method