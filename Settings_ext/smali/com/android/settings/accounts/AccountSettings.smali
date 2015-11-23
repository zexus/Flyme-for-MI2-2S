.class public Lcom/android/settings_ext/accounts/AccountSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ext/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private BA:Landroid/preference/Preference;

.field private BB:[Ljava/lang/String;

.field private BC:I

.field private By:Landroid/util/SparseArray;

.field private Bz:Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private aU:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;Lcom/android/settings_ext/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->Bz:Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BC:I

    .line 537
    return-void
.end method

.method private X(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 286
    const v1, 0x7f0907da

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 287
    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 288
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 289
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 290
    return-object v0
.end method

.method private Y(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    const v1, 0x7f0907dc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 296
    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 297
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 298
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 299
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    return-object v0
.end method

.method private a(Lcom/android/settings_ext/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 358
    invoke-virtual {p1}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->ik()[Ljava/lang/String;

    move-result-object v10

    .line 359
    new-instance v11, Ljava/util/ArrayList;

    array-length v0, v10

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v8

    .line 362
    :goto_0
    array-length v0, v10

    if-ge v7, v0, :cond_4

    .line 363
    aget-object v12, v10, v7

    .line 365
    invoke-direct {p0, p1, v12}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Lcom/android/settings_ext/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v12}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 369
    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v12, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 375
    array-length v0, v1

    if-ne v0, v9, :cond_2

    invoke-virtual {p1, v12}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v9

    .line 378
    :goto_2
    if-eqz v0, :cond_3

    .line 379
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 380
    const-string v0, "account"

    aget-object v1, v1, v8

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 382
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 384
    new-instance v0, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/android/settings_ext/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v12}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v12}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v8

    .line 375
    goto :goto_2

    .line 388
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 389
    const-string v0, "account_type"

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "account_label"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    new-instance v0, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v12}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 401
    :cond_4
    new-instance v0, Lcom/android/settings_ext/accounts/AccountSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/accounts/AccountSettings$2;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 407
    return-object v11
.end method

.method private a(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 5

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 261
    new-instance v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings_ext/accounts/AccountSettings$1;)V

    .line 262
    iput-object p1, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BN:Landroid/content/pm/UserInfo;

    .line 263
    if-eqz p2, :cond_3

    .line 264
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    .line 265
    iget-object v3, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09038c

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 267
    iget-object v0, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings_ext/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v0, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BM:Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    .line 274
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    const-string v3, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, v1}, Lcom/android/settings_ext/accounts/AccountSettings;->X(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BK:Landroid/preference/Preference;

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-direct {p0, v1}, Lcom/android/settings_ext/accounts/AccountSettings;->Y(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BL:Landroid/preference/Preference;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    return-void

    .line 265
    :cond_2
    const v0, 0x7f09038b

    goto :goto_0

    .line 269
    :cond_3
    iput-object p3, v2, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    goto :goto_1
.end method

.method private a(Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 332
    iget-object v1, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BN:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BM:Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    iget-object v2, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BN:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Lcom/android/settings_ext/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 336
    :goto_0
    if-ge v1, v3, :cond_0

    .line 337
    iget-object v4, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 336
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BK:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BK:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BL:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BL:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_2
    return-void

    .line 344
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BA:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BA:Landroid/preference/Preference;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BA:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BA:Landroid/preference/Preference;

    const v1, 0x7f0907db

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 349
    iget-object v0, p1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BA:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private a(Lcom/android/settings_ext/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 412
    iget v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BC:I

    if-nez v0, :cond_1

    move v1, v2

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 416
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->T(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 418
    if-nez v3, :cond_2

    .line 419
    const-string v0, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No sync authorities for account type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 422
    :goto_1
    iget v4, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BC:I

    if-ge v0, v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BB:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 424
    goto :goto_0

    .line 422
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings_ext/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->if()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->id()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->ie()V

    return-void
.end method

.method private id()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 308
    return-void
.end method

.method private ie()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 312
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    iget-object v0, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BM:Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->ie()V

    .line 312
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 318
    :cond_1
    return-void
.end method

.method private if()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    iget-object v0, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BM:Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->if()V

    .line 322
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Settings screen for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method aq()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 222
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings_ext/hl;->a(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "AccountSettings"

    const-string v1, "We should not be showing settings for a managed profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->finish()V

    .line 256
    :cond_0
    return-void

    .line 231
    :cond_1
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 232
    iget-object v2, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    iget-object v1, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 235
    invoke-direct {p0, v1, v3, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 249
    :goto_0
    if-ge v3, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    .line 251
    iget-object v4, v1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 252
    iget-object v4, v1, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BJ:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;)V

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 238
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 239
    if-le v6, v1, :cond_5

    move v2, v1

    :goto_1
    move v4, v3

    .line 240
    :goto_2
    if-ge v4, v6, :cond_2

    .line 241
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 240
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    move v2, v3

    .line 239
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->aU:Landroid/os/UserManager;

    .line 120
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BA:Landroid/preference/Preference;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BB:[Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BB:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BB:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BC:I

    .line 125
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 126
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 130
    const/high16 v0, 0x7f110000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 132
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->if()V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->Bz:Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->id()V

    .line 179
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    .line 195
    :goto_0
    if-ge v3, v4, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    .line 197
    iget-object v5, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BK:Landroid/preference/Preference;

    if-ne p1, v5, :cond_0

    .line 198
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    const-string v3, "android.intent.extra.USER"

    iget-object v0, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BN:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    const-string v0, "authorities"

    iget-object v3, p0, Lcom/android/settings_ext/accounts/AccountSettings;->BB:[Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 217
    :goto_1
    return v0

    .line 204
    :cond_0
    iget-object v5, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BL:Landroid/preference/Preference;

    if-ne p1, v5, :cond_1

    .line 205
    iget-object v0, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BN:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ext/accounts/AccountSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings$1;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;I)V

    invoke-static {v2, v0, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v1

    .line 214
    goto :goto_1

    .line 195
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 217
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .prologue
    const v7, 0x7f100395

    const v3, 0x7f100394

    const v6, 0x7f100393

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 138
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 143
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->By:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;

    iget-object v0, v0, Lcom/android/settings_ext/accounts/AccountSettings$ProfileData;->BN:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 149
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 154
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 159
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 161
    :cond_1
    const-string v0, "AccountSettings"

    const-string v1, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->aq()V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings;->Bz:Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountSettings;->ie()V

    .line 171
    return-void
.end method
