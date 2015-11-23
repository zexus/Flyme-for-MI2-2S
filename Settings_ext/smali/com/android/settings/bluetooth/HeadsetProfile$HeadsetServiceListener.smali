.class final Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic OF:Lcom/android/settings/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/HeadsetProfile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/HeadsetProfile;Lcom/android/settings/bluetooth/HeadsetProfile$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    .prologue
    .line 63
    # getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->Me:Z
    invoke-static {}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 69
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->b(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    const-string v1, "HeadsetProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HeadsetProfile found new device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->b(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetProfile;->c(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v4}, Lcom/android/settings/bluetooth/HeadsetProfile;->d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 77
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->ni()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z

    .line 82
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 85
    # getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->Me:Z
    invoke-static {}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nj()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->OF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z

    .line 88
    return-void
.end method
