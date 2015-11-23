.class Lcom/android/settings/bluetooth/BluetoothEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# instance fields
.field final synthetic MJ:Lcom/android/settings/bluetooth/BluetoothEnabler;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 70
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->MJ:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->aR(I)V

    .line 72
    return-void
.end method
