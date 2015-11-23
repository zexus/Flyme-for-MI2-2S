.class public Lcom/android/settings/display/MiuiScreenSaverFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiScreenSaverFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private UW:Landroid/preference/CheckBoxPreference;

.field private UX:Lmiui/preference/ValuePreference;

.field private UY:Landroid/preference/CheckBoxPreference;

.field private UZ:Landroid/preference/ListPreference;

.field private Va:Lcom/miui/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/MiuiScreenSaverFragment;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->oB()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/MiuiScreenSaverFragment;)Lcom/miui/a/a/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    return-object v0
.end method

.method private b(Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "picture_source"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UX:Lmiui/preference/ValuePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UX:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UX:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v1}, Lcom/miui/a/a/b;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v1}, Lcom/miui/a/a/b;->yA()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v1}, Lcom/miui/a/a/b;->yB()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/b;->yB()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->bv(I)V

    .line 100
    return-void
.end method

.method private bv(I)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method static synthetic c(Lcom/android/settings/display/MiuiScreenSaverFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private c(Landroid/preference/PreferenceGroup;)V
    .locals 1

    .prologue
    .line 109
    const-string v0, "picture_source"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UX:Lmiui/preference/ValuePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_0
    return-void
.end method

.method private oA()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/b;->yz()Z

    move-result v1

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    const-string v0, "miui_screensaver"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->b(Landroid/preference/PreferenceGroup;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->c(Landroid/preference/PreferenceGroup;)V

    goto :goto_0
.end method

.method private oB()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "pick-album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v1, "pick-album-for-screensaver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/display/MiuiScreenSaverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 130
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 131
    const-string v0, "pick-result-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "pick-result-display-name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v2, v0}, Lcom/miui/a/a/b;->ch(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v0, v1}, Lcom/miui/a/a/b;->setDisplayName(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/a/a/b;->bw(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a;->bR(Landroid/content/Context;)V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->oA()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->addPreferencesFromResource(I)V

    .line 48
    new-instance v0, Lcom/miui/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/a/a/b;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    .line 50
    const-string v0, "screensaver_activate_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UW:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v0, "picture_source"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UX:Lmiui/preference/ValuePreference;

    .line 52
    const-string v0, "screensaver_activate_only_charging"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    .line 53
    const-string v0, "slideshow_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UX:Lmiui/preference/ValuePreference;

    new-instance v1, Lcom/android/settings/display/p;

    invoke-direct {v1, p0}, Lcom/android/settings/display/p;-><init>(Lcom/android/settings/display/MiuiScreenSaverFragment;)V

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UW:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 146
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v0}, Lcom/miui/a/a/b;->yy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->oB()V

    move v0, v1

    .line 190
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/a/a/b;->bw(Z)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->oA()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a;->bR(Landroid/content/Context;)V

    .line 190
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/a/a/b;->bw(Z)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->oA()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/a/a;->bR(Landroid/content/Context;)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UY:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    .line 164
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 165
    if-nez v0, :cond_4

    .line 166
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090d0c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090d0d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/display/q;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/display/q;-><init>(Lcom/android/settings/display/MiuiScreenSaverFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v1, v0}, Lcom/miui/a/a/b;->bx(Z)V

    goto :goto_1

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->UZ:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/display/MiuiScreenSaverFragment;->Va:Lcom/miui/a/a/b;

    invoke-virtual {v1, v0}, Lcom/miui/a/a/b;->dJ(I)V

    .line 188
    invoke-direct {p0, v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->bv(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->oA()V

    .line 74
    return-void
.end method
