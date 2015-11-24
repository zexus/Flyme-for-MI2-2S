.class Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final MA:Landroid/preference/CheckBoxPreference;

.field private final MB:Landroid/content/SharedPreferences;

.field private MC:Z

.field private MD:I

.field private ME:I

.field private final MF:Ljava/lang/Runnable;

.field final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private final Mz:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    .line 83
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MF:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mz:Landroid/os/Handler;

    .line 108
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 109
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    .line 110
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MB:Landroid/content/SharedPreferences;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->lP()V

    return-void
.end method

.method private aN(I)V
    .locals 6

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aO(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0900ce

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static aO(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    div-int/lit8 v1, p0, 0x3c

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    mul-int/lit8 v1, v1, 0x3c

    sub-int v1, p0, v1

    .line 189
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 190
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 225
    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 226
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    .line 246
    :goto_0
    return v0

    .line 230
    :cond_0
    const-string v1, "debug.bt.discoverable_time"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 231
    if-gez v1, :cond_4

    .line 232
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MB:Landroid/content/SharedPreferences;

    const-string v2, "bt_discoverable_timeout"

    const-string v3, "twomin"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :goto_1
    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    goto :goto_0

    .line 237
    :cond_1
    const-string v0, "onehour"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const/16 v0, 0xe10

    goto :goto_1

    .line 239
    :cond_2
    const-string v0, "fivemin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const/16 v0, 0x12c

    goto :goto_1

    .line 242
    :cond_3
    const/16 v0, 0x78

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private lO()V
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MD:I

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private lP()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    .line 293
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothPreferences;->ak(Landroid/content/Context;)J

    move-result-wide v2

    .line 300
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aN(I)V

    goto :goto_0

    .line 306
    :cond_1
    sub-long v0, v2, v0

    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 307
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aN(I)V

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mz:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mz:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MF:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setEnabled(Z)V
    .locals 8

    .prologue
    .line 147
    if-eqz p1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 150
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothPreferences;->b(Landroid/content/Context;J)V

    .line 152
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v1, v4, v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 153
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->lP()V

    .line 155
    const-string v1, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableTimeoutReceiver;->a(Landroid/content/Context;J)V

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableTimeoutReceiver;->af(Landroid/content/Context;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableTimeoutReceiver;->af(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method aP(I)V
    .locals 1

    .prologue
    .line 268
    iput p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MD:I

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aQ(I)V

    .line 270
    return-void
.end method

.method aQ(I)V
    .locals 3

    .prologue
    .line 273
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MC:Z

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->lP()V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MC:Z

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->lO()V

    goto :goto_0
.end method

.method public ae(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 120
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 123
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aQ(I)V

    goto :goto_0
.end method

.method lN()I
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 251
    sparse-switch v0, :sswitch_data_0

    .line 254
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 257
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 263
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MC:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MC:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MC:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 143
    return v1

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->Mz:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MA:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method setDiscoverableTimeout(I)V
    .locals 3

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    .line 201
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    .line 202
    const-string v0, "twomin"

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->MB:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 222
    return-void

    .line 206
    :pswitch_0
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    .line 207
    const-string v0, "fivemin"

    goto :goto_0

    .line 211
    :pswitch_1
    const/16 v0, 0xe10

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    .line 212
    const-string v0, "onehour"

    goto :goto_0

    .line 216
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->ME:I

    .line 217
    const-string v0, "never"

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
