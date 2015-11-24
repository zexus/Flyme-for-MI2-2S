.class Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic My:Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;->My:Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 290
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;->My:Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    iget-object v0, v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 294
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;->My:Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->b(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;->My:Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->a(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "mBluetoothReceiver already unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
