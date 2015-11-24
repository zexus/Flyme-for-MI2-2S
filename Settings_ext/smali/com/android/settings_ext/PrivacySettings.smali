.class public Lcom/android/settings_ext/PrivacySettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private hB:Landroid/app/backup/IBackupManager;

.field private mEnabled:Z

.field private tX:Landroid/preference/CheckBoxPreference;

.field private tY:Landroid/preference/CheckBoxPreference;

.field private tZ:Landroid/app/Dialog;

.field private ua:Landroid/preference/PreferenceScreen;

.field private ub:Lmiui/preference/ValuePreference;

.field private uc:I

.field private ud:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/android/settings_ext/fq;

    invoke-direct {v0}, Lcom/android/settings_ext/fq;-><init>()V

    sput-object v0, Lcom/android/settings_ext/PrivacySettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 152
    new-instance v0, Lcom/android/settings_ext/fp;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fp;-><init>(Lcom/android/settings_ext/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ud:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 301
    return-void
.end method

.method private F(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090794

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/PrivacySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/PrivacySettings;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_ext/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/PrivacySettings;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ext/PrivacySettings;->fQ()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/PrivacySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method private fQ()V
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/PrivacySettings;->uc:I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09079f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tZ:Landroid/app/Dialog;

    .line 190
    return-void
.end method

.method private fR()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 205
    :try_start_2
    iget-object v7, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v6, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v1, v3

    .line 217
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "local_auto_backup"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 226
    :goto_3
    if-eqz v3, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ub:Lmiui/preference/ValuePreference;

    const v1, 0x7f090d46

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 232
    :goto_4
    return-void

    .line 206
    :catch_0
    move-exception v0

    move-object v0, v5

    move v1, v4

    .line 208
    :goto_5
    iget-object v6, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v2, v4

    .line 212
    goto :goto_1

    :cond_1
    move v1, v4

    .line 216
    goto :goto_2

    :cond_2
    move v3, v4

    .line 223
    goto :goto_3

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ub:Lmiui/preference/ValuePreference;

    const v1, 0x7f090d47

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto :goto_4

    .line 206
    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_5
.end method

.method private fS()V
    .locals 2

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v0}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-direct {p0, v0}, Lcom/android/settings_ext/PrivacySettings;->F(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 288
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    iget-object v3, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 280
    goto :goto_1

    :cond_2
    move v1, v2

    .line 281
    goto :goto_2
.end method


# virtual methods
.method protected ao()I
    .locals 1

    .prologue
    .line 292
    const v0, 0x7f09093e

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget v0, p0, Lcom/android/settings_ext/PrivacySettings;->uc:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 259
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 260
    invoke-direct {p0, v2}, Lcom/android/settings_ext/PrivacySettings;->setBackupEnabled(Z)V

    .line 265
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/PrivacySettings;->fS()V

    .line 267
    :cond_1
    iput v2, p0, Lcom/android/settings_ext/PrivacySettings;->uc:I

    .line 268
    return-void

    .line 261
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ext/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/PrivacySettings;->mEnabled:Z

    .line 88
    iget-boolean v0, p0, Lcom/android/settings_ext/PrivacySettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 92
    :cond_0
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/PrivacySettings;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 94
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->hB:Landroid/app/backup/IBackupManager;

    .line 99
    const-string v0, "backup_data"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tX:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ext/PrivacySettings;->ud:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v0, "auto_restore"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tY:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ext/PrivacySettings;->ud:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const-string v0, "configure_account"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ua:Landroid/preference/PreferenceScreen;

    .line 109
    const-string v0, "local_auto_backup"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ub:Lmiui/preference/ValuePreference;

    .line 110
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ub:Lmiui/preference/ValuePreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v2, "no_factory_reset"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "personal_data_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    const-string v0, "backup_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 123
    const-string v0, "local_backup_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    const-string v0, "local_backup"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 125
    const-string v0, "local_backup"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "com.miui.backup.ui.MainFragmentPad"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ub:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->ub:Lmiui/preference/ValuePreference;

    const-string v1, "com.miui.backup.auto.AutoBackupFragmentPad"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setFragment(Ljava/lang/String;)V

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ext/PrivacySettings;->fR()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 137
    iget-boolean v0, p0, Lcom/android/settings_ext/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ext/PrivacySettings;->fR()V

    .line 140
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tZ:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tZ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tZ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/PrivacySettings;->tZ:Landroid/app/Dialog;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/PrivacySettings;->uc:I

    .line 149
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStop()V

    .line 150
    return-void
.end method
