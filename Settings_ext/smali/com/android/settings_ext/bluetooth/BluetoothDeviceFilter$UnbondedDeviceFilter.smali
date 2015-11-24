.class final Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
