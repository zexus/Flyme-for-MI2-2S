.class public final Lcom/android/settings_ext/bluetooth/DevicePickerFragment;
.super Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private NR:Z

.field private NS:Ljava/lang/String;

.field private NT:Ljava/lang/String;

.field private NU:Z

.field private NV:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private l(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NV:Z

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NS:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    .prologue
    .line 150
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NN:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->l(Landroid/bluetooth/BluetoothDevice;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->finish()V

    .line 157
    :cond_0
    return-void
.end method

.method public aL(I)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->aL(I)V

    .line 163
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->as(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method d(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mX()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NN:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothPreferences;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lG()Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NR:Z

    if-nez v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NN:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->l(Landroid/bluetooth/BluetoothDevice;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->finish()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->d(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method e(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0400b1

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 69
    return-void
.end method

.method mh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NR:Z

    .line 60
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->aX(I)V

    .line 62
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NS:Ljava/lang/String;

    .line 63
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NT:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 96
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NU:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 104
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 123
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NV:Z

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NS:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-super {p0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->mN()V

    .line 110
    iput-boolean v2, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NV:Z

    .line 111
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NU:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->as(Z)V

    .line 113
    iput-boolean v2, p0, Lcom/android/settings_ext/bluetooth/DevicePickerFragment;->NU:Z

    .line 115
    :cond_0
    return-void
.end method
