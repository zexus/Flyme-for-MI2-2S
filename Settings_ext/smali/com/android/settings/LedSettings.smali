.class public Lcom/android/settings/LedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private ka:Landroid/preference/CheckBoxPreference;

.field private ne:Landroid/preference/ListPreference;

.field private nf:Landroid/preference/ListPreference;

.field private ng:Landroid/preference/ListPreference;

.field private nh:Landroid/preference/ListPreference;

.field private ni:Landroid/preference/ListPreference;

.field private nj:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/ListPreference;IZ)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/LedSettings;->b(Landroid/preference/ListPreference;IZ)I

    move-result v0

    .line 132
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 135
    :cond_0
    return-void
.end method

.method private b(Landroid/preference/ListPreference;IZ)I
    .locals 5

    .prologue
    .line 138
    const/4 v1, -0x1

    .line 139
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    if-eqz p3, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 147
    :goto_1
    if-ne p2, v1, :cond_2

    .line 148
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return v0

    .line 145
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v5, 0x7f0b007f

    const v4, 0x7f0b007e

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f060044

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f090b56

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 39
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->ka:Landroid/preference/CheckBoxPreference;

    .line 40
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ka:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    const-string v0, "breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->ne:Landroid/preference/ListPreference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ne:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    const-string v0, "breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->nf:Landroid/preference/ListPreference;

    .line 45
    iget-object v0, p0, Lcom/android/settings/LedSettings;->nf:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v0, "call_breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v0, "call_breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v0, "mms_breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    .line 53
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v0, "mms_breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ne:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ne:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x110d0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_breathing_light_color"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    iget-object v5, p0, Lcom/android/settings/LedSettings;->ne:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 78
    iget-object v3, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11060008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_breathing_light_freq"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_freq"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 90
    iget-object v5, p0, Lcom/android/settings/LedSettings;->nf:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v3, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 95
    iget-object v3, p0, Lcom/android/settings/LedSettings;->ka:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "notification_light_pulse"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->nf:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    iput-object v7, p0, Lcom/android/settings/LedSettings;->nf:Landroid/preference/ListPreference;

    .line 103
    iput-object v7, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    .line 104
    iput-object v7, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iput-object v7, p0, Lcom/android/settings/LedSettings;->ng:Landroid/preference/ListPreference;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    iput-object v7, p0, Lcom/android/settings/LedSettings;->nh:Landroid/preference/ListPreference;

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    iput-object v7, p0, Lcom/android/settings/LedSettings;->ni:Landroid/preference/ListPreference;

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    iput-object v7, p0, Lcom/android/settings/LedSettings;->nj:Landroid/preference/ListPreference;

    .line 127
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 158
    const/4 v3, -0x1

    .line 160
    const-string v4, "breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 216
    :goto_0
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 217
    check-cast p1, Landroid/preference/ListPreference;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/LedSettings;->b(Landroid/preference/ListPreference;IZ)I

    .line 219
    :cond_0
    return v1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 168
    goto :goto_0

    .line 169
    :cond_1
    const-string v4, "breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 172
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 174
    :catch_1
    move-exception v3

    .line 175
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    :cond_2
    const-string v4, "call_breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 181
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    .line 185
    goto :goto_0

    .line 183
    :catch_2
    move-exception v2

    .line 184
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 185
    goto :goto_0

    .line 186
    :cond_3
    const-string v4, "call_breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 191
    :catch_3
    move-exception v3

    .line 192
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    :cond_4
    const-string v4, "mms_breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 195
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 198
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mms_breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move v2, v1

    .line 202
    goto/16 :goto_0

    .line 200
    :catch_4
    move-exception v2

    .line 201
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 202
    goto/16 :goto_0

    .line 203
    :cond_5
    const-string v4, "mms_breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 208
    :catch_5
    move-exception v3

    .line 209
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 211
    :cond_6
    const-string v4, "notification_pulse"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse"

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method
