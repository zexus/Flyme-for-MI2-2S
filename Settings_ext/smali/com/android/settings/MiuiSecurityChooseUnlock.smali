.class public Lcom/android/settings_ext/MiuiSecurityChooseUnlock;
.super Lcom/android/settings_ext/Settings;
.source "MiuiSecurityChooseUnlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ext/Settings;-><init>()V

    .line 203
    return-void
.end method

.method private static a(ILandroid/app/admin/DevicePolicyManager;)I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 175
    if-ge p0, v0, :cond_0

    move p0, v0

    .line 178
    :cond_0
    return p0
.end method

.method private static a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings_ext/SettingsPreferenceFragment;)I
    .locals 4

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;)I

    move-result v0

    .line 159
    invoke-virtual {p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->h(I)I

    move-result v0

    .line 164
    :cond_0
    invoke-static {v0, p1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->b(ILandroid/app/admin/DevicePolicyManager;)I

    move-result v1

    .line 165
    if-le v1, v0, :cond_1

    .line 166
    const v2, 0x8000

    if-ne v0, v2, :cond_1

    .line 170
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/android/settings_ext/SettingsPreferenceFragment;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 143
    new-instance v3, Lcom/android/settings_ext/ap;

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings_ext/ap;-><init>(Landroid/app/Activity;)V

    .line 145
    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v4, ":settings:show_fragment_title"

    const v5, 0x7f0901cc

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    invoke-virtual {v3}, Lcom/android/settings_ext/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakEverChosen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 150
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v4, "showTutorial"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 153
    const-string v1, "PendingIntent"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    return-object v3

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0
.end method

.method public static a(ILcom/android/settings_ext/SettingsPreferenceFragment;)V
    .locals 9

    .prologue
    const/high16 v2, 0x40000

    const/high16 v6, 0x20000

    const/16 v8, 0xc9

    const/16 v7, 0xca

    const/4 v1, 0x4

    .line 95
    invoke-virtual {p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 98
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 100
    invoke-static {p0, v0, p1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings_ext/SettingsPreferenceFragment;)I

    move-result v3

    .line 101
    if-lt v3, v6, :cond_5

    .line 102
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 103
    if-ge v4, v1, :cond_0

    move v4, v1

    .line 106
    :cond_0
    if-le v3, v2, :cond_8

    .line 110
    :goto_0
    if-eq v2, v6, :cond_1

    const/high16 v3, 0x30000

    if-ne v2, v3, :cond_3

    :cond_1
    move v0, v1

    .line 115
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v6, Lcom/android/settings_ext/ChooseLockPassword;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 116
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v2, "lockscreen.password_min"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v2, "lockscreen.password_max"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    if-eqz v5, :cond_4

    .line 121
    invoke-virtual {p1, v1, v8}, Lcom/android/settings_ext/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    :cond_2
    :goto_2
    return-void

    .line 113
    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p1, v1, v7}, Lcom/android/settings_ext/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 125
    :cond_5
    const/high16 v0, 0x10000

    if-ne v3, v0, :cond_7

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/MiuiChooseLockPattern;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    if-eqz v5, :cond_6

    .line 131
    invoke-virtual {p1, v0, v8}, Lcom/android/settings_ext/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {p1, v0, v7}, Lcom/android/settings_ext/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 135
    :cond_7
    const v0, 0x8000

    if-ne v3, v0, :cond_2

    .line 136
    invoke-static {p1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Lcom/android/settings_ext/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_0
.end method

.method public static a(Lcom/android/settings_ext/SettingsPreferenceFragment;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 80
    :sswitch_0
    const-class v0, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0904e4

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 88
    :sswitch_1
    const-class v0, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0904e3

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 78
    nop

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

.method public static a(Lcom/android/settings_ext/SettingsPreferenceFragment;IIII)V
    .locals 6

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v0, "lockscreen.password_min"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string v0, "lockscreen.password_type"

    invoke-virtual {v5, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-class v0, Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0904e0

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/ChooseLockPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static b(ILandroid/app/admin/DevicePolicyManager;)I
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 183
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    if-eqz v0, :cond_1

    .line 191
    :cond_1
    return p0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings_ext/SettingsPreferenceFragment;)I
    .locals 1

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings_ext/SettingsPreferenceFragment;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V
    .locals 6

    .prologue
    .line 42
    const-class v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0904e1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 44
    return-void
.end method

.method public static c(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 47
    const/high16 v0, 0x20000

    invoke-static {p0, p1, v1, v1, v0}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;IIII)V

    .line 48
    return-void
.end method

.method public static d(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000

    const/4 v1, 0x4

    .line 51
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 53
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 54
    if-ge v2, v1, :cond_0

    move v0, v1

    .line 56
    :goto_0
    invoke-static {p0, p1, v0, v3, v4}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;IIII)V

    .line 57
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static h(I)I
    .locals 2

    .prologue
    const/high16 v0, 0x10000

    .line 195
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    if-ge p0, v0, :cond_0

    move p0, v0

    .line 200
    :cond_0
    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ext/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 37
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ext/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method
