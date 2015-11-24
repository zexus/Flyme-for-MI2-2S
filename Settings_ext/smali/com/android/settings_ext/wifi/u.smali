.class public Lcom/android/settings_ext/wifi/u;
.super Ljava/lang/Object;
.source "MiuiWifiEnabler.java"


# instance fields
.field private Pc:Landroid/preference/CheckBoxPreference;

.field private ati:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private atj:Z

.field private final hD:Landroid/net/wifi/WifiManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private zM:Lcom/android/settings_ext/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/SettingsPreferenceFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/u;->ati:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Lcom/android/settings_ext/wifi/v;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/v;-><init>(Lcom/android/settings_ext/wifi/u;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/u;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lcom/android/settings_ext/wifi/u;->zM:Lcom/android/settings_ext/SettingsPreferenceFragment;

    .line 72
    invoke-virtual {p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/u;->hD:Landroid/net/wifi/WifiManager;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/u;->mIntentFilter:Landroid/content/IntentFilter;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/wifi/u;->a(Landroid/preference/CheckBoxPreference;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->ati:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/u;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/u;->cU(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/u;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/u;->a(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private cU(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-direct {p0, v1}, Lcom/android/settings_ext/wifi/u;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->zM:Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->invalidateOptionsMenu()V

    .line 153
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ext/wifi/u;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ext/wifi/u;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setChecked(Z)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/u;->atj:Z

    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/u;->atj:Z

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/preference/CheckBoxPreference;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    iput-object p1, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 94
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v3, v1

    .line 95
    :goto_0
    if-ne v0, v1, :cond_3

    move v0, v1

    .line 96
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    iget-object v4, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 98
    return-void

    :cond_2
    move v3, v2

    .line 94
    goto :goto_0

    :cond_3
    move v0, v2

    .line 95
    goto :goto_1
.end method

.method public au(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/u;->atj:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 106
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    const v1, 0x7f09029a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 114
    if-eqz p1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->hD:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 122
    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/df;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->Pc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    const v1, 0x7f090299

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/u;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ext/wifi/u;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/u;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/u;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method
