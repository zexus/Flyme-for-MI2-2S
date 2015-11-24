.class public Lcom/android/settings_ext/deviceinfo/MiuiMemory;
.super Lcom/android/settings_ext/deviceinfo/Memory;
.source "MiuiMemory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Sa:Landroid/preference/ListPreference;

.field private final Sb:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;-><init>()V

    .line 136
    new-instance v0, Lcom/android/settings_ext/deviceinfo/MiuiMemory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory$1;-><init>(Lcom/android/settings_ext/deviceinfo/MiuiMemory;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sb:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/MiuiMemory;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->ob()V

    return-void
.end method

.method private ob()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 147
    .line 148
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 149
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    move v1, v2

    .line 150
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 151
    aget-object v4, v3, v1

    .line 152
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "/storage/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    const/4 v2, 0x1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 164
    if-eqz v2, :cond_3

    .line 165
    const-string v0, "priority_storage_category"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 166
    if-nez v0, :cond_1

    .line 167
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 168
    const-string v2, "priority_storage_category"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 171
    const v2, 0x7f090d72

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 172
    const v2, 0x7f090d73

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 173
    const-string v2, "com.android.settings.deviceinfo.PriorityStorageFragment"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 174
    const-string v2, "priority_storage"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_1
    :goto_1
    return-void

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_3
    const-string v0, "priority_storage_category"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ext/deviceinfo/Memory;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_0

    .line 57
    const-string v0, "usb_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "usb_mode_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ext/deviceinfo/Memory;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ext/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09043e

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 121
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const-class v0, Lcom/android/settings_ext/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->onPause()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sb:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 93
    const-string v0, "usb_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    .line 129
    const-string v0, "priority_storage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-class v0, Lcom/android/settings_ext/deviceinfo/PriorityStorageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f090d72

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/deviceinfo/Memory;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 104
    const v0, 0x7f1003a2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sa:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->ob()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/MiuiMemory;->Sb:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method
