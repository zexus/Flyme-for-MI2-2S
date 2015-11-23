.class public Lcom/android/settings/dolby/DolbySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DolbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private XF:Landroid/dolby/DsClient;

.field private final XG:Landroid/dolby/IDsClientEvents;

.field private XW:Lmiui/preference/RadioButtonPreference;

.field private XX:Lmiui/preference/RadioButtonPreference;

.field private XY:Lmiui/preference/RadioButtonPreference;

.field private XZ:Lmiui/preference/RadioButtonPreference;

.field private mn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/dolby/DolbySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dolby/DolbySettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/android/settings/dolby/DolbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dolby/DolbySettings$1;-><init>(Lcom/android/settings/dolby/DolbySettings;)V

    iput-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XG:Landroid/dolby/IDsClientEvents;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dolby/DolbySettings;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/dolby/DolbySettings;->refresh()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dolby/DolbySettings;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/settings/dolby/DolbySettings;->mn:Z

    return p1
.end method

.method private refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbySettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dolby/DolbySettings;->mn:Z

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XW:Lmiui/preference/RadioButtonPreference;

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v1}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v1}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v1

    .line 78
    if-ne v1, v4, :cond_4

    .line 79
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XX:Lmiui/preference/RadioButtonPreference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XZ:Lmiui/preference/RadioButtonPreference;

    if-eq v0, v1, :cond_0

    .line 91
    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XZ:Lmiui/preference/RadioButtonPreference;

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XZ:Lmiui/preference/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 95
    :cond_3
    iput-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XZ:Lmiui/preference/RadioButtonPreference;

    goto :goto_0

    .line 80
    :cond_4
    if-nez v1, :cond_2

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XY:Lmiui/preference/RadioButtonPreference;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    sget-object v2, Lcom/android/settings/dolby/DolbySettings;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    .line 87
    sget-object v2, Lcom/android/settings/dolby/DolbySettings;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbySettings;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/dolby/DsClient;

    invoke-direct {v1}, Landroid/dolby/DsClient;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    .line 43
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XG:Landroid/dolby/IDsClientEvents;

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v1, v0}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 47
    const-string v0, "mode_off"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XW:Lmiui/preference/RadioButtonPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XW:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v0, "mode_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XX:Lmiui/preference/RadioButtonPreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XX:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v0, "mode_movie"

    invoke-virtual {p0, v0}, Lcom/android/settings/dolby/DolbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XY:Lmiui/preference/RadioButtonPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XY:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings/dolby/DolbySettings;->mn:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings/dolby/DolbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XZ:Lmiui/preference/RadioButtonPreference;

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/dolby/DolbySettings;->mn:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 106
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v3, "mode_off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 117
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/dolby/DolbySettings;->refresh()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-object v2, Lcom/android/settings/dolby/DolbySettings;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 123
    goto :goto_0

    .line 109
    :cond_3
    :try_start_1
    const-string v3, "mode_music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/DsClient;->setSelectedProfile(I)V

    goto :goto_1

    .line 112
    :cond_4
    const-string v3, "mode_movie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/dolby/DolbySettings;->XF:Landroid/dolby/DsClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/dolby/DsClient;->setSelectedProfile(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dolby/DolbySettings;->refresh()V

    .line 59
    return-void
.end method
