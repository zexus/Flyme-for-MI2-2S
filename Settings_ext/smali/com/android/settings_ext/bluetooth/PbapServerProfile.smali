.class final Lcom/android/settings_ext/bluetooth/PbapServerProfile;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;


# static fields
.field private static Me:Z


# instance fields
.field private Mg:Z

.field private Po:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Me:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    new-instance v1, Lcom/android/settings_ext/bluetooth/PbapServerProfile$PbapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settings_ext/bluetooth/PbapServerProfile;Lcom/android/settings_ext/bluetooth/PbapServerProfile$1;)V

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/PbapServerProfile;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Mg:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Me:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f0200d3

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f09023f

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->disconnect()Z

    move-result v0

    goto :goto_0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f090240

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Me:Z

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    if-eqz v0, :cond_1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Po:Landroid/bluetooth/BluetoothPbap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "PbapServerProfile"

    const-string v2, "Error cleaning up PBAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public lC()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/PbapServerProfile;->Mg:Z

    return v0
.end method

.method public lD()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public lF()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "PBAP Server"

    return-object v0
.end method
