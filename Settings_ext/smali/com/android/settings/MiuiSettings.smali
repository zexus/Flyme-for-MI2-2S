.class public Lcom/android/settings/MiuiSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static rW:Ljava/util/HashSet;


# instance fields
.field private rQ:[I

.field private rR:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private rS:Lmiui/widget/NavigationLayout;

.field private rT:Lcom/android/settings/SettingsFragment;

.field private rU:Ljava/lang/String;

.field private rV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    .line 367
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100350

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100368

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100367

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100361

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100360

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100373

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100374

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10038b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10036c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100369

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10036d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10035c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10036e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10036f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f100351

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    const v1, 0x7f10034f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 118
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rQ:[I

    .line 151
    const-string v0, "com.android.settings.MiuiDeviceInfoSettings"

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->rV:Z

    .line 503
    return-void

    .line 118
    :array_0
    .array-data 4
        0x7f100356
        0x7f100357
        0x7f100353
        0x7f10035b
        0x7f10035c
        0x7f100382
        0x7f10035e
        0x7f100360
        0x7f100362
        0x7f100361
        0x7f100366
        0x7f100367
        0x7f100368
        0x7f100369
        0x7f100363
        0x7f10034e
        0x7f10034f
        0x7f10036b
        0x7f10036c
        0x7f10034b
        0x7f10036d
    .end array-data
.end method

.method private a(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 884
    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    .line 887
    if-lez v5, :cond_2

    .line 888
    invoke-virtual {v4, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 890
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    move v3, v0

    .line 895
    :goto_1
    if-ge v3, v5, :cond_0

    .line 896
    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 895
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 898
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_2
    return v1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 210
    const v0, 0x7f100281

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rS:Lmiui/widget/NavigationLayout;

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rS:Lmiui/widget/NavigationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Lcom/android/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lmiui/R$id;->navigation:I

    iget-object v2, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lmiui/R$id;->navigation:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Lcom/android/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    goto :goto_0
.end method

.method private fr()V
    .locals 4

    .prologue
    .line 182
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->fu()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    goto :goto_0
.end method

.method private fu()V
    .locals 3

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 904
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 905
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    :cond_0
    return-void
.end method


# virtual methods
.method protected c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    .line 200
    :cond_0
    const v0, 0x7f0400fa

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 202
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->d(Landroid/os/Bundle;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 386
    .line 388
    invoke-static {p0}, Lcom/android/settings/fc;->E(Landroid/content/Context;)Z

    move-result v4

    .line 389
    invoke-static {p0}, Lcom/android/settings/fc;->F(Landroid/content/Context;)Z

    move-result v5

    move v2, v3

    .line 390
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1f

    .line 392
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 394
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    .line 395
    sget-object v1, Lcom/android/settings/MiuiSettings;->rW:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->rQ:[I

    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 493
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_20

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_20

    .line 494
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 496
    goto :goto_0

    .line 397
    :cond_2
    const v1, 0x7f10035a

    if-eq v6, v1, :cond_3

    const v1, 0x7f100365

    if-ne v6, v1, :cond_4

    .line 398
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/android/settings/hl;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 399
    :cond_4
    const v1, 0x7f100357

    if-ne v6, v1, :cond_5

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 404
    :cond_5
    const v1, 0x7f100353

    if-ne v6, v1, :cond_6

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 409
    :cond_6
    const v1, 0x7f100377

    if-ne v6, v1, :cond_8

    invoke-static {p0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/eK;->isMultiSimSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 412
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    :cond_8
    const v1, 0x7f10037c

    if-ne v6, v1, :cond_9

    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/eK;->isMultiSimSupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 415
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 416
    :cond_9
    const v1, 0x7f100363

    if-ne v6, v1, :cond_b

    .line 417
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v1

    if-nez v1, :cond_a

    .line 422
    :cond_a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 424
    :cond_b
    const v1, 0x7f100376

    if-ne v6, v1, :cond_c

    .line 425
    invoke-static {p0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/payment/PaymentManager;->isMibiServiceDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 428
    :cond_c
    const v1, 0x7f100385

    if-ne v6, v1, :cond_d

    .line 429
    if-eqz v4, :cond_0

    .line 430
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 432
    :cond_d
    const v1, 0x7f10037e

    if-ne v6, v1, :cond_e

    .line 433
    if-eqz v5, :cond_0

    .line 434
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 436
    :cond_e
    const v1, 0x7f10037d

    if-ne v6, v1, :cond_f

    .line 437
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v1, :cond_0

    .line 438
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 440
    :cond_f
    const v1, 0x7f100359

    if-ne v6, v1, :cond_10

    .line 441
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 442
    :cond_10
    const v1, 0x7f100364

    if-ne v6, v1, :cond_13

    .line 443
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    .line 444
    const/4 v1, 0x0

    .line 445
    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.nfc.hce"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 447
    new-instance v1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->qq()Ljava/util/List;

    move-result-object v1

    .line 450
    :cond_11
    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 451
    :cond_12
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 453
    :cond_13
    const v1, 0x7f10038d

    if-ne v6, v1, :cond_14

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_14

    .line 454
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 455
    :cond_14
    const v1, 0x7f10035d

    if-ne v6, v1, :cond_15

    .line 457
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 458
    :cond_15
    const v1, 0x7f100384

    if-ne v6, v1, :cond_16

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_16

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v1, v7, :cond_16

    .line 459
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 460
    :cond_16
    const v1, 0x7f10036b

    if-eq v6, v1, :cond_0

    .line 463
    const v1, 0x7f10037f

    if-ne v6, v1, :cond_17

    .line 464
    invoke-static {}, Lcom/android/settings/fc;->fL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 467
    :cond_17
    const v1, 0x7f100386

    if-ne v6, v1, :cond_18

    .line 468
    invoke-static {}, Lcom/android/settings/fc;->fL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 471
    :cond_18
    const v1, 0x7f100380

    if-ne v6, v1, :cond_1a

    .line 472
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_19

    invoke-static {}, Lcom/android/settings/fc;->fL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    :cond_19
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 475
    :cond_1a
    const v1, 0x7f100371

    if-eq v6, v1, :cond_1b

    const v1, 0x7f100381

    if-ne v6, v1, :cond_1c

    :cond_1b
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_1c

    .line 476
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 477
    :cond_1c
    const v1, 0x7f100387

    if-ne v6, v1, :cond_1d

    .line 478
    const-string v1, "support_edge_handgrip"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 481
    :cond_1d
    const v1, 0x7f100382

    if-ne v6, v1, :cond_0

    .line 482
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 483
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x7f090ac3

    :goto_3
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 484
    iget v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 483
    :cond_1e
    const v1, 0x7f090360

    goto :goto_3

    .line 497
    :cond_1f
    return-void

    :cond_20
    move v0, v2

    goto/16 :goto_2
.end method

.method public fs()Lcom/android/settings/accounts/AuthenticatorHelper;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method public ft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    return-object v0
.end method

.method public fv()V
    .locals 2

    .prologue
    .line 944
    const v0, 0x7f100281

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    .line 946
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationEanbled(Z)V

    .line 947
    return-void
.end method

.method public fw()V
    .locals 2

    .prologue
    .line 950
    const v0, 0x7f100281

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    .line 952
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationEanbled(Z)V

    .line 953
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->rV:Z

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    .line 810
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 260
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->finish()V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 264
    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/settings/ff;

    if-eqz v2, :cond_1

    .line 266
    check-cast v0, Lcom/android/settings/ff;

    invoke-interface {v0}, Lcom/android/settings/ff;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->finish()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/settings/MiuiSettings;->rV:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rT:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->Z()V

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->rV:Z

    .line 822
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 240
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    .line 248
    const-class v1, Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const-class v1, Lcom/android/settings/applications/ManageApplicationsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    :cond_2
    :goto_0
    return-object v0

    .line 251
    :cond_3
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/hl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 157
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/MiuiSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->Z(Landroid/content/Context;)V

    .line 159
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v3, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings;->c(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->fr()V

    .line 165
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 170
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 171
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    .line 827
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100376

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 828
    invoke-static {p0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/payment/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10037f

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 831
    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.setting.WallpaperSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 833
    :cond_2
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100380

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=theme&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&miback=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&B.REQUEST_PREFERENCE_SYTLE=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pageKey1=CompoundLocal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 842
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 847
    :cond_3
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100375

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 848
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 849
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 851
    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    .line 853
    :cond_5
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100371

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 854
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 855
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 862
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 864
    :cond_6
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 865
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->a(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    :cond_7
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v7, 0x0

    iget v8, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget v9, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto/16 :goto_0

    .line 870
    :cond_8
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 871
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10037c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100377

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 872
    :cond_9
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    :cond_a
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 282
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 284
    sget v1, Lmiui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 295
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 297
    sget v1, Lmiui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings;->setIntent(Landroid/content/Intent;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->rV:Z

    .line 178
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->fr()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->finish()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 963
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    .line 964
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 965
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 957
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->rU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 959
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

    .prologue
    .line 912
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 913
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 3

    .prologue
    .line 918
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 919
    invoke-super/range {p0 .. p6}, Lmiui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 941
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 923
    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 924
    if-nez v0, :cond_3

    .line 925
    if-lez p5, :cond_2

    .line 926
    if-nez p2, :cond_1

    .line 927
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 929
    :cond_1
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 931
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 933
    :cond_3
    if-eqz p3, :cond_4

    .line 934
    invoke-virtual {v0, p3, p4}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 937
    :cond_4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 938
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 939
    sget v2, Lmiui/R$id;->content:I

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 940
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
