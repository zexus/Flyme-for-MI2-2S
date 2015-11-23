.class Lcom/android/settings_ext/eG;
.super Ljava/lang/Object;
.source "MiuiSmartCoverSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->b(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->c(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)V

    .line 44
    return v1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->b(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->b(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/eG;->si:Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings_ext/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method
