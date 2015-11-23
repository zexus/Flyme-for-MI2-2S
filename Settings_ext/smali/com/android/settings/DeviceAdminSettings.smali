.class public Lcom/android/settings_ext/DeviceAdminSettings;
.super Lcom/android/settings_ext/BaseListFragment;
.source "DeviceAdminSettings.java"


# instance fields
.field private aU:Landroid/os/UserManager;

.field private cI:Landroid/app/admin/DevicePolicyManager;

.field private jA:Landroid/util/SparseArray;

.field private final jy:Landroid/util/SparseArray;

.field private jz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ext/BaseListFragment;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jy:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jA:Landroid/util/SparseArray;

    .line 174
    return-void
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 4

    .prologue
    .line 463
    :try_start_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 466
    :catch_1
    move-exception v0

    .line 467
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jy:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(Ljava/util/Collection;I)V
    .locals 8

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 394
    if-nez v0, :cond_5

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 397
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 398
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 399
    if-nez v0, :cond_4

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    .line 402
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 403
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 404
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-eqz p1, :cond_0

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 416
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->d(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->d(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 429
    if-eqz p1, :cond_3

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 432
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 433
    :goto_0
    if-ge v3, v5, :cond_2

    .line 434
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 435
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8080

    invoke-virtual {v4, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 438
    if-eqz v7, :cond_1

    .line 439
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    .line 440
    :goto_1
    if-ge v1, v8, :cond_1

    .line 441
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 433
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    :cond_3
    return-void
.end method

.method private b(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jA:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->d(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 352
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->d(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private d(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private t(I)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 371
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->b(Ljava/util/List;I)V

    .line 374
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Ljava/util/Collection;I)V

    .line 375
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->cI:Landroid/app/admin/DevicePolicyManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->aU:Landroid/os/UserManager;

    .line 87
    const v0, 0x7f04004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method cT()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->aU:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 125
    invoke-direct {p0, v0}, Lcom/android/settings_ext/DeviceAdminSettings;->t(I)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/bL;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/bL;-><init>(Lcom/android/settings_ext/DeviceAdminSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/hl;->a(Landroid/view/View;Z)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 134
    instance-of v1, v0, Landroid/app/admin/DeviceAdminInfo;

    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 138
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 140
    invoke-direct {p0, v0}, Lcom/android/settings_ext/DeviceAdminSettings;->d(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    .line 141
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v2, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings_ext/DeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v2, :cond_2

    .line 148
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-class v0, Lcom/android/settings_ext/DeviceAdminAddFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0907ab

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lmiui/app/ListFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 153
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings_ext/MiuiDeviceAdminAdd;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    const-string v3, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const v4, 0x7f0907a5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ext/DeviceAdminSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings_ext/BaseListFragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jz:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jz:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jz:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jA:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminSettings;->aU:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 107
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 108
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 109
    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminSettings;->jA:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/settings_ext/DeviceAdminSettings;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminSettings;->cT()V

    .line 112
    return-void
.end method
