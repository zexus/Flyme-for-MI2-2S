.class public Lcom/android/settings_ext/wifi/Q;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field private final acD:Landroid/preference/CheckBoxPreference;

.field private final auj:Ljava/lang/CharSequence;

.field private auk:Z

.field private hD:Landroid/net/wifi/WifiManager;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private yg:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings_ext/wifi/R;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/R;-><init>(Lcom/android/settings_ext/wifi/Q;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    .line 89
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/Q;->auj:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 91
    iput-boolean v1, p0, Lcom/android/settings_ext/wifi/Q;->auk:Z

    .line 93
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/Q;->hD:Landroid/net/wifi/WifiManager;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mCm:Landroid/net/ConnectivityManager;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/Q;->yg:[Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mIntentFilter:Landroid/content/IntentFilter;

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/Q;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/Q;->da(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/Q;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ext/wifi/Q;->a([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 181
    .line 184
    array-length v7, p2

    move v5, v4

    move v6, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, p2, v5

    .line 185
    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v8, p0, Lcom/android/settings_ext/wifi/Q;->yg:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    move v1, v6

    :goto_1
    if-ge v3, v9, :cond_1

    aget-object v6, v8, v3

    .line 187
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    .line 186
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_0

    .line 190
    :cond_2
    array-length v7, p3

    move v5, v4

    move v1, v4

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v0, p3, v5

    .line 191
    check-cast v0, Ljava/lang/String;

    .line 192
    iget-object v8, p0, Lcom/android/settings_ext/wifi/Q;->yg:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    :goto_3
    if-ge v3, v9, :cond_4

    aget-object v10, v8, v3

    .line 193
    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v1, v2

    .line 192
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 190
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 197
    :cond_5
    if-eqz v6, :cond_7

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/Q;->d(Landroid/net/wifi/WifiConfiguration;)V

    .line 203
    :cond_6
    :goto_4
    return-void

    .line 200
    :cond_7
    if-eqz v1, :cond_6

    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090299

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/Q;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/Q;->auk:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/Q;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/Q;->uK()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/Q;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/Q;->cU(I)V

    return-void
.end method

.method private cU(I)V
    .locals 1

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/Q;->uK()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/Q;->auk:Z

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private da(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    packed-switch p1, :pswitch_data_0

    .line 232
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090299

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/Q;->uK()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090339

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09033a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/Q;->auj:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/Q;->auk:Z

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/Q;->uK()V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private uK()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 116
    :goto_0
    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 122
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/Q;->auj:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bl(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 131
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 134
    const-string v0, "wifi_saved_state"

    invoke-static {v2, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :cond_1
    if-nez p1, :cond_5

    .line 142
    :try_start_0
    const-string v0, "wifi_saved_state"

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    if-ne v0, v5, :cond_2

    .line 148
    iput-boolean v5, p0, Lcom/android/settings_ext/wifi/Q;->auk:Z

    .line 152
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/wifi/Q;->hD:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    iget-object v3, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 162
    :goto_2
    if-nez p1, :cond_3

    .line 163
    if-ne v0, v5, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 165
    const-string v0, "wifi_saved_state"

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    :cond_3
    return-void

    .line 143
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 156
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090299

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public d(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    const v1, 0x11070056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings_ext/wifi/Q;->acD:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    const v3, 0x7f09033b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 175
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/Q;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/wifi/Q;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/Q;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/Q;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/Q;->uK()V

    .line 107
    return-void
.end method
