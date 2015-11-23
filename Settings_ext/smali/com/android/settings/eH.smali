.class Lcom/android/settings/eH;
.super Ljava/lang/Object;
.source "MiuiSmartCoverSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/eH;->si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings/eH;->si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/eH;->si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->b(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/android/settings/eH;->si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Z)V

    .line 60
    return v2

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/settings/eH;->si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->a(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/eH;->si:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->b(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Lmiui/preference/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method
