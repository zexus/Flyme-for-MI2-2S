.class public final Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;
.super Ljava/lang/Object;
.source "MiuiBluetoothEnabler.java"


# instance fields
.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private Pc:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler$1;-><init>(Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->a(Landroid/preference/CheckBoxPreference;)V

    .line 55
    invoke-static {p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 59
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 63
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/preference/CheckBoxPreference;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    .line 90
    :goto_0
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v3, v1

    .line 91
    :goto_1
    if-ne v0, v4, :cond_3

    move v0, v1

    .line 92
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 94
    return-void

    :cond_2
    move v3, v2

    .line 90
    goto :goto_1

    :cond_3
    move v0, v2

    .line 91
    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method aR(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 128
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 131
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public au(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f09029a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->at(Z)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Pc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->aR(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
