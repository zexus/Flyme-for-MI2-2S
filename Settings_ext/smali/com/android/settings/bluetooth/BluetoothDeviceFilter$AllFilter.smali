.class final Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AllFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method
