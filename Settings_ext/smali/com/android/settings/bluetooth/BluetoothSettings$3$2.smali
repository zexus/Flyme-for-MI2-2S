.class Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$2;->Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mn()V

    .line 527
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$2;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$2;->Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020128

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ext/bluetooth/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 531
    return-void
.end method
