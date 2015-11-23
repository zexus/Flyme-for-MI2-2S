.class final Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic Pa:Lcom/android/settings_ext/bluetooth/MapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/bluetooth/MapProfile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/MapProfile;Lcom/android/settings_ext/bluetooth/MapProfile$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settings_ext/bluetooth/MapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    .prologue
    .line 63
    # getter for: Lcom/android/settings_ext/bluetooth/MapProfile;->Me:Z
    invoke-static {}, Lcom/android/settings_ext/bluetooth/MapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothMap;

    invoke-static {v0, p2}, Lcom/android/settings_ext/bluetooth/MapProfile;->a(Lcom/android/settings_ext/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/MapProfile;->a(Lcom/android/settings_ext/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

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
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/MapProfile;->b(Lcom/android/settings_ext/bluetooth/MapProfile;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    const-string v1, "MapProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MapProfile found new device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/MapProfile;->b(Lcom/android/settings_ext/bluetooth/MapProfile;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v3}, Lcom/android/settings_ext/bluetooth/MapProfile;->c(Lcom/android/settings_ext/bluetooth/MapProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v4}, Lcom/android/settings_ext/bluetooth/MapProfile;->d(Lcom/android/settings_ext/bluetooth/MapProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;I)V

    .line 77
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/MapProfile;->d(Lcom/android/settings_ext/bluetooth/MapProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ni()V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/MapProfile;->a(Lcom/android/settings_ext/bluetooth/MapProfile;Z)Z

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
    # getter for: Lcom/android/settings_ext/bluetooth/MapProfile;->Me:Z
    invoke-static {}, Lcom/android/settings_ext/bluetooth/MapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/MapProfile;->d(Lcom/android/settings_ext/bluetooth/MapProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->nj()V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MapProfile$MapServiceListener;->Pa:Lcom/android/settings_ext/bluetooth/MapProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/MapProfile;->a(Lcom/android/settings_ext/bluetooth/MapProfile;Z)Z

    .line 88
    return-void
.end method
