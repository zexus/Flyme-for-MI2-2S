.class public Lcom/android/settings_ext/AccessControlFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AccessControlFragment.java"


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/CheckBoxPreference;

.field private final f:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/android/settings_ext/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/b;-><init>(Lcom/android/settings_ext/AccessControlFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->f:Landroid/database/ContentObserver;

    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 51
    const-string v0, "privacy_mode_enable"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->d:Landroid/preference/CheckBoxPreference;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "privacy_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ext/AccessControlFragment;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/AccessControlFragment;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings_ext/AccessControlFragment;->g()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/AccessControlFragment;)Landroid/security/ChooseLockSettingsHelper;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->d:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->d:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->c:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 42
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/AccessControlFragment;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 45
    const-string v0, "ac_enable"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->c:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "ac_privacy_mode"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->e:Landroid/preference/CheckBoxPreference;

    .line 47
    invoke-direct {p0, v1}, Lcom/android/settings_ext/AccessControlFragment;->a(Landroid/preference/PreferenceScreen;)V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings_ext/AccessControlFragment;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 79
    const-string v0, "privacy_mode_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 80
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v1, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    const v2, 0x7f090d38

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    const v2, 0x7f090d39

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 87
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ext/c;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ext/c;-><init>(Lcom/android/settings_ext/AccessControlFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settings_ext/d;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/d;-><init>(Lcom/android/settings_ext/AccessControlFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 139
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v1, "confirm_purpose"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "ac_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 118
    if-nez v0, :cond_4

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/ChooseAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/AccessControlFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 122
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v1, "confirm_purpose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "ac_privacy_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ext/ConfirmAccessControl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    if-nez v0, :cond_6

    .line 131
    const-string v0, "confirm_purpose"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 134
    :cond_6
    const-string v0, "confirm_purpose"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ext/AccessControlFragment;->g()V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/AccessControlFragment;->e:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 69
    return-void
.end method
