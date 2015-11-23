.class Lcom/android/settings/wifi/v;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWifiEnabler.java"


# instance fields
.field final synthetic atk:Lcom/android/settings/wifi/u;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/u;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/wifi/v;->atk:Lcom/android/settings/wifi/u;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/v;->atk:Lcom/android/settings/wifi/u;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/u;->a(Lcom/android/settings/wifi/u;I)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/v;->atk:Lcom/android/settings/wifi/u;

    invoke-static {v0}, Lcom/android/settings/wifi/u;->a(Lcom/android/settings/wifi/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/settings/wifi/v;->atk:Lcom/android/settings/wifi/u;

    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/u;->a(Lcom/android/settings/wifi/u;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/v;->atk:Lcom/android/settings/wifi/u;

    invoke-static {v1}, Lcom/android/settings/wifi/u;->a(Lcom/android/settings/wifi/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/wifi/v;->atk:Lcom/android/settings/wifi/u;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/u;->a(Lcom/android/settings/wifi/u;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method
