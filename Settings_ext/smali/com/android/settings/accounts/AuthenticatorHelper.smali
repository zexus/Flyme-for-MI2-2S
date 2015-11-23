.class public final Lcom/android/settings/accounts/AuthenticatorHelper;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorHelper.java"


# instance fields
.field private BY:Ljava/util/Map;

.field private BZ:[Landroid/accounts/AuthenticatorDescription;

.field private Ca:Ljava/util/ArrayList;

.field private Cb:Ljava/util/Map;

.field private Cc:Ljava/util/HashMap;

.field private final Cd:Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

.field private Ce:Z

.field private final aU:Landroid/os/UserManager;

.field private final mContext:Landroid/content/Context;

.field private final zA:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ca:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cc:Ljava/util/HashMap;

    .line 75
    iput-object p1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->aU:Landroid/os/UserManager;

    .line 77
    iput-object p2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    .line 78
    iput-object p4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cd:Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 82
    return-void
.end method

.method private il()V
    .locals 8

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 243
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 244
    aget-object v4, v2, v1

    .line 245
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cc:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 246
    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cc:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    const-string v5, "AuthenticatorHelper"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    const-string v5, "AuthenticatorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 256
    :cond_2
    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public X(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Y(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public Z(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 162
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BZ:[Landroid/accounts/AuthenticatorDescription;

    .line 164
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BZ:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->Y(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/accounts/AuthenticatorHelper$1;-><init>(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    monitor-exit v2

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 113
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    :try_start_2
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 129
    :goto_1
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 124
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 127
    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->BY:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 145
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v0, "AuthenticatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    const-string v0, "AuthenticatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label icon for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public ie()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ce:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ce:Z

    .line 226
    :cond_0
    return-void
.end method

.method public if()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ce:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ce:Z

    .line 233
    :cond_0
    return-void
.end method

.method public ik()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ca:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ca:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->Z(Landroid/content/Context;)V

    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ca:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 197
    aget-object v1, p1, v0

    .line 198
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ca:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ca:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->il()V

    .line 203
    iget-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Ce:Z

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->Cd:Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;->a(Landroid/os/UserHandle;)V

    .line 206
    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->zA:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 214
    return-void
.end method
