.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private BB:[Ljava/lang/String;

.field private BR:Landroid/widget/TextView;

.field private Cm:Landroid/accounts/Account;

.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 433
    return-void
.end method

.method private S(Z)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 222
    invoke-static {v3}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 223
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 224
    const-string v0, "force"

    const/4 v2, 0x1

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    move v2, v1

    .line 227
    :goto_0
    if-ge v2, v6, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 229
    instance-of v7, v0, Lcom/android/settings/h;

    if-eqz v7, :cond_2

    .line 230
    check-cast v0, Lcom/android/settings/h;

    invoke-virtual {v0}, Lcom/android/settings/h;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    move v0, v1

    .line 232
    :goto_1
    array-length v8, v4

    if-ge v0, v8, :cond_2

    .line 233
    aget-object v8, v4, v0

    .line 234
    aget-object v9, v4, v0

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9, v3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 237
    if-eqz p1, :cond_1

    .line 238
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8, v3, v5}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 232
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_1
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8, v3}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 227
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 247
    :cond_3
    return-void
.end method

.method private a(Lcom/android/settings/h;)V
    .locals 7

    .prologue
    .line 171
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/h;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0907d8

    invoke-virtual {p1}, Lcom/android/settings/h;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 183
    return-void
.end method

.method private a(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 355
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->Y(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 550
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 551
    if-nez v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 555
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 557
    :try_start_0
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 558
    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_2

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 560
    :catch_0
    move-exception v1

    .line 561
    const-string v2, "AccountSettings"

    const-string v3, "Intent considered unsafe due to exception."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 345
    :goto_0
    if-ge v2, v3, :cond_1

    .line 346
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 347
    iget-object v4, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 351
    :goto_1
    return v0

    .line 345
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 351
    goto :goto_1
.end method

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 6

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 475
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 476
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 478
    if-eqz v3, :cond_0

    .line 493
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 501
    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;

    const-class v4, Lcom/android/settings/location/MiuiLocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0901ae

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 538
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 539
    goto :goto_0

    .line 505
    :cond_1
    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 507
    if-nez v4, :cond_2

    .line 508
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 511
    :cond_2
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 512
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 540
    :cond_3
    return-void
.end method

.method private io()V
    .locals 28

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 340
    :goto_0
    return-void

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 261
    invoke-static {v12}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v13

    .line 263
    const/4 v8, 0x0

    .line 264
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 267
    invoke-static {v12}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 268
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 269
    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 270
    aget-object v5, v3, v2

    .line 271
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    iget-object v5, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 275
    :cond_2
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v16

    move v11, v2

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_10

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 277
    instance-of v3, v2, Lcom/android/settings/h;

    if-nez v3, :cond_4

    .line 275
    :cond_3
    :goto_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    .line 281
    :cond_4
    check-cast v2, Lcom/android/settings/h;

    .line 282
    invoke-virtual {v2}, Lcom/android/settings/h;->getAccount()Landroid/accounts/Account;

    move-result-object v17

    .line 283
    const/4 v5, 0x0

    .line 284
    const-wide/16 v6, 0x0

    .line 285
    const/4 v4, 0x0

    .line 286
    invoke-virtual {v2}, Lcom/android/settings/h;->i()Ljava/util/ArrayList;

    move-result-object v9

    .line 287
    const/4 v3, 0x0

    .line 288
    if-eqz v9, :cond_b

    .line 289
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v9, v8

    move v8, v5

    move v5, v4

    move v4, v3

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    move-object/from16 v0, v17

    invoke-static {v0, v3, v12}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v19

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    .line 293
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v22

    .line 295
    if-eqz v19, :cond_7

    if-eqz v20, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v10, v24, v26

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v10

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v10, v0, :cond_7

    const/4 v10, 0x1

    .line 300
    :goto_5
    if-eqz v10, :cond_5

    if-nez v22, :cond_5

    if-nez v21, :cond_5

    .line 301
    const/4 v5, 0x1

    .line 302
    const/4 v9, 0x1

    .line 304
    :cond_5
    or-int v4, v4, v22

    .line 305
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v22, v0

    cmp-long v10, v6, v22

    if-gez v10, :cond_6

    .line 306
    move-object/from16 v0, v19

    iget-wide v6, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 308
    :cond_6
    if-eqz v20, :cond_8

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_6
    add-int/2addr v3, v8

    move v8, v3

    .line 309
    goto :goto_4

    .line 295
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 308
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    move v3, v4

    move v4, v5

    move v5, v8

    move v8, v9

    .line 315
    :cond_a
    :goto_7
    if-eqz v4, :cond_c

    .line 316
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/h;->a(IZ)V

    goto/16 :goto_3

    .line 311
    :cond_b
    const-string v9, "AccountSettings"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 312
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "no syncadapters found for "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 317
    :cond_c
    if-nez v5, :cond_d

    .line 318
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/h;->a(IZ)V

    goto/16 :goto_3

    .line 319
    :cond_d
    if-lez v5, :cond_f

    .line 320
    if-eqz v3, :cond_e

    .line 321
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/h;->a(IZ)V

    goto/16 :goto_3

    .line 323
    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/h;->a(IZ)V

    .line 324
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    .line 325
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/h;->a(IZ)V

    .line 326
    invoke-virtual {v14, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907e5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/h;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 333
    :cond_f
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/h;->a(IZ)V

    goto/16 :goto_3

    .line 337
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->BR:Landroid/widget/TextView;

    if-eqz v8, :cond_11

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 337
    :cond_11
    const/16 v2, 0x8

    goto :goto_8
.end method

.method private ip()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    .line 372
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 373
    array-length v9, v8

    move v7, v5

    :goto_1
    if-ge v7, v9, :cond_6

    .line 374
    aget-object v2, v8, v7

    .line 376
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    :cond_1
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 377
    :cond_2
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->T(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 380
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->BB:[Ljava/lang/String;

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    .line 382
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->BB:[Ljava/lang/String;

    array-length v3, v1

    move v0, v5

    :goto_3
    if-ge v0, v3, :cond_8

    aget-object v10, v1, v0

    .line 383
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v0, v6

    .line 390
    :goto_4
    if-eqz v0, :cond_1

    .line 391
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->U(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 396
    const-string v0, "com.xiaomi"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.xiaomi.unactivated"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    :cond_3
    new-instance v0, Lcom/android/settings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 404
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    if-nez v0, :cond_1

    .line 406
    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->invalidateOptionsMenu()V

    goto :goto_2

    .line 382
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 400
    :cond_5
    new-instance v0, Lcom/android/settings/h;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/h;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    goto :goto_5

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    .line 414
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->iq()V

    goto/16 :goto_0

    .line 417
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move v0, v5

    goto :goto_4

    :cond_9
    move v0, v6

    goto :goto_4
.end method

.method private iq()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->b(Landroid/preference/PreferenceScreen;)V

    .line 430
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic T(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->T(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const v0, 0x7f040076

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 120
    invoke-static {p2, v1, v0, v2}, Lcom/android/settings/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 121
    return-object v1
.end method

.method public a(Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->ip()V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->ib()V

    .line 364
    return-void
.end method

.method protected ia()V
    .locals 3

    .prologue
    .line 571
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 573
    instance-of v2, v0, Lcom/android/settings/h;

    if-eqz v2, :cond_0

    .line 574
    check-cast v0, Lcom/android/settings/h;

    .line 575
    invoke-virtual {v0}, Lcom/android/settings/h;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/h;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method protected ib()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->io()V

    .line 252
    return-void
.end method

.method public bridge synthetic ic()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->ic()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 131
    const v2, 0x7f100004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->BR:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->BR:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->BB:[Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    const-string v1, "account_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "account_label"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 101
    :cond_0
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x1

    const v1, 0x7f0907e9

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020106

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 190
    const/4 v0, 0x2

    const v1, 0x7f0907ea

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 211
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->S(Z)V

    goto :goto_0

    .line 214
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->S(Z)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 159
    instance-of v1, p2, Lcom/android/settings/accounts/XiaomiAccountPreference;

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    instance-of v1, p2, Lcom/android/settings/h;

    if-eqz v1, :cond_0

    .line 163
    check-cast p2, Lcom/android/settings/h;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Lcom/android/settings/h;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 203
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 204
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->Cm:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    return-void

    :cond_0
    move v0, v2

    .line 201
    goto :goto_0

    :cond_1
    move v3, v2

    .line 203
    goto :goto_1

    :cond_2
    move v1, v2

    .line 204
    goto :goto_2
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->ie()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->ic()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->ip()V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    .line 146
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->if()V

    .line 151
    return-void
.end method
