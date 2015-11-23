.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# static fields
.field private static final Uf:Ljava/lang/String;


# instance fields
.field private Sd:Landroid/preference/CheckBoxPreference;

.field private Se:Landroid/preference/CheckBoxPreference;

.field private Sg:Landroid/preference/CheckBoxPreference;

.field private final Sn:Landroid/content/BroadcastReceiver;

.field private Ug:Landroid/preference/CheckBoxPreference;

.field private Uh:Z

.field private Ui:Z

.field private hE:Landroid/hardware/usb/UsbManager;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private pb:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "ro.sys.usb.default.config"

    const-string v1, "diag,serial_smd,serial_tty,rmnet_bam,mass_storage"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->Uf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ui:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    .line 74
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sn:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Uh:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Uh:Z

    return p1
.end method

.method private aH(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 228
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    const-string v0, "UsbSettings"

    const-string v1, "USB is locked down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    :goto_1
    return-void

    .line 203
    :cond_0
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 233
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Uh:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ui:Z

    if-nez v0, :cond_5

    .line 235
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->ot()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ui:Z

    return p1
.end method

.method private gC()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 118
    :cond_0
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 121
    const-string v0, "usb_mtp"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v0, "usb_ptp"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v0, "usb_charging"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v0, "usb_sdcard"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    .line 126
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->nV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "UsbSettings"

    const-string v2, "createPreferenceHierarchy mass_storage enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 132
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 138
    :cond_2
    return-object v1
.end method

.method private nV()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 105
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 106
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    const/4 v0, 0x1

    .line 110
    :cond_0
    return v0

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ot()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "persist.sys.usb.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/android/settings/deviceinfo/UsbSettings;->Uf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->Uf:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->aH(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->aH(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    .line 145
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 248
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 278
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 254
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 255
    goto :goto_0

    .line 259
    :cond_1
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->Uf:Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const-string v0, "mtp"

    .line 272
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ui:Z

    .line 273
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 274
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->aH(Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 262
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const-string v0, "ptp"

    goto :goto_1

    .line 264
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    const-string v0, "charging"

    goto :goto_1

    .line 268
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Ug:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const-string v0, "mass_storage"

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->gC()Landroid/preference/PreferenceScreen;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->Sn:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->pb:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->ot()V

    .line 195
    return-void
.end method
