.class final Lcom/android/settings_ext/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# instance fields
.field private final MK:Landroid/content/IntentFilter;

.field private final ML:Landroid/content/IntentFilter;

.field private final MM:Ljava/util/Map;

.field private final MN:Ljava/util/Collection;

.field private final MO:Landroid/content/BroadcastReceiver;

.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

.field private Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    .line 141
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MO:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 77
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MK:Landroid/content/IntentFilter;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->ML:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MM:Ljava/util/Map;

    .line 81
    iput-object p3, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 87
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 88
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 91
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MO:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MK:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MM:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method private static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    if-eqz v2, :cond_0

    .line 132
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic ah(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method private d(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/BluetoothCallback;

    .line 217
    invoke-interface {v0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothCallback;->a(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 219
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

    .line 220
    return-void
.end method

.method static synthetic e(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method


# virtual methods
.method a(Lcom/android/settings_ext/bluetooth/BluetoothCallback;)V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 72
    return-void
.end method

.method a(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MM:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MK:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method b(Lcom/android/settings_ext/bluetooth/BluetoothCallback;)V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MN:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MM:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->ML:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method lQ()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->MO:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->ML:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method lR()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 387
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 388
    if-nez v1, :cond_0

    .line 402
    :goto_0
    return v0

    .line 393
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 394
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 395
    if-nez v3, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 397
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->d(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V

    .line 398
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 400
    goto :goto_1

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method
