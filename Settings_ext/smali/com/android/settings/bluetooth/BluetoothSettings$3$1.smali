.class Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$1;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Nu:Landroid/view/View;

.field final synthetic Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$1;->Nu:Landroid/view/View;

    const v1, 0x7f100046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 518
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$1;->Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 519
    return-void
.end method
