.class public Lcom/android/settings_ext/dndmode/c;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AlarmContentFragment.java"


# instance fields
.field private Wo:Landroid/preference/CheckBoxPreference;

.field private Wp:Landroid/preference/CheckBoxPreference;

.field private Wq:Landroid/preference/CheckBoxPreference;

.field private Wr:Landroid/service/notification/ZenModeConfig;

.field private final Ws:Lcom/android/settings_ext/dndmode/g;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/android/settings_ext/dndmode/g;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dndmode/g;-><init>(Lcom/android/settings_ext/dndmode/c;)V

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Ws:Lcom/android/settings_ext/dndmode/g;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dndmode/c;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/dndmode/c;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dndmode/c;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/dndmode/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/dndmode/c;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/dndmode/c;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/dndmode/c;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/dndmode/c;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/c;->oS()V

    return-void
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    .prologue
    .line 109
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v1, "ZenModeSettings"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private oR()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wo:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wq:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    return-void
.end method

.method private oS()V
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/c;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 139
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZenModeConfig mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/c;->oR()V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4

    .prologue
    .line 120
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 123
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 126
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "ZenModeSettings"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/c;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 42
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/c;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 44
    const-string v0, "phone_calls"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wo:Landroid/preference/CheckBoxPreference;

    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wo:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings_ext/dndmode/d;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/dndmode/d;-><init>(Lcom/android/settings_ext/dndmode/c;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    const-string v0, "messages"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wp:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wp:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings_ext/dndmode/e;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/dndmode/e;-><init>(Lcom/android/settings_ext/dndmode/c;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    const-string v0, "events"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wq:Landroid/preference/CheckBoxPreference;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Wq:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings_ext/dndmode/f;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/dndmode/f;-><init>(Lcom/android/settings_ext/dndmode/c;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/c;->oR()V

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Ws:Lcom/android/settings_ext/dndmode/g;

    invoke-virtual {v0}, Lcom/android/settings_ext/dndmode/g;->unregister()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings_ext/dndmode/c;->oR()V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/c;->Ws:Lcom/android/settings_ext/dndmode/g;

    invoke-virtual {v0}, Lcom/android/settings_ext/dndmode/g;->register()V

    .line 99
    return-void
.end method
