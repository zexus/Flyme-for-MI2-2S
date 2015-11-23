.class Lcom/android/settings_ext/bluetooth/BluetoothEventManager$PairingCancelHandler;
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
    .line 354
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$PairingCancelHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 356
    if-nez p3, :cond_1

    .line 357
    const-string v0, "BluetoothEventManager"

    const-string v1, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const v0, 0x7f09021b

    .line 361
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$PairingCancelHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/settings_ext/bluetooth/Utils;->d(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
