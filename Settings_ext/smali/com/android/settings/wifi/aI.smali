.class Lcom/android/settings/wifi/aI;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusController.java"


# instance fields
.field final synthetic awU:Lcom/android/settings/wifi/aH;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aH;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/wifi/aI;->awU:Lcom/android/settings/wifi/aH;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/android/settings/wifi/aI;->awU:Lcom/android/settings/wifi/aH;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/aH;->a(Lcom/android/settings/wifi/aH;I)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/settings/wifi/aI;->awU:Lcom/android/settings/wifi/aH;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aH;->ad()V

    goto :goto_0
.end method
