.class Lcom/android/settings/bluetooth/GattProfile$2;
.super Ljava/lang/Object;
.source "GattProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Nv:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic OB:Lcom/android/settings/bluetooth/GattProfile;

.field final synthetic OC:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/GattProfile;Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/bluetooth/GattProfile$2;->OB:Lcom/android/settings/bluetooth/GattProfile;

    iput-object p2, p0, Lcom/android/settings/bluetooth/GattProfile$2;->OC:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/GattProfile$2;->Nv:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/GattProfile$2;->OB:Lcom/android/settings/bluetooth/GattProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GattProfile$2;->OC:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/GattProfile$2;->OB:Lcom/android/settings/bluetooth/GattProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/GattProfile;->a(Lcom/android/settings/bluetooth/GattProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/GattProfile$2;->Nv:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->g(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 180
    :cond_1
    return-void
.end method
