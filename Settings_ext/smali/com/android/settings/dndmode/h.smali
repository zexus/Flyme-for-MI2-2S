.class public Lcom/android/settings/dndmode/h;
.super Landroid/preference/PreferenceFragment;
.source "AutoTimeSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private WA:Lcom/android/settings/dndmode/LabelPreference;

.field private WB:Lcom/android/settings/dndmode/RepeatPreference;

.field private WC:Landroid/preference/CheckBoxPreference;

.field private WD:I

.field private WE:I

.field private WF:Z

.field private WG:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private WH:Landroid/database/ContentObserver;

.field private Wx:Landroid/preference/PreferenceScreen;

.field private Wy:Landroid/preference/PreferenceCategory;

.field private Wz:Lcom/android/settings/dndmode/LabelPreference;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings/dndmode/i;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/i;-><init>(Lcom/android/settings/dndmode/h;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->WG:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    .line 62
    new-instance v0, Lcom/android/settings/dndmode/j;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dndmode/j;-><init>(Lcom/android/settings/dndmode/h;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->WH:Landroid/database/ContentObserver;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/h;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/android/settings/dndmode/h;->WD:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/dndmode/h;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/settings/dndmode/h;->WF:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/h;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/h;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/h;->bC(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bC(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/dndmode/h;->bD(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bD(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/dndmode/h;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings/dndmode/h;->WD:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/dndmode/h;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/android/settings/dndmode/h;->WE:I

    return p1
.end method

.method static synthetic d(Lcom/android/settings/dndmode/h;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->Wz:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/dndmode/h;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings/dndmode/h;->WE:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/dndmode/h;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WA:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/dndmode/h;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WC:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public aK(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "quietWritband"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.antispam"

    const-string v3, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 190
    const-string v1, "mac"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/dndmode/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    .line 83
    const-string v0, "time_setting_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->Wx:Landroid/preference/PreferenceScreen;

    .line 84
    const-string v0, "key_quiet_wristband_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->Wy:Landroid/preference/PreferenceCategory;

    .line 85
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/h;->WD:I

    .line 86
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/h;->WE:I

    .line 87
    const-string v0, "start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->Wz:Lcom/android/settings/dndmode/LabelPreference;

    .line 88
    const-string v0, "end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->WA:Lcom/android/settings/dndmode/LabelPreference;

    .line 89
    const-string v0, "repeat"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/RepeatPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->WB:Lcom/android/settings/dndmode/RepeatPreference;

    .line 90
    const-string v0, "key_quiet_wristband"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->WC:Landroid/preference/CheckBoxPreference;

    .line 92
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->Wz:Lcom/android/settings/dndmode/LabelPreference;

    iget v1, p0, Lcom/android/settings/dndmode/h;->WD:I

    invoke-direct {p0, v1}, Lcom/android/settings/dndmode/h;->bC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WA:Lcom/android/settings/dndmode/LabelPreference;

    iget v1, p0, Lcom/android/settings/dndmode/h;->WE:I

    invoke-direct {p0, v1}, Lcom/android/settings/dndmode/h;->bC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/android/settings/dndmode/b;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/settings/dndmode/b;-><init>(I)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dndmode/b;->o(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/settings/dndmode/h;->WB:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/dndmode/RepeatPreference;->setLabel(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->WB:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/dndmode/RepeatPreference;->b(Lcom/android/settings/dndmode/b;)V

    .line 98
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->Wz:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WA:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_wristband"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dndmode/h;->WH:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->Wy:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->WH:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->WB:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/settings/dndmode/RepeatPreference;->oW()Lcom/android/settings/dndmode/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dndmode/b;->oO()I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietRepeatType(Landroid/content/Context;I)V

    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 130
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->aK(Landroid/content/Context;)V

    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 123
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WC:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->aK(Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return v4

    .line 172
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "miui.bluetooth.extra.MIBLE_PROPERTY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "quietWritband"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.antispam"

    const-string v3, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    const-string v1, "check"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dndmode/h;->WG:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/settings/dndmode/h;->WD:I

    div-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/android/settings/dndmode/h;->WD:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->Wz:Lcom/android/settings/dndmode/LabelPreference;

    if-ne p1, v1, :cond_2

    .line 144
    iput-boolean v6, p0, Lcom/android/settings/dndmode/h;->WF:Z

    .line 145
    iget v1, p0, Lcom/android/settings/dndmode/h;->WD:I

    if-lez v1, :cond_1

    .line 146
    iget v1, p0, Lcom/android/settings/dndmode/h;->WD:I

    div-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/android/settings/dndmode/h;->WD:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 150
    :goto_0
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    .line 160
    :cond_0
    :goto_1
    return v6

    .line 148
    :cond_1
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->WA:Lcom/android/settings/dndmode/LabelPreference;

    if-ne p1, v1, :cond_0

    .line 152
    iput-boolean v5, p0, Lcom/android/settings/dndmode/h;->WF:Z

    .line 153
    iget v1, p0, Lcom/android/settings/dndmode/h;->WE:I

    if-lez v1, :cond_3

    .line 154
    iget v1, p0, Lcom/android/settings/dndmode/h;->WE:I

    div-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/android/settings/dndmode/h;->WE:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 158
    :goto_2
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->WC:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQueitWristband(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 117
    return-void
.end method
