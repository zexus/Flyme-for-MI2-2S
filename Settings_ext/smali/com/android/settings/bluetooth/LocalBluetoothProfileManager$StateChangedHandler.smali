.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic OX:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field final OY:Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OX:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OY:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 239
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OX:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 243
    if-nez v0, :cond_0

    .line 244
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateChangedHandler found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OX:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OX:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->c(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OX:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 248
    :cond_0
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 249
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 250
    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 252
    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OY:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->OY:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 256
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 257
    return-void
.end method
