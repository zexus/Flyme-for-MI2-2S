.class public Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUsbSettings.java"


# instance fields
.field private Sd:Landroid/preference/CheckBoxPreference;

.field private Se:Landroid/preference/CheckBoxPreference;

.field private Sf:Landroid/preference/CheckBoxPreference;

.field private Sg:Landroid/preference/CheckBoxPreference;

.field private Sh:Z

.field private Si:Z

.field private Sj:Ljava/lang/String;

.field private Sk:Ljava/lang/String;

.field private Sl:Ljava/lang/String;

.field private Sm:Ljava/lang/String;

.field private final Sn:Landroid/content/BroadcastReceiver;

.field private hE:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sn:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aH(Ljava/lang/String;)V

    return-void
.end method

.method private aH(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sj:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sk:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sh:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Si:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sm:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    :cond_1
    return-void
.end method

.method private gC()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 51
    :cond_0
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 54
    const-string v0, "usb_mtp"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    .line 55
    const-string v0, "usb_ptp"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    .line 56
    const-string v0, "usb_msd"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    .line 57
    const-string v0, "usb_charging"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090a68

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sj:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090a69

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sk:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090a6a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sl:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090a6b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sm:Ljava/lang/String;

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090bb0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090bb1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 68
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sh:Z

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sh:Z

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    iput-object v4, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    .line 75
    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Si:Z

    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Si:Z

    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    iput-object v4, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    .line 80
    :cond_4
    return-object v2

    :cond_5
    move v0, v1

    .line 75
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sj:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sj:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aH(Ljava/lang/String;)V

    .line 143
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Se:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sk:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sk:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aH(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sf:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sh:Z

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aH(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sg:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Si:Z

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sm:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aH(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hE:Landroid/hardware/usb/UsbManager;

    const-string v2, "none"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->gC()Landroid/preference/PreferenceScreen;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Sn:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method
