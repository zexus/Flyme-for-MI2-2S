.class public abstract Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"


# instance fields
.field protected Bl:Lcom/android/settings_ext/widget/K;

.field protected Bm:Landroid/preference/Preference;

.field protected Bn:Ljava/lang/CharSequence;

.field protected Bo:Landroid/content/Intent;

.field protected xp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private hY()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->hQ()V

    .line 153
    return-void
.end method

.method private hZ()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/K;->a(Lcom/android/settings_ext/widget/L;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->hX()V

    .line 160
    return-void
.end method


# virtual methods
.method protected abstract b(Ljava/lang/String;Z)V
.end method

.method protected g(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "preference_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->xp:Ljava/lang/String;

    .line 176
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/K;->ba(Z)V

    .line 185
    :cond_1
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 190
    :cond_2
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected hQ()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected hX()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->hY()V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 64
    new-instance v1, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    .line 88
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    const v2, 0x7f040110

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 90
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bm:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bo:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bn:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 135
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bo:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 138
    sget v1, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroyView()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->hZ()V

    .line 122
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    new-instance v0, Lcom/android/settings_ext/widget/K;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/widget/K;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    const v1, 0x7f090c1a

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/K;->setTitle(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/K;->setOrder(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->g(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method
