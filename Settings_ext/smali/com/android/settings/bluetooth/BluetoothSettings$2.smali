.class Lcom/android/settings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Nt:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->Nt:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->Nt:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->as(Z)V

    .line 297
    return-void
.end method
