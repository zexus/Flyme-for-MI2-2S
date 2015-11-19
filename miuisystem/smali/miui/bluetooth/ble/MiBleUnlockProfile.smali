.class public Lmiui/bluetooth/ble/MiBleUnlockProfile;
.super Lmiui/bluetooth/ble/MiBleProfile;
.source "MiBleUnlockProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    .line 30
    return-void
.end method


# virtual methods
.method public registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;

    invoke-direct {v1, p0, p1}, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;-><init>(Lmiui/bluetooth/ble/MiBleUnlockProfile;Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z

    goto :goto_0
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->authorize(Ljava/lang/String;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    :goto_0
    return v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRssiThreshold(I)Z
    .locals 4
    .param p1, "rssi"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setRssiThreshold(Ljava/lang/String;Landroid/os/ParcelUuid;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlock()Z
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle;->authenticate(Ljava/lang/String;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterUnlockListener()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterPropertyNotifyCallback(I)Z

    .line 83
    return-void
.end method
