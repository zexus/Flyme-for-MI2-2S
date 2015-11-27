.class final Lcom/android/settings_ext/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;


# static fields
.field private static Me:Z


# instance fields
.field private Mg:Z

.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

.field private final Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

.field private OG:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ext/bluetooth/HidProfile;->Me:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 87
    iput-object p3, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    .line 88
    iput-object p4, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 89
    new-instance v0, Lcom/android/settings_ext/bluetooth/HidProfile$InputDeviceServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/settings_ext/bluetooth/HidProfile;Lcom/android/settings_ext/bluetooth/HidProfile$1;)V

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/HidProfile;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mg:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/settings_ext/bluetooth/HidProfile;->Me:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/HidProfile;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mi:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static c(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 182
    const v0, 0x7f0200da

    :goto_0
    return v0

    .line 178
    :sswitch_0
    const v0, 0x7f0200fc

    goto :goto_0

    .line 180
    :sswitch_1
    const v0, 0x7f0200dc

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/HidProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/bluetooth/HidProfile;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const v0, 0x7f0200fc

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings_ext/bluetooth/HidProfile;->c(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p2, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f09023d

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/HidProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 155
    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/Utils;->bd(I)I

    move-result v0

    :goto_0
    return v0

    .line 157
    :pswitch_1
    const v0, 0x7f09025f

    goto :goto_0

    .line 160
    :pswitch_2
    const v0, 0x7f090257

    goto :goto_0

    .line 155
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
    .line 187
    sget-boolean v0, Lcom/android/settings_ext/bluetooth/HidProfile;->Me:Z

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_1

    .line 190
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->OG:Landroid/bluetooth/BluetoothInputDevice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "HidProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public lC()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/HidProfile;->Mg:Z

    return v0
.end method

.method public lD()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public lF()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "HID"

    return-object v0
.end method