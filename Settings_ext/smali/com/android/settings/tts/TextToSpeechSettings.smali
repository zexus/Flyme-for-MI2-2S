.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/k;


# instance fields
.field private akK:Landroid/preference/PreferenceCategory;

.field private akL:Landroid/preference/ListPreference;

.field private akM:Landroid/preference/Preference;

.field private akN:Landroid/preference/Preference;

.field private akO:I

.field private akP:Ljava/lang/String;

.field private akQ:Landroid/widget/Checkable;

.field private akR:Ljava/lang/String;

.field private akS:Landroid/speech/tts/TextToSpeech;

.field private akT:Landroid/speech/tts/TtsEngines;

.field private akU:Ljava/lang/String;

.field private akV:Ljava/util/Locale;

.field private akW:Ljava/util/List;

.field private final akX:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final akY:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I

    .line 114
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    .line 115
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akT:Landroid/speech/tts/TtsEngines;

    .line 117
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akU:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/android/settings/tts/a;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/a;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akX:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 148
    new-instance v0, Lcom/android/settings/tts/b;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/b;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akY:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    return-object p1
.end method

.method private aK(Z)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akM:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akN:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 515
    return-void
.end method

.method static synthetic b(Lcom/android/settings/tts/TextToSpeechSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    return-object v0
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rY()Ljava/lang/String;

    move-result-object v0

    .line 423
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 424
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    const-string v0, "sampleText"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akU:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akU:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Did not have a sample string for the requested language. Using default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->by(Ljava/lang/String;)V

    return-void
.end method

.method private by(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    .line 551
    const v0, 0x7f09074b

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->bx(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akR:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_0
    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akY:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    .line 577
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rT()V

    .line 578
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bz(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const/16 v1, 0x7b9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check TTS data, no activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cu(I)V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    .line 519
    if-nez v0, :cond_0

    .line 520
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akN:Landroid/preference/Preference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method

.method private rT()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/c;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/c;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0
.end method

.method private rU()V
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    :try_start_0
    const-string v1, "tts_default_rate"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 249
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akK:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akT:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 253
    new-instance v3, Lcom/android/settings/tts/e;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, p0, v1}, Lcom/android/settings/tts/e;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/k;Landroid/app/Activity;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akK:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 232
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bz(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bx(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private rV()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 278
    if-nez v0, :cond_1

    .line 279
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get default language from engine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    .line 281
    const v0, 0x7f09074a

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    .line 288
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akT:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    .line 289
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akU:Ljava/lang/String;

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 294
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akU:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rX()V

    goto :goto_0
.end method

.method private rW()Z
    .locals 6

    .prologue
    const v5, 0x7f09074a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akW:Ljava/util/List;

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 309
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 330
    :goto_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v3

    .line 331
    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eqz v0, :cond_5

    .line 335
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    .line 336
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    .line 326
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    goto/16 :goto_0

    .line 339
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rZ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    const v0, 0x7f090749

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    .line 344
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    move v1, v2

    .line 345
    goto/16 :goto_0

    .line 342
    :cond_6
    const v0, 0x7f090748

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move-object v3, v0

    goto :goto_1
.end method

.method private rX()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v2, "language"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v2, "country"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v2, "variant"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const/16 v0, 0x7bf

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    const-string v0, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sample text, no activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rY()Ljava/lang/String;
    .locals 5

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 398
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 399
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    aget-object v0, v2, v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_1
    return-object v0

    .line 398
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 408
    :cond_1
    const v0, 0x7f090746

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private rZ()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v1

    .line 413
    if-nez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "networkTts"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    .line 625
    if-nez v2, :cond_1

    .line 626
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Voice data check complete, but no engine bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    if-nez p1, :cond_2

    .line 631
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_synth"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 638
    const-string v0, "availableVoices"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akW:Ljava/util/List;

    .line 640
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akW:Ljava/util/List;

    if-nez v0, :cond_3

    .line 641
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Voice data check complete, but no available voices found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akW:Ljava/util/List;

    .line 645
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 646
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rX()V

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akK:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 650
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akK:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 652
    instance-of v4, v0, Lcom/android/settings/tts/e;

    if-eqz v4, :cond_5

    .line 653
    check-cast v0, Lcom/android/settings/tts/e;

    .line 654
    invoke-virtual {v0}, Lcom/android/settings/tts/e;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 655
    invoke-virtual {v0, p1}, Lcom/android/settings/tts/e;->t(Landroid/content/Intent;)V

    goto :goto_0

    .line 650
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private sa()V
    .locals 4

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rZ()Z

    move-result v0

    .line 442
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 444
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    const-string v1, "utteranceId"

    const-string v2, "Sample"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akU:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 452
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Network required for sample synthesis for requested language"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->sd()V

    goto :goto_0
.end method

.method private sd()V
    .locals 4

    .prologue
    .line 526
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090745

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 532
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/android/settings/tts/d;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/d;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 543
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Checkable;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akQ:Landroid/widget/Checkable;

    .line 675
    return-void
.end method

.method public bA(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->by(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public bx(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 455
    const-string v0, "com.iflytek.speechcloud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->sb()V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->sc()V

    goto :goto_0
.end method

.method public ct(I)V
    .locals 1

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rV()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    goto :goto_0
.end method

.method public cv(I)V
    .locals 4

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->bz(Ljava/lang/String;)V

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akR:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 597
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akX:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akR:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    .line 599
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rT()V

    .line 601
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akR:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 382
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 383
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->b(ILandroid/content/Intent;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 385
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->s(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 162
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akM:Landroid/preference/Preference;

    .line 163
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akM:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akM:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akK:Landroid/preference/PreferenceCategory;

    .line 168
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    .line 170
    const-string v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akN:Landroid/preference/Preference;

    .line 171
    const v0, 0x7f09074b

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->cu(I)V

    .line 173
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akX:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    .line 174
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akT:Landroid/speech/tts/TtsEngines;

    .line 176
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rT()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rU()V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    .line 222
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 478
    const-string v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akO:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akM:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->sa()V

    .line 505
    const/4 v0, 0x1

    .line 508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akV:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->aK(Z)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->rV()V

    goto :goto_0
.end method

.method public sb()V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    .line 465
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 467
    return-void
.end method

.method public sc()V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    .line 472
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akL:Landroid/preference/ListPreference;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 474
    return-void
.end method

.method public se()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akQ:Landroid/widget/Checkable;

    return-object v0
.end method

.method public sf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->akP:Ljava/lang/String;

    return-object v0
.end method
