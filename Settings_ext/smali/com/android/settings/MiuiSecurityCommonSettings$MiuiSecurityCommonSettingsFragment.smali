.class public Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityCommonSettings.java"


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private cJ:Landroid/security/KeyStore;

.field private qQ:Landroid/preference/CheckBoxPreference;

.field private qR:Landroid/preference/CheckBoxPreference;

.field private qS:Landroid/preference/CheckBoxPreference;

.field private qT:Landroid/preference/ListPreference;

.field private qU:Landroid/preference/PreferenceCategory;

.field private qV:Landroid/preference/Preference;

.field private qW:Landroid/preference/Preference;

.field private qX:Landroid/preference/PreferenceCategory;

.field private qY:Landroid/preference/PreferenceCategory;

.field private qZ:Landroid/preference/PreferenceCategory;

.field private ra:Ljava/util/List;

.field private final rb:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final rc:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final rd:Landroid/preference/Preference$OnPreferenceClickListener;

.field private re:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    .line 267
    new-instance v0, Lcom/android/settings/eh;

    invoke-direct {v0, p0}, Lcom/android/settings/eh;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->rb:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 506
    new-instance v0, Lcom/android/settings/ek;

    invoke-direct {v0, p0}, Lcom/android/settings/ek;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->rc:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 533
    new-instance v0, Lcom/android/settings/el;

    invoke-direct {v0, p0}, Lcom/android/settings/el;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->rd:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->re:Z

    return-void
.end method

.method private B(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 699
    new-instance v2, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "miui_password_type"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 703
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/security/MiuiLockPatternUtils;->setKeyguardPasswordQuality(I)V

    .line 705
    return-void

    :cond_0
    move v0, v1

    .line 703
    goto :goto_0
.end method

.method private C(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 617
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e47

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 622
    return-void
.end method

.method private M(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 305
    :sswitch_0
    const-class v0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0904e4

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 313
    :sswitch_1
    const-class v0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0904e3

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private N(I)V
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->C(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 776
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v0

    .line 778
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 779
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 780
    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    move v1, v0

    .line 778
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_1
    aget-object v0, v2, v1

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 690
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 696
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;I)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->M(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;J)V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->i(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->d(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Z)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->B(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->re:Z

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 545
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 551
    :cond_0
    return-void

    .line 543
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 567
    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v2, p3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->rc:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 570
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->rd:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 571
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qU:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 572
    if-eqz p1, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 579
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 573
    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fc()V

    return-void
.end method

.method private c(II)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 871
    sparse-switch p1, :sswitch_data_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 873
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fg()V

    goto :goto_0

    .line 878
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 880
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 884
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->deleteTempGallery()V

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->finish()V

    goto :goto_0

    .line 889
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 890
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 894
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->re:Z

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 897
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fc()V

    goto :goto_0

    .line 899
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fh()V

    goto :goto_0

    .line 905
    :sswitch_4
    if-eq p2, v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->finish()V

    goto :goto_0

    .line 910
    :sswitch_5
    if-ne p2, v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fk()V

    .line 912
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fb()V

    goto :goto_0

    .line 916
    :sswitch_6
    if-ne p2, v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 918
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fh()V

    goto/16 :goto_0

    .line 920
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fj()V

    goto/16 :goto_0

    .line 871
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x6a -> :sswitch_3
        0x6b -> :sswitch_6
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic c(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ff()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qU:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private d(Landroid/preference/Preference;)V
    .locals 2

    .prologue
    .line 554
    new-instance v0, Lcom/android/settings/em;

    invoke-direct {v0, p0}, Lcom/android/settings/em;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    .line 562
    const v1, 0x7f090e36

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method static synthetic e(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fj()V

    return-void
.end method

.method private fa()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 458
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 459
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    aget-object v5, v3, v0

    aget-object v6, v4, v0

    invoke-direct {p0, v2, v5, v6}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 460
    aget-object v2, v3, v0

    aget-object v5, v4, v0

    invoke-direct {p0, v2, v5}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 459
    goto :goto_1

    .line 462
    :cond_1
    return-void
.end method

.method private fb()V
    .locals 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->re:Z

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qZ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 589
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fa()V

    .line 591
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qV:Landroid/preference/Preference;

    const v1, 0x7f090cdc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qW:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 600
    :goto_1
    return-void

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fd()V

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qV:Landroid/preference/Preference;

    const v1, 0x7f090e32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 595
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qW:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qU:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private fc()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 604
    const v0, 0x7f090e48

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->N(I)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private fd()V
    .locals 6

    .prologue
    .line 633
    new-instance v0, Lcom/android/settings/cu;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cu;-><init>(Landroid/content/Context;)V

    .line 634
    invoke-virtual {v0}, Lcom/android/settings/cu;->dE()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    .line 636
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    new-instance v1, Lcom/android/settings/en;

    invoke-direct {v1, p0}, Lcom/android/settings/en;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 647
    new-instance v2, Lcom/android/settings/eo;

    invoke-direct {v2, p0}, Lcom/android/settings/eo;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qZ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 664
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 668
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settings_fingerprint_id_prefix_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090e38

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 676
    :cond_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 677
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qZ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 664
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 682
    :cond_1
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 683
    const-string v1, "add_fingerprint"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 684
    const v1, 0x7f090e39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 685
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 686
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qZ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 687
    return-void
.end method

.method private fe()Z
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private ff()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_secure_after_timeout"

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 736
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 738
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    new-array v3, v5, [Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_secure_after_timeout"

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 743
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/settings/ep;

    invoke-direct {v3, p0}, Lcom/android/settings/ep;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 761
    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->i(J)V

    .line 762
    return-void
.end method

.method private fh()V
    .locals 3

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 929
    return-void
.end method

.method private fi()V
    .locals 3

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->M(I)V

    .line 963
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 936
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fj()V

    goto :goto_0

    .line 940
    :cond_2
    new-instance v0, Lcom/android/settings/ei;

    invoke-direct {v0, p0}, Lcom/android/settings/ei;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    .line 956
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e49

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e4a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e4b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private fj()V
    .locals 3

    .prologue
    .line 966
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 967
    const-string v1, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/16 v2, 0x6a

    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 969
    return-void
.end method

.method private fk()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 992
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/security/MiuiLockPatternUtils;->clearLock(Z)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/security/MiuiLockPatternUtils;->setLockScreenDisabled(Z)V

    .line 995
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vpn_password_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->cJ:Landroid/security/KeyStore;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 1002
    :cond_1
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->re:Z

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v4, p1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v4, p2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    new-instance v0, Lcom/android/settings/ej;

    invoke-direct {v0, p0}, Lcom/android/settings/ej;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v1, v2

    .line 489
    :goto_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qU:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qU:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 491
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 497
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 498
    if-ne v1, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ra:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    .line 502
    :cond_2
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 503
    if-ne v1, v6, :cond_4

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 489
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v3, v2

    .line 503
    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 625
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 626
    const-string v0, "extra_fingerprint_key"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "extra_fingerprint_title"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-class v0, Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v5, 0x7f090e38

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 630
    return-void
.end method

.method private i(J)V
    .locals 5

    .prologue
    .line 765
    const v0, 0x7f090e12

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 767
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 768
    const v0, 0x7f090e11

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 866
    if-eqz p2, :cond_0

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 867
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->c(II)V

    .line 868
    return-void

    :cond_0
    move v2, v1

    .line 866
    goto :goto_0

    :cond_1
    move v0, v1

    .line 867
    goto :goto_1
.end method

.method public fg()V
    .locals 3

    .prologue
    .line 853
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 854
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 856
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 860
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 861
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->c(II)V

    .line 862
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 717
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 718
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->cJ:Landroid/security/KeyStore;

    .line 720
    new-instance v0, Lcom/android/settings/cu;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cu;-><init>(Landroid/content/Context;)V

    .line 721
    invoke-virtual {v0}, Lcom/android/settings/cu;->dD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->re:Z

    .line 723
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fe()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 724
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->M(I)V

    .line 726
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 790
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 792
    const-string v2, "turn_off_security_lock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fi()V

    .line 849
    :cond_0
    :goto_0
    return v0

    .line 794
    :cond_1
    const-string v2, "biometric_weak_improve_matching"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 795
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v3, v3}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fg()V

    goto :goto_0

    .line 799
    :cond_2
    const-string v2, "visiblepattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 801
    :cond_3
    const-string v2, "lock_screen_unlock_show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 802
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 803
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    new-instance v1, Lcom/android/settings/eq;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/eq;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Landroid/preference/CheckBoxPreference;)V

    .line 817
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090e09

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09054e

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09054f

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 824
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 826
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_lock_before_unlock"

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 831
    :cond_5
    const-string v2, "unlock_tactile_feedback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 834
    const-string v2, "biometric_weak_liveliness"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 835
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 836
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto/16 :goto_0

    .line 838
    :cond_6
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 839
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v3, v3}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/security/MiuiLockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 842
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 846
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const v6, 0x7f06006e

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 321
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 328
    :cond_0
    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->addPreferencesFromResource(I)V

    .line 330
    const-string v0, "visiblepattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qR:Landroid/preference/CheckBoxPreference;

    .line 331
    const-string v0, "biometric_weak_liveliness"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qQ:Landroid/preference/CheckBoxPreference;

    .line 332
    const-string v0, "turn_off_security_lock"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qV:Landroid/preference/Preference;

    .line 333
    const-string v0, "change_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qW:Landroid/preference/Preference;

    .line 334
    const-string v0, "lock_screen_common_options"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    .line 338
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 340
    sparse-switch v0, :sswitch_data_0

    move-object v4, v2

    move v5, v3

    .line 360
    :goto_0
    if-eq v5, v3, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    move v0, v1

    .line 364
    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 365
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 366
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    iget-object v8, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :sswitch_0
    const v4, 0x7f06007a

    .line 344
    const-string v0, "numerical"

    move v5, v4

    move-object v4, v0

    .line 345
    goto :goto_0

    .line 348
    :sswitch_1
    const-string v0, "facial"

    move-object v4, v0

    move v5, v6

    .line 349
    goto :goto_0

    .line 351
    :sswitch_2
    const v4, 0x7f060078

    .line 352
    const-string v0, "pattern"

    move v5, v4

    move-object v4, v0

    .line 353
    goto :goto_0

    .line 357
    :sswitch_3
    const-string v0, "mixed"

    move-object v4, v0

    move v5, v3

    goto :goto_0

    .line 372
    :cond_1
    if-ne v5, v6, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qR:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_2
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qS:Landroid/preference/CheckBoxPreference;

    .line 381
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qS:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qX:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_3
    const-string v0, "lock_screen_unlock_show"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 388
    if-eqz v0, :cond_4

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "show_lock_before_unlock"

    sget-boolean v6, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    invoke-static {v2, v5, v6}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 393
    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 396
    :cond_4
    const-string v0, "apply_password_to"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qU:Landroid/preference/PreferenceCategory;

    .line 397
    const-string v0, "apply_fingerprint_to"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qY:Landroid/preference/PreferenceCategory;

    .line 398
    const-string v0, "fingerprint_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qZ:Landroid/preference/PreferenceCategory;

    .line 400
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 401
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qR:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 402
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    :cond_5
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qQ:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 405
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    :cond_6
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qS:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 408
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    :cond_7
    const-string v0, "change_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->rb:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 413
    const-string v0, "change_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    :cond_8
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 416
    const-string v0, "change_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 418
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 419
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    move v2, v1

    .line 420
    :goto_3
    array-length v6, v5

    if-ge v2, v6, :cond_10

    .line 421
    aget-object v6, v5, v2

    const-string v7, "facial"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 426
    :goto_4
    if-eq v2, v3, :cond_e

    .line 428
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 429
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 430
    :goto_5
    array-length v7, v4

    if-ge v1, v7, :cond_d

    .line 431
    if-ne v1, v2, :cond_b

    .line 430
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v2, v1

    .line 393
    goto/16 :goto_2

    .line 420
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 433
    :cond_b
    if-ge v1, v2, :cond_c

    .line 434
    aget-object v7, v4, v1

    aput-object v7, v3, v1

    .line 435
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    goto :goto_6

    .line 437
    :cond_c
    add-int/lit8 v7, v1, -0x1

    aget-object v8, v4, v1

    aput-object v8, v3, v7

    .line 438
    add-int/lit8 v7, v1, -0x1

    aget-object v8, v5, v1

    aput-object v8, v6, v7

    goto :goto_6

    .line 441
    :cond_d
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 446
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->fb()V

    .line 448
    const-string v0, "lock_screen_secure_after_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    .line 449
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->qT:Landroid/preference/ListPreference;

    if-eqz v0, :cond_f

    .line 450
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->ff()V

    .line 452
    :cond_f
    return-void

    :cond_10
    move v2, v3

    goto :goto_4

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
    .end sparse-switch
.end method
