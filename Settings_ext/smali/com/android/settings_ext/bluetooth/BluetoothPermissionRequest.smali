.class public final Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field Nc:Ljava/lang/String;

.field Nd:Ljava/lang/String;

.field Ne:I

.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nc:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nd:Ljava/lang/String;

    return-void
.end method

.method private aS(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 185
    const-string v0, "Phonebook Access"

    .line 189
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 187
    const-string v0, "Message Access"

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private an(Z)V
    .locals 3

    .prologue
    .line 252
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nc:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 264
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private mg()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 198
    .line 201
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    if-eq v0, v7, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    .line 210
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 211
    if-nez v0, :cond_2

    .line 212
    invoke-virtual {v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ng()Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 216
    :cond_2
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 218
    iget v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    if-ne v3, v6, :cond_6

    .line 219
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mD()I

    move-result v0

    .line 221
    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    .line 232
    goto :goto_0

    .line 223
    :cond_3
    if-ne v0, v2, :cond_4

    .line 224
    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->an(Z)V

    move v0, v2

    .line 225
    goto :goto_1

    .line 226
    :cond_4
    if-ne v0, v6, :cond_5

    .line 227
    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->an(Z)V

    move v0, v2

    .line 228
    goto :goto_1

    .line 230
    :cond_5
    const-string v2, "BluetoothPermissionRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad phonebookPermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 232
    :cond_6
    iget v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    if-ne v3, v7, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mF()I

    move-result v0

    .line 235
    if-eqz v0, :cond_0

    .line 237
    if-ne v0, v2, :cond_7

    .line 238
    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->an(Z)V

    move v1, v2

    .line 239
    goto :goto_0

    .line 240
    :cond_7
    if-ne v0, v6, :cond_8

    .line 241
    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->an(Z)V

    move v1, v2

    .line 242
    goto :goto_0

    .line 244
    :cond_8
    const-string v2, "BluetoothPermissionRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad messagePermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const v10, 0x1080080

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 67
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    .line 69
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nc:Ljava/lang/String;

    .line 70
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nd:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    const-class v0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const/high16 v0, 0x18000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nc:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Nd:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 108
    :goto_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothPreferences;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    move-object v1, v2

    .line 105
    goto :goto_1

    .line 118
    :cond_3
    const v1, 0x3000001a

    const-string v4, "ConnectionAccessActivity"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 122
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    const-string v0, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_4
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    packed-switch v0, :pswitch_data_0

    .line 146
    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    const v0, 0x7f090105

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v2, v6, v9

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_2
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 164
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 166
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 169
    iget v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->aS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 171
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 136
    :pswitch_0
    const v0, 0x7f090106

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    const v0, 0x7f090107

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v2, v6, v9

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 141
    :pswitch_1
    const v0, 0x7f09010a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    const v0, 0x7f09010b

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v2, v6, v9

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 173
    :cond_5
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 177
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    .line 179
    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->Ne:I

    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionRequest;->aS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
