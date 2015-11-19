.class public Lmiui/bluetooth/ble/MiBleProfile;
.super Ljava/lang/Object;
.source "MiBleProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;,
        Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_MIBLE_SERVICE:Ljava/lang/String; = "miui.bluetooth.mible.Service"

.field public static final ACTION_SELECT_DEVICE:Ljava/lang/String; = "miui.bluetooth.action.PICK_DEVICE"

.field protected static final DBG:Z = true

.field public static final EXTRA_MIBLE_PROPERTY:Ljava/lang/String; = "miui.bluetooth.extra.MIBLE_PROPERTY"

.field private static final MSG_PROPERTY:I = 0x2

.field private static final MSG_STATUS:I = 0x1

.field public static final PROPERTY_ALARM_CLOCK:I = 0x6a

.field public static final PROPERTY_BATTERY:I = 0x6

.field public static final PROPERTY_DEVICE_CONTROL:I = 0x2

.field public static final PROPERTY_DEVICE_INFO:I = 0x65

.field public static final PROPERTY_FIRMWARE:I = 0x3

.field public static final PROPERTY_IMMEDIATE_ALERT:I = 0x5

.field public static final PROPERTY_LINK_LOSS:I = 0x7

.field public static final PROPERTY_MI_BAND_EVENT:I = 0x6c

.field public static final PROPERTY_MI_KEY:I = 0x6b

.field public static final PROPERTY_PAY:I = 0x4

.field public static final PROPERTY_SPORT_ACTIVITIES:I = 0x68

.field public static final PROPERTY_SPORT_STEPS:I = 0x67

.field public static final PROPERTY_THEME_COLOR:I = 0x69

.field public static final PROPERTY_UNDEFINED:I = 0x0

.field public static final PROPERTY_UNLOCK:I = 0x1

.field public static final PROPERTY_USER_INFO:I = 0x66

.field public static final SERVICE_VERSION_UNKNOWN:I = -0x1

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_CONNECTING:I = 0x1

.field public static final STATUS_DISCONNECTED:I = 0x0

.field public static final STATUS_DISCONNECTING:I = 0x3

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_READY:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MiBleProfile"


# instance fields
.field protected mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field protected final mClientId:Landroid/os/ParcelUuid;

.field private mConnectWhenBind:Z

.field protected mContext:Landroid/content/Context;

.field protected mDevice:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mProfileState:I

.field private mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

.field private mPropertyCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

.field private mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    .line 207
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    .line 209
    iput-boolean v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    .line 211
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    .line 215
    iput v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    .line 217
    new-instance v1, Lmiui/bluetooth/ble/MiBleProfile$1;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/MiBleProfile$1;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 247
    new-instance v1, Lmiui/bluetooth/ble/MiBleProfile$2;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/MiBleProfile$2;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    .line 264
    new-instance v1, Lmiui/bluetooth/ble/MiBleProfile$3;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/MiBleProfile$3;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    .line 288
    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    .line 290
    iput-object p3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 292
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 293
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lmiui/bluetooth/ble/MiBleProfile$4;

    invoke-direct {v2, p0}, Lmiui/bluetooth/ble/MiBleProfile$4;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    .line 320
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$002(Lmiui/bluetooth/ble/MiBleProfile;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    return p1
.end method

.method static synthetic access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/bluetooth/ble/MiBleProfile;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .prologue
    .line 27
    iget-boolean v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/bluetooth/ble/MiBleProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 342
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-nez v3, :cond_1

    .line 343
    iput-boolean v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    .line 344
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.bluetooth.mible.Service"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.ble.BluetoothMiBleService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v3, "com.android.bluetooth"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 348
    .local v2, "ret":Z
    if-nez v2, :cond_0

    .line 349
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    :try_start_0
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v3, v4, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle;->connect(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 356
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 362
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-nez v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 367
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle;->unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 368
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 371
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 374
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)[B
    .locals 4
    .param p1, "property"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_0

    .line 394
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 4

    .prologue
    .line 462
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleProfile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getRssi(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 469
    :goto_0
    return v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/high16 v1, -0x80000000

    goto :goto_0
.end method

.method public getServiceVersion()I
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    invoke-interface {v1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getServiceVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 330
    :goto_0
    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 379
    iget v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportProperty(I)Z
    .locals 4
    .param p1, "property"    # I

    .prologue
    const/4 v1, 0x0

    .line 384
    :try_start_0
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->supportProperty(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z
    .locals 6
    .param p1, "property"    # I
    .param p2, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "result":Z
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v2, :cond_0

    .line 429
    :try_start_0
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v2, v3, v4, p1, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle;->registerPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 436
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 437
    const/4 v2, 0x0

    .line 440
    :goto_1
    return v2

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setProfileStateChangeCallback(Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .prologue
    .line 334
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 335
    return-void
.end method

.method public setProperty(I[B)Z
    .locals 4
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    .line 404
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_0

    .line 406
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, p1, p2}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    :goto_0
    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 412
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterPropertyNotifyCallback(I)Z
    .locals 6
    .param p1, "property"    # I

    .prologue
    .line 445
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 447
    const/4 v1, 0x1

    .line 448
    .local v1, "result":Z
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 450
    :try_start_0
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v2, v3, v4, p1, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle;->unregisterPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
