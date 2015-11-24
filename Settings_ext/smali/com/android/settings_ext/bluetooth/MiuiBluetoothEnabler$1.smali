.class Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothEnabler.java"


# instance fields
.field final synthetic Pd:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler$1;->Pd:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 46
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler$1;->Pd:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->aR(I)V

    .line 48
    return-void
.end method
