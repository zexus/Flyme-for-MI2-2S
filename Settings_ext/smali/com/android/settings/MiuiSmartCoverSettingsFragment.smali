.class public Lcom/android/settings/MiuiSmartCoverSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSmartCoverSettingsFragment.java"


# instance fields
.field private sd:Landroid/preference/CheckBoxPreference;

.field private se:Lmiui/preference/RadioButtonPreference;

.field private sf:Lmiui/preference/RadioButtonPreference;

.field private final sg:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final sh:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/android/settings/eG;

    invoke-direct {v0, p0}, Lcom/android/settings/eG;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sg:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 48
    new-instance v0, Lcom/android/settings/eH;

    invoke-direct {v0, p0}, Lcom/android/settings/eH;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sh:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private D(Z)V
    .locals 2

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->D(Z)V

    return-void
.end method

.method private a(Lmiui/preference/RadioButtonPreference;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p1, p2}, Lmiui/preference/RadioButtonPreference;->setTitle(I)V

    .line 66
    invoke-virtual {p1, p3}, Lmiui/preference/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/preference/RadioButtonPreference;->setPersistent(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sg:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->fx()V

    return-void
.end method

.method private fx()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->D(Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 79
    :cond_0
    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->addPreferencesFromResource(I)V

    .line 81
    const-string v0, "smartcover_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sd:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sd:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sh:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    new-instance v0, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    const v1, 0x7f090e15

    const-string v2, "normal_smartcover_mode"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lmiui/preference/RadioButtonPreference;ILjava/lang/String;)V

    .line 87
    new-instance v0, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    .line 88
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    const v1, 0x7f090e16

    const-string v2, "smallwindow_smartcover_mode"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lmiui/preference/RadioButtonPreference;ILjava/lang/String;)V

    .line 91
    const-string v0, "persist.sys.smartcover_enabled"

    .line 92
    const-string v0, "persist.sys.smartcover_enabled"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "persist.sys.smartcover_enabled"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Z)V

    .line 94
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 98
    :cond_1
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 119
    :goto_0
    return-void

    .line 106
    :cond_2
    if-ne v0, v3, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->se:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->sf:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method
