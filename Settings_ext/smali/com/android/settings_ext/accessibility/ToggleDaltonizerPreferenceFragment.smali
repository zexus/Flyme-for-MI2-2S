.class public Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;
.super Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ext/widget/I;


# instance fields
.field private Bj:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private hW()V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bj:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bj:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bj:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 107
    if-gez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bj:Landroid/preference/ListPreference;

    const v1, 0x7f090650

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f090827

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->xp:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hQ()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-super {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->hQ()V

    .line 80
    iget-object v2, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings_ext/widget/K;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    new-instance v1, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment$1;-><init>(Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/K;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bj:Landroid/preference/ListPreference;

    .line 47
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->hW()V

    .line 48
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->Bj:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f09064c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleDaltonizerPreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 70
    return-void
.end method
