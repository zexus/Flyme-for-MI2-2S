.class Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings$3;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Pj:Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings;

.field final synthetic Pk:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings$3;->Pj:Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings;

    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings$3;->Pk:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings$3;->Pj:Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings$3;->Pk:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings;->a(Lcom/android/settings_ext/bluetooth/MiuiBluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    .line 301
    return-void
.end method
