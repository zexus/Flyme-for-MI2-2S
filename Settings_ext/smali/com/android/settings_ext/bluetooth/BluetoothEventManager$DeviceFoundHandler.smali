.class Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .prologue
    .line 194
    const-string v0, "android.bluetooth.device.extra.RSSI"

    const/16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    .line 195
    const-string v0, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 196
    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v4}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->b(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->e(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v1, v4, v5, p3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 202
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v4, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V

    .line 207
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(S)V

    .line 208
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->b(Landroid/bluetooth/BluetoothClass;)V

    .line 209
    invoke-virtual {v1, v3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->aC(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 211
    return-void
.end method
