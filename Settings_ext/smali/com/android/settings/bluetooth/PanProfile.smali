.class final Lcom/android/settings/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# static fields
.field private static Me:Z


# instance fields
.field private Mg:Z

.field private Pl:Landroid/bluetooth/BluetoothPan;

.field private final Pm:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/PanProfile;->Me:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pm:Ljava/util/HashMap;

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings/bluetooth/PanProfile;Lcom/android/settings/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/PanProfile;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/PanProfile;->Mg:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/settings/bluetooth/PanProfile;->Me:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f0200db

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 113
    const/4 v0, -0x1

    return v0
.end method

.method c(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pm:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 90
    iget-object v2, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->t(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f090241

    .line 132
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f09023e

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 138
    packed-switch v0, :pswitch_data_0

    .line 150
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->bd(I)I

    move-result v0

    :goto_0
    return v0

    .line 140
    :pswitch_1
    const v0, 0x7f090260

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->t(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const v0, 0x7f090259

    goto :goto_0

    .line 146
    :cond_0
    const v0, 0x7f090258

    goto :goto_0

    .line 138
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
    .line 172
    sget-boolean v0, Lcom/android/settings/bluetooth/PanProfile;->Me:Z

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    .line 175
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pl:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "PanProfile"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public lC()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Mg:Z

    return v0
.end method

.method public lD()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public lF()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x4

    return v0
.end method

.method t(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pm:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->Pm:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    :cond_1
    move v0, v2

    .line 167
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "PAN"

    return-object v0
.end method
