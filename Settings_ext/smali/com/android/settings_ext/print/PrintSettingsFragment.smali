.class public Lcom/android/settings_ext/print/PrintSettingsFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings_ext/bP;
.implements Lcom/android/settings_ext/search/k;


# static fields
.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private final Al:Lcom/android/internal/content/PackageMonitor;

.field private Hh:Lcom/android/settings_ext/hj;

.field private final aho:Lcom/android/settings_ext/print/r;

.field private ahp:Landroid/preference/PreferenceCategory;

.field private ahq:Landroid/preference/PreferenceCategory;

.field private ahr:Lcom/android/settings_ext/print/o;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lcom/android/settings_ext/print/n;

    invoke-direct {v0}, Lcom/android/settings_ext/print/n;-><init>()V

    sput-object v0, Lcom/android/settings_ext/print/PrintSettingsFragment;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Lcom/android/settings_ext/print/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/print/s;-><init>(Lcom/android/settings_ext/print/PrintSettingsFragment;Lcom/android/settings_ext/print/l;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Al:Lcom/android/internal/content/PackageMonitor;

    .line 107
    new-instance v0, Lcom/android/settings_ext/print/l;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/print/l;-><init>(Lcom/android/settings_ext/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/android/settings_ext/print/m;

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/print/m;-><init>(Lcom/android/settings_ext/print/PrintSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->aho:Lcom/android/settings_ext/print/r;

    .line 449
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->hK()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahp:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private hK()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "print_services_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/print/t;->bk(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.printservice.PrintService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x84

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 212
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    .line 213
    :goto_1
    if-ge v1, v5, :cond_4

    .line 214
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 228
    const-class v9, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 231
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 232
    if-eqz v9, :cond_3

    .line 233
    const v10, 0x7f09068e

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    :goto_2
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 239
    const-string v11, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v11, "EXTRA_CHECKED"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v9, "EXTRA_TITLE"

    invoke-virtual {v10, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v7

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 248
    const-string v11, "EXTRA_ENABLE_WARNING_TITLE"

    const v12, 0x7f090688

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v9, v13, v2

    invoke-virtual {p0, v12, v13}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v11, "EXTRA_ENABLE_WARNING_MESSAGE"

    const v12, 0x7f090689

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v9, v13, v2

    invoke-virtual {p0, v12, v13}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v9

    .line 254
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 255
    const-string v11, "EXTRA_SETTINGS_TITLE"

    const v12, 0x7f09068c

    invoke-virtual {p0, v12}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v11, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v13, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 264
    const-string v9, "EXTRA_ADD_PRINTERS_TITLE"

    const v11, 0x7f09068d

    invoke-virtual {p0, v11}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v9, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v11, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    const-string v0, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_0

    .line 235
    :cond_3
    const v10, 0x7f09068f

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_5
    return-void
.end method

.method private ri()V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 133
    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahp:Landroid/preference/PreferenceCategory;

    .line 135
    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahq:Landroid/preference/PreferenceCategory;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    new-instance v0, Lcom/android/settings_ext/print/o;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ext/print/o;-><init>(Lcom/android/settings_ext/print/PrintSettingsFragment;Lcom/android/settings_ext/print/l;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahr:Lcom/android/settings_ext/print/o;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->ahr:Lcom/android/settings_ext/print/o;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "print_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const v1, 0x7f090690

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 168
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 169
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 171
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Hh:Lcom/android/settings_ext/hj;

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/hj;->ag(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Al:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->aho:Lcom/android/settings_ext/print/r;

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/print/r;->b(Landroid/content/ContentResolver;)V

    .line 158
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Al:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->aho:Lcom/android/settings_ext/print/r;

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/print/r;->a(Landroid/content/ContentResolver;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->hK()V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 151
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->ri()V

    .line 152
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040059

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 179
    const v1, 0x7f100043

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    const v3, 0x7f09068a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 184
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/hl;->a(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ext/hj;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Hh:Lcom/android/settings_ext/hj;

    .line 186
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Hh:Lcom/android/settings_ext/hj;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 189
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintSettingsFragment;->Hh:Lcom/android/settings_ext/hj;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 190
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->c(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method
