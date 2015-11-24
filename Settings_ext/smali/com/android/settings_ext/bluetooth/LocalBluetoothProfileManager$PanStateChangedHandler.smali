.class Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# instance fields
.field final synthetic OX:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->OX:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    .line 265
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->OY:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/settings_ext/bluetooth/PanProfile;

    .line 270
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 271
    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ext/bluetooth/PanProfile;->c(Landroid/bluetooth/BluetoothDevice;I)V

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 273
    return-void
.end method
