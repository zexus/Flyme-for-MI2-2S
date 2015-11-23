.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private amG:Landroid/preference/PreferenceGroup;

.field private amH:Landroid/preference/Preference;

.field private amI:Lcom/android/settings/gf;

.field private amJ:Landroid/preference/Preference;

.field private amK:I

.field private amL:I

.field private amM:Z

.field private amN:Z

.field private final amO:Ljava/lang/Object;

.field private amP:Landroid/util/SparseArray;

.field private amQ:Z

.field private amR:Z

.field private amS:Landroid/graphics/drawable/Drawable;

.field private amT:Landroid/content/BroadcastReceiver;

.field private amt:Lcom/android/settings/users/EditUserInfoController;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/users/UserSettings;->amK:I

    .line 130
    iput v1, p0, Lcom/android/settings/users/UserSettings;->amL:I

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amN:Z

    .line 135
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->amO:Ljava/lang/Object;

    .line 137
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->amP:Landroid/util/SparseArray;

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    .line 141
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->amt:Lcom/android/settings/users/EditUserInfoController;

    .line 147
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->amT:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/a/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/a/a;

    move-result-object v0

    .line 944
    return-object v0
.end method

.method private a(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amP:Landroid/util/SparseArray;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 865
    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 868
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sI()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->cz(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->i(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->b(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->bE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->amM:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/users/UserSettings;I)I
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings/users/UserSettings;->amK:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amP:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(Landroid/content/pm/UserInfo;)V
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/hl;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->c(Landroid/content/pm/UserInfo;)V

    .line 847
    :cond_0
    return-void
.end method

.method private bE(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    const v1, 0x7f0908f2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->amP:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/content/pm/UserInfo;)V
    .locals 3

    .prologue
    .line 850
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 853
    return-void
.end method

.method static synthetic c(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->cA(I)V

    return-void
.end method

.method private cA(I)V
    .locals 2

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amO:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amM:Z

    .line 664
    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$12;->start()V

    .line 686
    monitor-exit v1

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cB(I)V
    .locals 1

    .prologue
    .line 691
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cx(I)V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amO:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->amK:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amM:Z

    if-nez v0, :cond_0

    .line 374
    packed-switch p1, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    monitor-exit v1

    .line 388
    return-void

    .line 376
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 379
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cA(I)V

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cy(I)V
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amO:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->amK:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amM:Z

    if-nez v0, :cond_0

    .line 393
    iput p1, p0, Lcom/android/settings/users/UserSettings;->amK:I

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 396
    :cond_0
    monitor-exit v1

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cz(I)V
    .locals 1

    .prologue
    .line 476
    iput p1, p0, Lcom/android/settings/users/UserSettings;->amL:I

    .line 477
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->cB(I)V

    return-void
.end method

.method private d(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .prologue
    .line 939
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sF()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->cx(I)V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/users/UserSettings;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/users/UserSettings;->amL:I

    return v0
.end method

.method static synthetic g(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sC()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sH()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amO:Ljava/lang/Object;

    return-object v0
.end method

.method private i(IZ)V
    .locals 7

    .prologue
    .line 433
    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 434
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 435
    const-string v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090912

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 442
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v0, :cond_2

    .line 443
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 444
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09095b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 450
    :cond_2
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 452
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 453
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    const-string v0, "show_nickname"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    :cond_3
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_4

    const v3, 0x7f0901a4

    .line 459
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 456
    :cond_4
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    const v3, 0x7f0901ac

    goto :goto_1

    :cond_5
    const v3, 0x7f0901aa

    goto :goto_1

    .line 462
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v0, :cond_0

    .line 463
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 464
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/android/settings/users/UserSettings;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/users/UserSettings;->amK:I

    return v0
.end method

.method static synthetic k(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sE()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sD()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private r(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    .line 822
    new-instance v0, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 841
    return-void
.end method

.method private sA()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amR:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sJ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    const v1, 0x7f090913

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 333
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sB()Z
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sC()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method

.method private sD()Landroid/content/pm/UserInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090906

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 403
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 404
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 405
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v5, "no_modify_accounts"

    invoke-virtual {v4, v5, v6, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 410
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    invoke-virtual {v2, v4, v6, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 411
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->c(Landroid/content/pm/UserInfo;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 415
    if-eqz v4, :cond_0

    .line 416
    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 417
    invoke-virtual {v2, v6, v3}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return-object v1
.end method

.method private sE()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090905

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->c(Landroid/content/pm/UserInfo;)V

    .line 429
    :cond_0
    return-object v0
.end method

.method private sF()V
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lcom/android/settings/users/UserSettings;->amK:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sG()V

    .line 648
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$11;->start()V

    goto :goto_0
.end method

.method private sG()V
    .locals 2

    .prologue
    .line 652
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    const-string v0, "UserSettings"

    const-string v1, "Unable to remove self user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sH()V
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amR:Z

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sG()V

    goto :goto_0
.end method

.method private sI()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 713
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 714
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 717
    invoke-static {v1}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v10

    .line 718
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 719
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 720
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 726
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    .line 753
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/users/UserSettings;->d(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 754
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 755
    const v3, 0x7f0908ef

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 762
    :cond_2
    :goto_3
    iget-object v3, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 763
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->amP:Landroid/util/SparseArray;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    .line 765
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sJ()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 727
    :cond_3
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v0, :cond_6

    if-nez v10, :cond_4

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v4, v7

    .line 740
    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v0, :cond_7

    if-nez v10, :cond_7

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_7

    move v5, v7

    .line 742
    :goto_5
    new-instance v0, Lcom/android/settings/users/UserPreference;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_8

    move-object v4, p0

    :goto_6
    if-eqz v5, :cond_9

    move-object v5, p0

    :goto_7
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 745
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 747
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 748
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_5

    .line 749
    const v3, 0x7f0908f1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 751
    :cond_5
    iget-object v3, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    move v4, v8

    .line 739
    goto :goto_4

    :cond_7
    move v5, v8

    .line 740
    goto :goto_5

    :cond_8
    move-object v4, v2

    .line 742
    goto :goto_6

    :cond_9
    move-object v5, v2

    goto :goto_7

    .line 757
    :cond_a
    const v3, 0x7f0908ee

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 759
    :cond_b
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    const v3, 0x7f0908ea

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 768
    :cond_c
    invoke-direct {p0, v0, v6}, Lcom/android/settings/users/UserSettings;->a(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 772
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sJ()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 777
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amM:Z

    if-eqz v0, :cond_f

    .line 778
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 780
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 781
    const v1, 0x7f090905

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 782
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sJ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 783
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 786
    :cond_f
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amR:Z

    if-nez v0, :cond_13

    move v0, v7

    .line 788
    :goto_8
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_add_user"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 791
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 792
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 798
    :goto_9
    if-eqz v7, :cond_11

    .line 800
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xb

    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v4, :cond_14

    if-eqz v10, :cond_14

    move-object v4, p0

    :goto_a
    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 804
    const v1, 0x7f090912

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 805
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sJ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 806
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 807
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 810
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 813
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 814
    invoke-direct {p0, v11}, Lcom/android/settings/users/UserSettings;->r(Ljava/util/List;)V

    .line 816
    :cond_12
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v0

    .line 817
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amJ:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_13
    move v0, v8

    .line 786
    goto :goto_8

    :cond_14
    move-object v4, v2

    .line 800
    goto :goto_a

    :cond_15
    move v7, v8

    goto :goto_9

    :cond_16
    move v7, v0

    goto :goto_9
.end method

.method private sJ()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amS:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 857
    const/16 v0, -0x2710

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->amS:Landroid/graphics/drawable/Drawable;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amS:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private sK()V
    .locals 4

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 917
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 918
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cB(I)V

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_add_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 928
    :cond_3
    const-string v0, "UserSettings"

    const-string v1, "Blocking guest creation because it is restricted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090912

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_1

    .line 934
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cB(I)V

    goto :goto_0
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amI:Lcom/android/settings/gf;

    invoke-virtual {v0, p1}, Lcom/android/settings/gf;->setSummary(Ljava/lang/CharSequence;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 874
    return-void
.end method


# virtual methods
.method public ao()I
    .locals 1

    .prologue
    .line 986
    const v0, 0x7f090941

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 992
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 997
    return-void
.end method

.method public gX()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->gX()V

    .line 488
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 489
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 363
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cA(I)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amt:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 949
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 960
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 953
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cy(I)V

    goto :goto_0

    .line 956
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->i(IZ)V

    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001cc
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    if-eqz p1, :cond_2

    .line 184
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->amL:I

    .line 187
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->amK:I

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amt:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 193
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 194
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-le v0, v6, :cond_5

    move v0, v6

    .line 195
    :goto_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    .line 235
    :goto_1
    return-void

    :cond_5
    move v0, v7

    .line 194
    goto :goto_0

    .line 201
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 202
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amR:Z

    .line 204
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 205
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->amG:Landroid/preference/PreferenceGroup;

    .line 206
    new-instance v0, Lcom/android/settings/users/UserPreference;

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    .line 209
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    const-string v3, "user_me"

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    const v3, 0x7f0908f1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 214
    :cond_7
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->amJ:Landroid/preference/Preference;

    .line 215
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_8

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_add_user"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    :cond_8
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->K(Ljava/lang/String;)V

    .line 229
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sA()V

    .line 230
    invoke-virtual {p0, v6}, Lcom/android/settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 231
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->amT:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v3, v1

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 220
    :cond_a
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amJ:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 224
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v1}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    :cond_b
    iput-boolean v7, p0, Lcom/android/settings/users/UserSettings;->amN:Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amJ:Landroid/preference/Preference;

    const v3, 0x7f0908e9

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    .prologue
    const v9, 0x104000a

    const/4 v8, 0x0

    const/high16 v7, 0x1040000

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 494
    if-nez v1, :cond_0

    move-object v0, v2

    .line 631
    :goto_0
    return-object v0

    .line 495
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 631
    goto :goto_0

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/users/UserSettings;->amK:I

    new-instance v2, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/hl;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090901

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 513
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 515
    const-string v0, "key_add_user_long_message_displayed"

    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 517
    if-eqz v6, :cond_1

    const v0, 0x7f0908fb

    move v3, v0

    .line 520
    :goto_1
    if-ne p1, v5, :cond_2

    const/4 v0, 0x1

    .line 522
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908f9

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v3, p0, v0, v6, v4}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    invoke-virtual {v1, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    const v0, 0x7f0908fa

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v5

    .line 520
    goto :goto_2

    .line 540
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908ff

    new-instance v3, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090900

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 554
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 567
    :pswitch_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 569
    const-string v3, "title"

    const v4, 0x7f0908f7

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v3, "summary"

    const v4, 0x7f0908f5

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 572
    const-string v4, "title"

    const v6, 0x7f0908f8

    invoke-virtual {p0, v6}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v4, "summary"

    const v6, 0x7f0908f6

    invoke-virtual {p0, v6}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0908f4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040119

    new-array v4, v5, [Ljava/lang/String;

    const-string v7, "title"

    aput-object v7, v4, v8

    const/4 v7, 0x1

    const-string v8, "summary"

    aput-object v8, v4, v7

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 592
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0908ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908ed

    new-instance v3, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 606
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090914

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090915

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090916

    new-instance v3, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 621
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amt:Lcom/android/settings/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0901ac

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/users/EditUserInfoController;->a(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 576
    :array_0
    .array-data 4
        0x7f100052
        0x7f100063
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-nez v1, :cond_2

    const-string v1, "no_remove_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090903

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 278
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v1, v2

    .line 280
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->amQ:Z

    if-eqz v4, :cond_0

    const-string v4, "no_add_user"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x2

    add-int/lit8 v4, v1, 0x1

    const v4, 0x7f090904

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 283
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "add_users_when_locked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 288
    return-void

    :cond_1
    move v2, v3

    .line 284
    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 251
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->amO:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->amM:Z

    .line 966
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->amK:I

    .line 967
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sI()V

    .line 968
    monitor-exit v1

    .line 969
    return-void

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 293
    if-ne v0, v2, :cond_0

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cy(I)V

    .line 303
    :goto_0
    return v2

    .line 296
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "add_users_when_locked"

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 298
    goto :goto_1

    .line 303
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amI:Lcom/android/settings/gf;

    if-ne p1, v0, :cond_1

    .line 974
    check-cast p2, Ljava/lang/String;

    .line 975
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amI:Lcom/android/settings/gf;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 977
    invoke-direct {p0, p2}, Lcom/android/settings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 979
    :cond_0
    const/4 v0, 0x1

    .line 981
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 878
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->amH:Landroid/preference/Preference;

    if-ne p1, v2, :cond_3

    .line 879
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings;->amR:Z

    if-eqz v2, :cond_0

    .line 880
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 912
    :goto_0
    return v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->i(IZ)V

    :cond_1
    :goto_1
    move v0, v1

    .line 912
    goto :goto_0

    .line 887
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 889
    :cond_3
    instance-of v2, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v2, :cond_6

    .line 890
    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 891
    const/16 v2, -0xb

    if-ne v0, v2, :cond_4

    .line 892
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sK()V

    goto :goto_1

    .line 895
    :cond_4
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 896
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->d(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 897
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    iget v2, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 900
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cB(I)V

    goto :goto_1

    .line 903
    :cond_6
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->amJ:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 906
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings;->amN:Z

    if-eqz v2, :cond_7

    .line 907
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 909
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->cx(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sA()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->sI()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amt:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->amL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->amK:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->amt:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->ss()V

    .line 267
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method
