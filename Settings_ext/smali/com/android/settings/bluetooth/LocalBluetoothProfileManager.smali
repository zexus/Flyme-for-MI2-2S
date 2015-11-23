.class final Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# instance fields
.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

.field private final OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

.field private ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

.field private OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

.field private OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

.field private OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

.field private final OR:Lcom/android/settings_ext/bluetooth/HidProfile;

.field private OS:Lcom/android/settings_ext/bluetooth/OppProfile;

.field private final OT:Lcom/android/settings_ext/bluetooth/PanProfile;

.field private final OU:Lcom/android/settings_ext/bluetooth/PbapServerProfile;

.field private final OV:Ljava/util/Map;

.field private final OW:Ljava/util/Collection;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)V
    .locals 4

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OV:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OW:Ljava/util/Collection;

    .line 102
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 105
    iput-object p3, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    .line 106
    iput-object p4, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    .line 108
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    .line 111
    invoke-virtual {p2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a([Landroid/os/ParcelUuid;)V

    .line 119
    :cond_0
    new-instance v0, Lcom/android/settings_ext/bluetooth/HidProfile;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/settings_ext/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OR:Lcom/android/settings_ext/bluetooth/HidProfile;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OR:Lcom/android/settings_ext/bluetooth/HidProfile;

    const-string v1, "HID"

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/settings_ext/bluetooth/PanProfile;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OT:Lcom/android/settings_ext/bluetooth/PanProfile;

    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OT:Lcom/android/settings_ext/bluetooth/PanProfile;

    const-string v1, "PAN"

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local MAP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/android/settings_ext/bluetooth/MapProfile;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ext/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    const-string v1, "MAP"

    const-string v2, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OU:Lcom/android/settings_ext/bluetooth/PbapServerProfile;

    .line 138
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "LocalBluetoothProfileManager construction complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->b(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OV:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method private b(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->b(Ljava/lang/String;Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OV:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OW:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method a([Landroid/os/ParcelUuid;)V
    .locals 4

    .prologue
    .line 150
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Lcom/android/settings_ext/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ext/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_1

    .line 163
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    const-string v1, "A2DPSink"

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    if-nez v0, :cond_3

    .line 176
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ext/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    if-nez v0, :cond_4

    .line 189
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/android/settings_ext/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings_ext/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OV:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->lQ()V

    .line 200
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 183
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    if-eqz v0, :cond_4

    .line 195
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method declared-synchronized a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 360
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 361
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 368
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 377
    :cond_4
    sget-object v0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mj:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 383
    :cond_5
    sget-object v0, Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;->Mn:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_6

    .line 385
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 389
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OS:Lcom/android/settings_ext/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OR:Lcom/android/settings_ext/bluetooth/HidProfile;

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OR:Lcom/android/settings_ext/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OR:Lcom/android/settings_ext/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 402
    :cond_9
    if-eqz p5, :cond_a

    .line 403
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OT:Lcom/android/settings_ext/bluetooth/PanProfile;

    if-nez v0, :cond_c

    :cond_b
    if-eqz p5, :cond_d

    .line 406
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OT:Lcom/android/settings_ext/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OT:Lcom/android/settings_ext/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 410
    :cond_d
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lcom/android/settings_ext/bluetooth/MapProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OQ:Lcom/android/settings_ext/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/settings_ext/bluetooth/MapProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method aD(Ljava/lang/String;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method b(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OW:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method nh()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->a([Landroid/os/ParcelUuid;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OM:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->lR()Z

    .line 229
    return-void
.end method

.method ni()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OW:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 289
    invoke-interface {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method nj()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OW:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 296
    invoke-interface {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public declared-synchronized nk()Z
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->lC()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 316
    :goto_0
    monitor-exit p0

    return v0

    .line 308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-interface {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->lC()Z

    move-result v0

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OO:Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    .line 313
    if-eqz v0, :cond_2

    .line 314
    invoke-interface {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->lC()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 316
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nl()Lcom/android/settings_ext/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/A2dpProfile;->lC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->ON:Lcom/android/settings_ext/bluetooth/A2dpProfile;

    .line 323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nm()Lcom/android/settings_ext/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OP:Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method nn()Lcom/android/settings_ext/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->OU:Lcom/android/settings_ext/bluetooth/PbapServerProfile;

    return-object v0
.end method
