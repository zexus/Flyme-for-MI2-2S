.class Lcom/android/settings_ext/bluetooth/BluetoothEventManager$NameChangedHandler;
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
    .line 240
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$NameChangedHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$NameChangedHandler;->MP:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->g(Landroid/bluetooth/BluetoothDevice;)V

    .line 244
    return-void
.end method
