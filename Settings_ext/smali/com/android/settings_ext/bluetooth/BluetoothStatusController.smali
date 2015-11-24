.class public Lcom/android/settings_ext/bluetooth/BluetoothStatusController;
.super Lcom/android/settings_ext/Z;
.source "BluetoothStatusController.java"


# instance fields
.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private Nx:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/Z;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 28
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothStatusController$1;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothStatusController;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    invoke-static {p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 45
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 46
    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method


# virtual methods
.method aR(I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->ca:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->ca:Landroid/widget/TextView;

    const v1, 0x7f090d85

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->ca:Landroid/widget/TextView;

    const v1, 0x7f090d84

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected ad()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->aR(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Nx:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Nx:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->aR(I)V

    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothStatusController;->Nx:Z

    goto :goto_0
.end method
