.class public Lcom/android/settings_ext/Legal;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "Legal.java"


# instance fields
.field private nk:Landroid/preference/Preference;

.field private nl:Landroid/preference/Preference;

.field private nm:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/Legal;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ext/Legal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ext/Legal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 38
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 40
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 42
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 45
    const-string v0, "miuiCopyright"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/Legal;->nk:Landroid/preference/Preference;

    .line 46
    const-string v0, "miuiUserAgreement"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/Legal;->nl:Landroid/preference/Preference;

    .line 47
    const-string v0, "miuiPrivacyPolicy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/Legal;->nm:Landroid/preference/Preference;

    .line 48
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/settings_ext/Legal;->nk:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 63
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/Legal;->nl:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 66
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/Legal;->nm:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 69
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ext/Legal;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const v1, 0x7f0904d1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 57
    :cond_0
    return-void
.end method
