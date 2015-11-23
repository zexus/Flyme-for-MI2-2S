.class public Lcom/android/settings/b/j;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final ady:Landroid/util/SparseArray;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/b/j;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    .line 67
    return-void
.end method

.method public static bU(I)I
    .locals 1

    .prologue
    .line 53
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method public static bV(I)Z
    .locals 1

    .prologue
    .line 57
    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bW(I)I
    .locals 1

    .prologue
    .line 61
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method private bX(I)Lcom/android/settings/b/i;
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/settings/b/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/android/settings/b/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 108
    new-instance v3, Lcom/android/settings/b/i;

    invoke-direct {v3}, Lcom/android/settings/b/i;-><init>()V

    .line 109
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/b/j;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 135
    invoke-static {p1}, Lcom/android/settings/b/j;->bV(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-static {p1}, Lcom/android/settings/b/j;->bW(I)I

    move-result v5

    .line 137
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 138
    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    const v0, 0x7f090a13

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 141
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v0, v3

    .line 199
    :goto_1
    return-object v0

    .line 115
    :sswitch_0
    const v0, 0x7f0906fb

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 117
    goto :goto_1

    .line 119
    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09088b

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 123
    goto :goto_1

    .line 119
    :cond_0
    const v0, 0x7f09088a

    goto :goto_2

    .line 125
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/b/j;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    invoke-static {v0}, Lcom/android/settings/hl;->b(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 129
    goto :goto_1

    .line 144
    :cond_1
    const v4, 0x7f090589

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 146
    iget-object v1, p0, Lcom/android/settings/b/j;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/android/settings/hl;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 154
    if-eqz v5, :cond_5

    array-length v1, v5

    .line 156
    :goto_3
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 157
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 158
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 159
    if-ne v1, v9, :cond_6

    .line 160
    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    .line 188
    :cond_3
    iget-object v1, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v7}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :goto_4
    iget-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    :cond_4
    move-object v0, v3

    .line 199
    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 154
    goto :goto_3

    .line 167
    :cond_6
    if-le v1, v9, :cond_3

    .line 168
    :try_start_1
    new-array v9, v1, [Ljava/lang/CharSequence;

    iput-object v9, v3, Lcom/android/settings/b/i;->adw:[Ljava/lang/CharSequence;

    .line 169
    new-array v9, v1, [Ljava/lang/CharSequence;

    iput-object v9, v3, Lcom/android/settings/b/i;->adx:[Ljava/lang/CharSequence;

    .line 170
    :goto_5
    if-ge v2, v1, :cond_3

    .line 171
    aget-object v9, v5, v2

    .line 172
    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 173
    const/4 v11, 0x0

    invoke-interface {v8, v9, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 176
    if-eqz v11, :cond_7

    .line 177
    iget-object v12, v3, Lcom/android/settings/b/i;->adw:[Ljava/lang/CharSequence;

    invoke-virtual {v11, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    .line 178
    iget-object v12, v3, Lcom/android/settings/b/i;->adx:[Ljava/lang/CharSequence;

    iget-object v13, v3, Lcom/android/settings/b/i;->adw:[Ljava/lang/CharSequence;

    aget-object v13, v13, v2

    invoke-virtual {v0, v13, v7}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v2

    .line 180
    iget v12, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_7

    .line 181
    iget v12, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v9, v12, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {v11, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while building UI detail for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 191
    :catch_1
    move-exception v0

    .line 192
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while building UI detail for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(IZ)Lcom/android/settings/b/i;
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/b/i;

    .line 83
    monitor-exit v1

    .line 85
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/b/j;->bX(I)Lcom/android/settings/b/i;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    monitor-enter v1

    .line 94
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/b/j;->ady:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
