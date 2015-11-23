.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# instance fields
.field Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field NM:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field NN:Landroid/bluetooth/BluetoothDevice;

.field NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field NP:Landroid/preference/PreferenceGroup;

.field final NQ:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    .line 68
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->Mp:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NM:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 69
    return-void
.end method


# virtual methods
.method a(Landroid/preference/PreferenceGroup;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    .line 97
    return-void
.end method

.method final a(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NM:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 73
    return-void
.end method

.method public a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NM:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;->f(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public aL(I)V
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->ar(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method final aX(I)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->aM(I)Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NM:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 77
    return-void
.end method

.method public al(Z)V
    .locals 0

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mO()V

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->ar(Z)V

    .line 235
    return-void
.end method

.method ar(Z)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->G(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public b(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_0
    return-void
.end method

.method d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lI()V

    .line 185
    return-void
.end method

.method e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method h(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method mM()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mX()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 130
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    if-ltz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method

.method mN()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mK()Ljava/util/Collection;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method mO()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mK()Ljava/util/Collection;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "DeviceListPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 155
    if-eqz v1, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->aq(Z)V

    goto :goto_0

    .line 162
    :cond_2
    return-void
.end method

.method abstract mh()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mh()V

    .line 92
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NP:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->gy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mM()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->aj(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->nf()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->b(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 167
    const-string v1, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->as(Z)V

    .line 180
    :goto_0
    return v0

    .line 172
    :cond_0
    instance-of v1, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_1

    .line 173
    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 174
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lG()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NN:Landroid/bluetooth/BluetoothDevice;

    .line 176
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->gy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->aj(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->NO:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->nf()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->ar(Z)V

    goto :goto_0
.end method
