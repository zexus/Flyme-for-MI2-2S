.class public final Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static OK:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;


# instance fields
.field private final MV:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

.field private Nz:Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;

.field private OL:Landroid/content/Context;

.field private final OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 77
    new-instance v0, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->MV:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    .line 78
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->MV:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    .line 80
    new-instance v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->MV:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 82
    return-void
.end method

.method public static declared-synchronized ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;
    .locals 4

    .prologue
    .line 52
    const-class v1, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OK:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mV()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 62
    :goto_0
    monitor-exit v1

    return-object v0

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    invoke-direct {v3, v0, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OK:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    .line 62
    :cond_1
    sget-object v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OK:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized aj(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OL:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OL:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OL:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Nz:Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;

    .line 67
    return-void
.end method

.method public na()Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Nz:Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;

    return-object v0
.end method

.method public nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method public nc()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OL:Landroid/content/Context;

    return-object v0
.end method

.method nd()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OL:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ne()Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->MV:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method nf()Lcom/android/settings_ext/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method ng()Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method
