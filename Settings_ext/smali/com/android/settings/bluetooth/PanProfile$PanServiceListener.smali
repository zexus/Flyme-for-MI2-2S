.class final Lcom/android/settings_ext/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic Pn:Lcom/android/settings_ext/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/bluetooth/PanProfile;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/PanProfile$PanServiceListener;->Pn:Lcom/android/settings_ext/bluetooth/PanProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/PanProfile;Lcom/android/settings_ext/bluetooth/PanProfile$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings_ext/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .prologue
    .line 56
    # getter for: Lcom/android/settings_ext/bluetooth/PanProfile;->Me:Z
    invoke-static {}, Lcom/android/settings_ext/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PanProfile$PanServiceListener;->Pn:Lcom/android/settings_ext/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, p2}, Lcom/android/settings_ext/bluetooth/PanProfile;->a(Lcom/android/settings_ext/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PanProfile$PanServiceListener;->Pn:Lcom/android/settings_ext/bluetooth/PanProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/PanProfile;->a(Lcom/android/settings_ext/bluetooth/PanProfile;Z)Z

    .line 59
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 62
    # getter for: Lcom/android/settings_ext/bluetooth/PanProfile;->Me:Z
    invoke-static {}, Lcom/android/settings_ext/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/PanProfile$PanServiceListener;->Pn:Lcom/android/settings_ext/bluetooth/PanProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/PanProfile;->a(Lcom/android/settings_ext/bluetooth/PanProfile;Z)Z

    .line 64
    return-void
.end method
