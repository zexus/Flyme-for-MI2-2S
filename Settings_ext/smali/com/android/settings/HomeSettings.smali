.class public Lcom/android/settings/HomeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HomeSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final gG:Lcom/android/settings/search/l;


# instance fields
.field private bt:Landroid/preference/PreferenceGroup;

.field private bu:Ljava/util/ArrayList;

.field private i:Landroid/content/pm/PackageManager;

.field private mA:Z

.field private mB:Lcom/android/settings/cM;

.field mC:Landroid/view/View$OnClickListener;

.field mD:Landroid/view/View$OnClickListener;

.field private mx:[Landroid/content/ComponentName;

.field private my:Lcom/android/settings/cL;

.field private final mz:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/android/settings/cK;

    invoke-direct {v0}, Lcom/android/settings/cK;-><init>()V

    sput-object v0, Lcom/android/settings/HomeSettings;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    .line 89
    new-instance v0, Lcom/android/settings/cM;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cM;-><init>(Lcom/android/settings/HomeSettings;Lcom/android/settings/cH;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mB:Lcom/android/settings/cM;

    .line 97
    new-instance v0, Lcom/android/settings/cH;

    invoke-direct {v0, p0}, Lcom/android/settings/cH;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mC:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/android/settings/cI;

    invoke-direct {v0, p0}, Lcom/android/settings/cI;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mD:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mz:Landroid/content/IntentFilter;

    .line 93
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mz:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mz:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private D(I)Z
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->dW()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/HomeSettings;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bu:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/HomeSettings;)Lcom/android/settings/cL;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    return-object v0
.end method

.method private c(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 245
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v1}, Lcom/android/settings/HomeSettings;->D(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private dW()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 175
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v14

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 179
    iput-object v3, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    .line 180
    iget-object v3, p0, Lcom/android/settings/HomeSettings;->bt:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/HomeSettings;->bu:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/HomeSettings;->mx:[Landroid/content/ComponentName;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "support_managed_profiles"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 186
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->dX()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v11, v1

    :goto_0
    move v12, v0

    move v4, v0

    .line 188
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 189
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 190
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 191
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mx:[Landroid/content/ComponentName;

    aput-object v3, v1, v12

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 195
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 198
    if-eqz v11, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/HomeSettings;->c(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    new-instance v0, Lcom/android/settings/cL;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f09036b

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/cL;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    .line 207
    :goto_2
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->bu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->bt:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    invoke-virtual {v3, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iput-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    .line 212
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 188
    :goto_3
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    :cond_2
    move v11, v0

    .line 186
    goto :goto_0

    .line 203
    :cond_3
    new-instance v0, Lcom/android/settings/cL;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/cL;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "HomeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem dealing with activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    invoke-virtual {v0}, Lcom/android/settings/cL;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 223
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/cJ;

    invoke-direct {v1, p0}, Lcom/android/settings/cJ;-><init>(Lcom/android/settings/HomeSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_6
    return-void
.end method

.method private dX()Z
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 233
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 234
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 236
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/android/settings/cL;)V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/cL;->setChecked(Z)V

    .line 120
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/cL;->setChecked(Z)V

    .line 121
    iput-object p1, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    .line 123
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mz:Landroid/content/IntentFilter;

    const/high16 v2, 0x100000

    iget-object v3, p0, Lcom/android/settings/HomeSettings;->mx:[Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/cL;->mF:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 127
    return-void
.end method

.method b(Lcom/android/settings/cL;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/cL;->mK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    const-string v1, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-boolean v1, p1, Lcom/android/settings/cL;->mI:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 135
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/HomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->dW()V

    .line 146
    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->my:Lcom/android/settings/cL;

    if-nez v0, :cond_0

    move v1, v2

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cL;

    .line 154
    iget-boolean v3, v0, Lcom/android/settings/cL;->mJ:Z

    if-eqz v3, :cond_3

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->a(Lcom/android/settings/cL;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/HomeSettings;->mA:Z

    if-eqz v0, :cond_1

    .line 167
    iput-boolean v2, p0, Lcom/android/settings/HomeSettings;->mA:Z

    .line 168
    invoke-static {}, Lcom/android/settings/gh;->gL()V

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->gW()V

    .line 172
    :cond_2
    return-void

    .line 152
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->addPreferencesFromResource(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    .line 261
    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->bt:Landroid/preference/PreferenceGroup;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    const-string v2, "show"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/HomeSettings;->mA:Z

    .line 265
    return-void

    :cond_0
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mB:Lcom/android/settings/cM;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mB:Lcom/android/settings/cM;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->dW()V

    .line 279
    return-void
.end method
