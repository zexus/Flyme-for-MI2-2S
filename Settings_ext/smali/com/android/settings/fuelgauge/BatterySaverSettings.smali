.class public Lcom/android/settings/fuelgauge/BatterySaverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/settings/widget/I;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final aal:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final aam:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

.field private aan:Lcom/android/settings/notification/SettingPref;

.field private aao:Landroid/os/PowerManager;

.field private final aap:Ljava/lang/Runnable;

.field private final aaq:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aal:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 52
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Lcom/android/settings/fuelgauge/BatterySaverSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aam:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    .line 165
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aap:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aaq:Ljava/lang/Runnable;

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->pp()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/BatterySaverSettings;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aC(Z)V

    return-void
.end method

.method private aC(Z)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aao:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BatterySaverSettings"

    const-string v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_1
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aap:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aan:Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private pp()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aaq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aaq:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BatterySaverSettings"

    const-string v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aC(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 69
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;

    const-string v3, "turn_on_automatically"

    const-string v4, "low_power_trigger_level"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b006a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aan:Lcom/android/settings/notification/SettingPref;

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aan:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->c(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 92
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aao:Landroid/os/PowerManager;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aal:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aam:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aal:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->aam:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->pp()V

    .line 115
    return-void
.end method
