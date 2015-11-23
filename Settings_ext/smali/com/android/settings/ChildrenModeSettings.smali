.class public Lcom/android/settings/ChildrenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChildrenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static cu:I

.field public static final o:Ljava/util/HashSet;


# instance fields
.field private cA:Z

.field private cv:Landroid/preference/Preference;

.field private cw:Landroid/preference/CheckBoxPreference;

.field private cx:Landroid/preference/CheckBoxPreference;

.field private cy:Landroid/preference/PreferenceGroup;

.field private cz:Landroid/preference/CheckBoxPreference;

.field private i:Landroid/content/pm/PackageManager;

.field private m:Lmiui/security/SecurityManager;

.field private final n:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/ChildrenModeSettings;->cu:I

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    .line 67
    sget-object v0, Lcom/android/settings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/settings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/af;

    invoke-direct {v0, p0}, Lcom/android/settings/af;-><init>(Lcom/android/settings/ChildrenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->n:Ljava/util/Comparator;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/ChildrenModeSettings;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChildrenModeSettings;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->n:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 195
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ah;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/settings/ah;-><init>(Lcom/android/settings/ChildrenModeSettings;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/ChildrenModeSettings;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/ChildrenModeSettings;->l(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private ag()V
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    const-string v1, "childrenmode"

    sget v2, Lcom/android/settings/ChildrenModeSettings;->cu:I

    invoke-static {p0, v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->showSetPasswordConfirmDialog(Landroid/app/Fragment;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method private ah()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/ChildrenModeSettings;)Lmiui/security/SecurityManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->m:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/ChildrenModeSettings;)Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->addPreferencesFromResource(I)V

    .line 150
    const-string v0, "tips"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cv:Landroid/preference/Preference;

    .line 151
    const-string v0, "children_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cw:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v0, "deny_sms_permission"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v0, "access_apps_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cy:Landroid/preference/PreferenceGroup;

    .line 154
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->ah()Landroid/content/Intent;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cz:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/ChildrenModeSettings;->cu:I

    if-ne p1, v0, :cond_0

    .line 131
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cz:Landroid/preference/CheckBoxPreference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChildrenModeSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->m:Lmiui/security/SecurityManager;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->h()V

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 142
    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    if-eq v1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.CHILDREN_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 199
    check-cast p2, Ljava/lang/Boolean;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/ChildrenModeSettings;->cz:Landroid/preference/CheckBoxPreference;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->ag()V

    .line 203
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cw:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cy:Landroid/preference/PreferenceGroup;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 209
    iget-object v2, p0, Lcom/android/settings/ChildrenModeSettings;->cv:Landroid/preference/Preference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090e19

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "children_mode_enabled"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    move v0, v1

    .line 212
    goto :goto_0

    .line 209
    :cond_2
    const v0, 0x7f090e1a

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "children_mode_deny_sms_permission"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    move v0, v1

    .line 215
    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lcom/android/settings/ChildrenModeSettings;->m:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lmiui/security/SecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "children_mode_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cw:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cy:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->cv:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090e19

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "children_mode_deny_sms_permission"

    invoke-static {v0, v1, v4}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cx:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->cA:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->cy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v3, Lcom/android/settings/ag;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/settings/ag;-><init>(Lcom/android/settings/ChildrenModeSettings;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/android/settings/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void

    .line 86
    :cond_1
    const v0, 0x7f090e1a

    goto :goto_0
.end method
