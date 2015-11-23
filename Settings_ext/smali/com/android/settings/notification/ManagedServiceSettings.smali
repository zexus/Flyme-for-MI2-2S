.class public abstract Lcom/android/settings/notification/ManagedServiceSettings;
.super Lcom/android/settings/BaseListFragment;
.source "ManagedServiceSettings.java"


# instance fields
.field private final adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private aea:Landroid/content/pm/PackageManager;

.field private aeb:Landroid/content/ContentResolver;

.field private final aec:Ljava/util/HashSet;

.field private aed:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

.field private final aee:Landroid/content/BroadcastReceiver;

.field private final ul:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    .line 76
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$1;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->ul:Landroid/database/ContentObserver;

    .line 83
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ManagedServiceSettings$2;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aee:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->qx()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 74
    return-void
.end method

.method protected static a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aeg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    array-length v0, v0

    goto :goto_0
.end method

.method protected static a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 228
    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 232
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 234
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 239
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 240
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 241
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 243
    iget-object v5, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 244
    iget-object v5, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aeh:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": it does not require the permission "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 239
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 250
    :cond_1
    if-eqz p1, :cond_2

    .line 251
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 253
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 255
    :cond_3
    return v1
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->cT()V

    return-void
.end method

.method private a(Landroid/content/pm/ServiceInfo;)Z
    .locals 3

    .prologue
    .line 259
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/pm/ServiceInfo;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/notification/ManagedServiceSettings;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    return-object v0
.end method

.method private cT()V
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->qy()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aed:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aea:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    .line 211
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aed:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    new-instance v1, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aea:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->sort(Ljava/util/Comparator;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aed:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    return-void
.end method

.method static synthetic d(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->qz()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aea:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private qy()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aeb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, v1, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aeg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 184
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 185
    if-eqz v2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method private qz()V
    .locals 4

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 195
    if-nez v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aeb:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v3, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aeg:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    return-void

    .line 202
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 146
    const v0, 0x7f04007e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 147
    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aek:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aea:Landroid/content/pm/PackageManager;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aeb:Landroid/content/ContentResolver;

    .line 138
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aed:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    .line 139
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aed:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 266
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aec:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 270
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->qz()V

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v2, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aea:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->b(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings/BaseListFragment;->onPause()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aee:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aeb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->ul:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/settings/BaseListFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->cT()V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aee:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aeb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->adZ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, v1, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aeg:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings;->ul:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    return-void
.end method

.method protected abstract qx()Lcom/android/settings/notification/ManagedServiceSettings$Config;
.end method
