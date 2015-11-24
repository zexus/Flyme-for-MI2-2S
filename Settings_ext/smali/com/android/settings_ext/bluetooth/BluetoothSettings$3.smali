.class Lcom/android/settings_ext/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Nt:Lcom/android/settings_ext/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3;->Nt:Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    .line 459
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() called for other View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    .line 466
    new-instance v2, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 467
    const-string v1, "device"

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3;->Nt:Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09024a

    const/4 v6, 0x0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ext/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
