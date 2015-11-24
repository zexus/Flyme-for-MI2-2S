.class final Lcom/android/settings_ext/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;


# static fields
.field private static Me:Z

.field static final Mj:[Landroid/os/ParcelUuid;


# instance fields
.field private Mf:Landroid/bluetooth/BluetoothA2dp;

.field private Mg:Z

.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

.field private final Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    sput-boolean v3, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Me:Z

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mj:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 92
    iput-object p3, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    .line 93
    iput-object p4, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings_ext/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settings_ext/bluetooth/A2dpProfile;Lcom/android/settings_ext/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/A2dpProfile;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mg:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Me:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/A2dpProfile;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/A2dpProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/bluetooth/A2dpProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f0200d5

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 159
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-eqz p2, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 119
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "A2dpProfile"

    const-string v1, "Ignoring Connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 126
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 188
    const v0, 0x7f09023a

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/A2dpProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 193
    packed-switch v0, :pswitch_data_0

    .line 201
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/Utils;->bd(I)I

    move-result v0

    :goto_0
    return v0

    .line 195
    :pswitch_1
    const v0, 0x7f09025a

    goto :goto_0

    .line 198
    :pswitch_2
    const v0, 0x7f090250

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Me:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public lC()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mg:Z

    return v0
.end method

.method public lD()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method lE()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/A2dpProfile;->Mf:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public lF()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "A2DP"

    return-object v0
.end method
