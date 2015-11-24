.class public Lcom/android/settings_ext/voice/VoiceInputSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "VoiceInputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ext/search/k;
.implements Lcom/android/settings_ext/voice/l;


# static fields
.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private akQ:Landroid/widget/Checkable;

.field private ant:Landroid/preference/PreferenceCategory;

.field private anu:Ljava/lang/CharSequence;

.field private anv:Ljava/lang/CharSequence;

.field private anw:Ljava/lang/CharSequence;

.field private anx:Ljava/lang/String;

.field private any:Lcom/android/settings_ext/voice/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/settings_ext/voice/m;

    invoke-direct {v0}, Lcom/android/settings_ext/voice/m;-><init>()V

    sput-object v0, Lcom/android/settings_ext/voice/VoiceInputSettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private rU()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 97
    new-instance v0, Lcom/android/settings_ext/voice/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/voice/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    invoke-virtual {v0}, Lcom/android/settings_ext/voice/a;->sM()V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->ant:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->anh:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->anh:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anx:Ljava/lang/String;

    :goto_0
    move v6, v7

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->anf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->anf:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ext/voice/c;

    .line 112
    new-instance v0, Lcom/android/settings_ext/voice/e;

    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anu:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anw:Ljava/lang/CharSequence;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/voice/e;-><init>(Landroid/content/Context;Lcom/android/settings_ext/voice/b;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_ext/voice/l;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->ant:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->ani:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->ani:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anx:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_1
    iput-object v8, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anx:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->ang:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->ang:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ext/voice/d;

    .line 119
    new-instance v0, Lcom/android/settings_ext/voice/e;

    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anv:Ljava/lang/CharSequence;

    move-object v4, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/voice/e;-><init>(Landroid/content/Context;Lcom/android/settings_ext/voice/b;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_ext/voice/l;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->ant:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 123
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Checkable;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->akQ:Landroid/widget/Checkable;

    .line 138
    return-void
.end method

.method public bA(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anx:Ljava/lang/String;

    move v1, v2

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->anf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->anf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/voice/c;

    .line 145
    iget-object v3, v0, Lcom/android/settings_ext/voice/c;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_interaction_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    iget-object v1, v0, Lcom/android/settings_ext/voice/c;->ank:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    iget-object v0, v0, Lcom/android/settings_ext/voice/c;->ank:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    :cond_0
    :goto_1
    return-void

    .line 143
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->ang:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->any:Lcom/android/settings_ext/voice/a;

    iget-object v0, v0, Lcom/android/settings_ext/voice/a;->ang:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/voice/d;

    .line 161
    iget-object v0, v0, Lcom/android/settings_ext/voice/d;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_interaction_service"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->addPreferencesFromResource(I)V

    .line 80
    const-string v0, "voice_service_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->ant:Landroid/preference/PreferenceCategory;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090729

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anu:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09072a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anv:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09072b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anw:Ljava/lang/CharSequence;

    .line 88
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 173
    instance-of v0, p1, Lcom/android/settings_ext/voice/e;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lcom/android/settings_ext/voice/e;

    invoke-virtual {p1}, Lcom/android/settings_ext/voice/e;->sO()V

    .line 176
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ext/voice/VoiceInputSettings;->rU()V

    .line 94
    return-void
.end method

.method public se()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->akQ:Landroid/widget/Checkable;

    return-object v0
.end method

.method public sf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/voice/VoiceInputSettings;->anx:Ljava/lang/String;

    return-object v0
.end method
