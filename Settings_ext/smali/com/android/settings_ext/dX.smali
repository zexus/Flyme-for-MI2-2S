.class Lcom/android/settings_ext/dX;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# instance fields
.field final synthetic qB:Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ext/dX;->qB:Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 3

    .prologue
    .line 96
    # getter for: Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/dX;->qB:Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->e(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dX;->qB:Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->d(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/dX;->qB:Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;Z)Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dX;->qB:Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;Z)Z

    goto :goto_0
.end method