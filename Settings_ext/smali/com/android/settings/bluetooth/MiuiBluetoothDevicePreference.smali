.class public Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;
.super Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.source "MiuiBluetoothDevicePreference.java"


# instance fields
.field Pb:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Pb:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    .line 14
    return-void
.end method


# virtual methods
.method public i(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Mu:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 17
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Mu:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->lH()V

    .line 19
    return-void
.end method

.method protected lM()I
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Pb:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Pb:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pg:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Pb:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->lG()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    const v0, 0x7f0200c9

    .line 31
    :goto_0
    return v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->Pb:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->lG()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_1

    .line 28
    const v0, 0x7f0200ca

    goto :goto_0

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lM()I

    move-result v0

    goto :goto_0
.end method
