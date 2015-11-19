.class public Lmiui/bluetooth/ble/MiBleDeviceManager;
.super Ljava/lang/Object;
.source "MiBleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_EVENT:Ljava/lang/String; = "miui.bluetooth.BLE_EVENT"

.field public static final BLE_EVENT_AWAKE:I = 0x5

.field public static final BLE_EVENT_CLICK:I = 0x1

.field public static final BLE_EVENT_CUSTOM:I = 0x100

.field public static final BLE_EVENT_DOUBLE_CLICK:I = 0x2

.field public static final BLE_EVENT_LINK_LOSS:I = 0x6

.field public static final BLE_EVENT_LONG_CLICK:I = 0x3

.field public static final BLE_EVENT_SLEEP:I = 0x4

.field public static final BLE_EVENT_UNKNOWN:I = 0x0

.field public static final BLE_IMMEDIATE_ALERT_PERMISSION:Ljava/lang/String; = "miui.permission.BLE_IMMEDIATE_ALERT"

.field private static final DBG:Z = true

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "miui.bluetooth.extras.DEVICE"

.field public static final EXTRA_EVENT:Ljava/lang/String; = "miui.bluetooth.extras.EVENT"

.field public static final EXTRA_EVENT_DATA:Ljava/lang/String; = "miui.bluetooth.extras.EVENT_DATA"

.field public static final SERVICE_VERSION_UNKNOWN:I = -0x1

.field public static final SETTING_BIND_DEVICE:Ljava/lang/String; = "device_type"

.field public static final SETTING_IMMEDIATE_ALERT_ALARM_ENABLED:Ljava/lang/String; = "alert_alarm_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_DELAYED:Ljava/lang/String; = "alert_incall_delayed"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_ENABLED:Ljava/lang/String; = "alert_incall_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_IN_CONTACTS_ENABLED:Ljava/lang/String; = "alert_incall_enabled_in_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_NO_CONTACTS_ENABLED:Ljava/lang/String; = "alert_incall_enabled_no_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_ENABLED:Ljava/lang/String; = "alert_sms_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_IN_CONTACTS_ENABLED:Ljava/lang/String; = "alert_sms_enabled_in_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_NO_CONTACTS_ENABLED:Ljava/lang/String; = "alert_sms_enabled_no_contacts"

.field private static final TAG:Ljava/lang/String; = "MiBleDeviceManager"

.field public static final TYPE_MI_BAND:I = 0x1

.field public static final TYPE_MI_KEY:I = 0x45

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mClientId:Landroid/os/ParcelUuid;

.field private mContext:Landroid/content/Context;

.field private mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

.field private mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleDeviceManager$1;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    .line 155
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mToken:Landroid/os/IBinder;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lmiui/bluetooth/ble/MiBleDeviceManager;Lmiui/bluetooth/ble/IMiBleDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleDeviceManager;
    .param p1, "x1"    # Lmiui/bluetooth/ble/IMiBleDeviceManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->setServie(Lmiui/bluetooth/ble/IMiBleDeviceManager;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleDeviceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    return-object v0
.end method

.method private checkReady()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "MiBleDeviceManager"

    const-string v1, "Manager is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    .prologue
    .line 176
    new-instance v0, Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct {v0, p0, p1}, Lmiui/bluetooth/ble/MiBleDeviceManager;-><init>(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)V

    .line 177
    .local v0, "manager":Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-direct {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->init()V

    .line 178
    return-object v0
.end method

.method public static getSettingKeyForEvent(I)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # I

    .prologue
    .line 561
    const-string v0, "miui_ble_event_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 182
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.bluetooth.mible.DeviceManagerService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.ble.app.MiBleDeviceManagerService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 187
    .local v2, "ret":Z
    if-nez v2, :cond_0

    .line 188
    const-string v3, "MiBleDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind manager service error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    if-eqz v3, :cond_0

    .line 190
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lmiui/bluetooth/ble/MiBleDeviceManager$2;

    invoke-direct {v4, p0}, Lmiui/bluetooth/ble/MiBleDeviceManager$2;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_0
    return-void
.end method

.method private setServie(Lmiui/bluetooth/ble/IMiBleDeviceManager;)V
    .locals 0
    .param p1, "servie"    # Lmiui/bluetooth/ble/IMiBleDeviceManager;

    .prologue
    .line 162
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    .line 163
    return-void
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    :try_start_0
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    const-string v3, "device_type"

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiBleDeviceManager"

    const-string v2, "Close manager service error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBoundDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getBoundDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceType(Ljava/lang/String;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 416
    :goto_0
    return v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 509
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 516
    :goto_0
    return-object v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceVersion()I
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getServiceVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSettingsBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    :try_start_0
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v2, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSettingsInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerAppForBleEvent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 472
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getSettingKeyForEvent(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 480
    :goto_0
    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    const/4 v1, 0x0

    .line 527
    if-nez p3, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 531
    :cond_1
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    :try_start_0
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 277
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 303
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    :try_start_0
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v2, v1

    .line 260
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public startScanDevice(ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 5
    .param p1, "property"    # I
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 432
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    new-instance v4, Lmiui/bluetooth/ble/MiBleDeviceManager$3;

    invoke-direct {v4, p0, p1, p2}, Lmiui/bluetooth/ble/MiBleDeviceManager$3;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    invoke-interface {v1, v2, v3, p1, v4}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScanDevice()V
    .locals 3

    .prologue
    .line 454
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->stopScanDevice(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindDevice(Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->deleteSettings(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterAppForBleEvent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 491
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getSettingKeyForEvent(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 498
    :goto_0
    return v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 549
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 557
    :goto_0
    return v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 557
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
