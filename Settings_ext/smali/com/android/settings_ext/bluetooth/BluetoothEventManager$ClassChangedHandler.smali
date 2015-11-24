.class Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ClassChangedHandler;
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
    .line 340
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ClassChangedHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ClassChangedHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->j(Landroid/bluetooth/BluetoothDevice;)V

    .line 344
    return-void
.end method
