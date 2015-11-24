.class public Lcom/android/settings_ext/bluetooth/GattProfile;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "GattProfile.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

.field private final Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

.field private OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field private Ox:Landroid/bluetooth/BluetoothManager;

.field private Oy:Ljava/util/HashMap;

.field private Oz:Ljava/util/List;

.field private eo:Landroid/security/MiuiLockPatternUtils;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/settings_ext/bluetooth/GattProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Lmiui/bluetooth/ble/MiBleDeviceManager;)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oz:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/android/settings_ext/bluetooth/GattProfile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/bluetooth/GattProfile$1;-><init>(Lcom/android/settings_ext/bluetooth/GattProfile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    .line 64
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 66
    iput-object p3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    .line 67
    iput-object p4, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 68
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Ox:Landroid/bluetooth/BluetoothManager;

    .line 69
    iput-object p5, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oy:Ljava/util/HashMap;

    .line 71
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 72
    const-string v0, "content://com.android.bluetooth.ble.settingsprovider/devices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mUri:Landroid/net/Uri;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/GattProfile;->mU()V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/GattProfile;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method private static a(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 332
    if-nez p0, :cond_0

    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 335
    :cond_0
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string v3, "refresh"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 336
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 340
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Ox:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 202
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 203
    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 205
    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/settings_ext/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    const-string v2, "connectGatt() return null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 230
    :goto_0
    return v0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/GattProfile;->a(Landroid/bluetooth/BluetoothGatt;)Z

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0, p0, v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;I)V

    :cond_2
    move v0, v2

    .line 230
    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/GattProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 213
    if-eq v3, v2, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_4
    move v0, v2

    .line 215
    goto :goto_0

    .line 217
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v3

    .line 218
    if-nez v3, :cond_1

    .line 220
    sget-object v0, Lcom/android/settings_ext/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    const-string v2, "__clientConnect return false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 221
    goto :goto_0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 236
    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/settings_ext/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    const-string v2, "disconnectGatt() return null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/GattProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 246
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_2

    .line 248
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_2

    .line 251
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;I)V

    :cond_2
    move v0, v2

    .line 255
    goto :goto_0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 82
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    return-void
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public lC()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public lD()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public lF()I
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x7

    return v0
.end method

.method public declared-synchronized mU()V
    .locals 8

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 112
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 113
    if-nez v3, :cond_0

    .line 114
    sget-object v3, Lcom/android/settings_ext/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GattProfile get bluetooth unlock device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 118
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getBoundDevices()Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 127
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, v4}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 128
    if-nez v1, :cond_3

    .line 129
    sget-object v1, Lcom/android/settings_ext/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GattProfile found new device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v6, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 131
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    .line 132
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v5, v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v0}, Lmiui/bluetooth/ble/ScanResult;->getScanRecord()Lmiui/bluetooth/ble/ScanRecord;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0}, Lmiui/bluetooth/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 142
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oz:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 149
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 150
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_5

    .line 153
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 164
    if-eqz v3, :cond_7

    .line 166
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ext/bluetooth/GattProfile$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/settings_ext/bluetooth/GattProfile$2;-><init>(Lcom/android/settings_ext/bluetooth/GattProfile;Landroid/bluetooth/BluetoothDevice;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 186
    :cond_8
    iput-object v2, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oz:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    monitor-exit p0

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 390
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 378
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 384
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 363
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;I)V

    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    goto :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .prologue
    .line 394
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 395
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 400
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 410
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    .line 405
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 372
    return-void
.end method

.method public q(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile;->Oz:Ljava/util/List;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public r(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/GattProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
