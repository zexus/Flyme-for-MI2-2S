.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"


# instance fields
.field private zI:Landroid/preference/PreferenceGroup;

.field private zJ:Landroid/preference/PreferenceCategory;

.field private zK:Landroid/preference/Preference;

.field private zL:Landroid/preference/Preference;

.field private final zM:Lcom/android/settings/SettingsPreferenceFragment;

.field private final zN:Landroid/speech/tts/TtsEngines;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->zM:Lcom/android/settings/SettingsPreferenceFragment;

    .line 46
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zN:Landroid/speech/tts/TtsEngines;

    .line 47
    return-void
.end method

.method private hv()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->hw()Z

    move-result v0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->hx()Z

    move-result v1

    .line 62
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zM:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->zJ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    return-void
.end method

.method private hw()Z
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/settings/voice/a;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->zM:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/voice/a;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0}, Lcom/android/settings/voice/a;->sL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zJ:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->zK:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hx()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zN:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zJ:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->zL:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zM:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zI:Landroid/preference/PreferenceGroup;

    .line 52
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zI:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zJ:Landroid/preference/PreferenceCategory;

    .line 53
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zJ:Landroid/preference/PreferenceCategory;

    const-string v1, "voice_input_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zK:Landroid/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zJ:Landroid/preference/PreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->zL:Landroid/preference/Preference;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->hv()V

    .line 57
    return-void
.end method
