.class public Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.super Lcom/android/settings/bluetooth/BluetoothSettings;
.source "MiuiBluetoothSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field private Pe:Lcom/android/settings/dV;

.field private Pf:Lmiui/preference/ValuePreference;

.field Pg:Z

.field private Ph:Lcom/android/settings/bluetooth/GattProfile;

.field private Pi:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pg:Z

    .line 118
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pi:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/GattProfile;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->s(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private no()V
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$System;->setDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pf:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 142
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private s(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    const-string v1, "com.android.bluetooth.ble.DeviceProfileFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v1, "com.android.bluetooth.ble.device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->r(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 257
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/GattProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some unknown ble device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :cond_2
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HID over BLE device found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NM:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->Mq:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    if-ne v0, v1, :cond_4

    .line 267
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->h(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_0

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->h(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_0

    .line 279
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_0
.end method

.method public aL(I)V
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->ar(Z)V

    .line 229
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->mU()V

    .line 232
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->aT(I)V

    .line 233
    return-void
.end method

.method protected aT(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->no()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->aT(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090bad

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    return-void

    .line 151
    :goto_2
    :pswitch_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 152
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    if-ltz v3, :cond_1

    .line 154
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->resume()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->b(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method ar(Z)V
    .locals 1

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pe:Lcom/android/settings/dV;

    invoke-virtual {v0}, Lcom/android/settings/dV;->et()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pe:Lcom/android/settings/dV;

    invoke-virtual {v0}, Lcom/android/settings/dV;->stopAnimation()V

    goto :goto_0
.end method

.method d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lG()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lG()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->s(Landroid/bluetooth/BluetoothDevice;)V

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lG()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Landroid/view/View$OnClickListener;)V

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method h(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NP:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 185
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    .line 189
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->i(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->h(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method mh()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->mh()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 101
    const-string v0, "bluetooth_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nj:Landroid/preference/CheckBoxPreference;

    .line 102
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nj:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ni:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    .line 103
    const-string v0, "bluetooth_device_name_edit"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pf:Lmiui/preference/ValuePreference;

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pf:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pf:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pi:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 106
    const-string v0, "bluetooth_device_searchable"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 52
    new-instance v0, Lcom/android/settings/dV;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pe:Lcom/android/settings/dV;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    invoke-static {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ng()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/GattProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ph:Lcom/android/settings/bluetooth/GattProfile;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 205
    :goto_1
    const v3, 0x7f090221

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 207
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Pe:Lcom/android/settings/dV;

    invoke-virtual {v4}, Lcom/android/settings/dV;->eT()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 208
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 209
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->ar(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 204
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->OA:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->close()V

    .line 78
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDestroy()V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->pause()V

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onPause()V

    .line 95
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "bluetooth_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Ni:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->au(Z)V

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Nk:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->resume()V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onResume()V

    .line 87
    return-void
.end method
