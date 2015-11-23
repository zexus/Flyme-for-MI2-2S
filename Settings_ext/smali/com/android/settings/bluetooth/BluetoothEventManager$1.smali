.class Lcom/android/settings/bluetooth/BluetoothEventManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventManager.java"


# instance fields
.field final synthetic MP:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$1;->MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 148
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$1;->MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1, p1, p2, v0}, Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 152
    :cond_0
    return-void
.end method
