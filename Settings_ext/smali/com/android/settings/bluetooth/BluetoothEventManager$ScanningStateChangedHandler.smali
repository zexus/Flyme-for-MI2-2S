.class Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private final mStarted:Z


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 178
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v1

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 183
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/BluetoothCallback;->al(Z)V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->MP:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->al(Z)V

    .line 187
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->al(Landroid/content/Context;)V

    .line 188
    return-void
.end method
