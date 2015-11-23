.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# instance fields
.field final synthetic Na:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Na:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Na:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Na:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 87
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Na:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->b(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Na:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0
.end method
