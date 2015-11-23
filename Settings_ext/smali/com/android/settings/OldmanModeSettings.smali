.class public Lcom/android/settings/OldmanModeSettings;
.super Lmiui/preference/PreferenceActivity;
.source "OldmanModeSettings.java"


# static fields
.field public static tB:Ljava/lang/String;


# instance fields
.field private tC:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "enable_oldman_mode"

    sput-object v0, Lcom/android/settings/OldmanModeSettings;->tB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/OldmanModeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f090de5

    const v2, 0x7f090cc0

    .line 29
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/android/settings/OldmanModeSettings;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :cond_0
    sget-object v0, Lcom/android/settings/OldmanModeSettings;->tB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/OldmanModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    .line 36
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/fc;->fL()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/fd;

    invoke-direct {v1, p0}, Lcom/android/settings/fd;-><init>(Lcom/android/settings/OldmanModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    sget-boolean v0, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->tC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    goto :goto_0
.end method
