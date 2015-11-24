.class public Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;
.super Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;
.source "MiuiBluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;-><init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    .line 15
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method aQ(I)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aQ(I)V

    .line 45
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic ae(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ae(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-super {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ae(Landroid/content/Context;)V

    .line 20
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
