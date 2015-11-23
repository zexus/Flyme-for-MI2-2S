.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic MG:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->MG:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->MG:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->a(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 99
    return-void
.end method
