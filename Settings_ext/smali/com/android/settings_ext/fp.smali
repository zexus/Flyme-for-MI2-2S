.class Lcom/android/settings_ext/fp;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic ue:Lcom/android/settings_ext/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/PrivacySettings;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 155
    instance-of v2, p1, Landroid/preference/SwitchPreference;

    if-nez v2, :cond_0

    .line 177
    :goto_0
    return v0

    .line 158
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 160
    iget-object v3, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings_ext/PrivacySettings;->a(Lcom/android/settings_ext/PrivacySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 161
    if-nez v2, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-static {v0}, Lcom/android/settings_ext/PrivacySettings;->b(Lcom/android/settings_ext/PrivacySettings;)V

    :cond_1
    :goto_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-static {v1, v0}, Lcom/android/settings_ext/PrivacySettings;->a(Lcom/android/settings_ext/PrivacySettings;Z)V

    move v1, v0

    .line 167
    goto :goto_1

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings_ext/PrivacySettings;->c(Lcom/android/settings_ext/PrivacySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings_ext/PrivacySettings;->d(Lcom/android/settings_ext/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 175
    goto :goto_1

    .line 173
    :catch_0
    move-exception v3

    .line 174
    iget-object v3, p0, Lcom/android/settings_ext/fp;->ue:Lcom/android/settings_ext/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings_ext/PrivacySettings;->c(Lcom/android/settings_ext/PrivacySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-nez v2, :cond_4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
