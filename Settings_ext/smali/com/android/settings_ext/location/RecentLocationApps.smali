.class public Lcom/android/settings_ext/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/settings_ext/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/location/RecentLocationApps;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 10

    .prologue
    .line 182
    invoke-virtual {p4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-virtual {p4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v0, 0x0

    .line 187
    const-wide/32 v4, 0xdbba0

    sub-long v4, p2, v4

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 189
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    cmp-long v6, v8, v4

    if-ltz v6, :cond_1

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    .line 201
    goto :goto_0

    .line 192
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    .line 193
    goto :goto_1

    .line 195
    :pswitch_1
    const/4 v3, 0x1

    move v0, v1

    .line 196
    goto :goto_1

    .line 203
    :cond_2
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 204
    sget-object v0, Lcom/android/settings_ext/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    sget-object v0, Lcom/android/settings_ext/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hadn\'t used location within the time interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    const/4 v0, 0x0

    .line 242
    :goto_2
    return-object v0

    .line 212
    :cond_4
    invoke-virtual {p4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v0

    .line 213
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 215
    const/4 v6, 0x0

    .line 217
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 218
    const/16 v1, 0x80

    invoke-interface {v0, v7, v1, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 220
    if-nez v0, :cond_5

    .line 221
    sget-object v0, Lcom/android/settings_ext/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null application info retrieved for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    goto :goto_2

    .line 225
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 227
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 230
    iget-object v1, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v1, v0, v2}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 233
    iget-object v0, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 234
    new-instance v5, Lcom/android/settings_ext/location/RecentLocationApps$PackageEntryClickedListener;

    invoke-direct {v5, p0, v7}, Lcom/android/settings_ext/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings_ext/location/RecentLocationApps;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/location/RecentLocationApps;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    sget-object v1, Lcom/android/settings_ext/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while retrieving application info for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto/16 :goto_2

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;

    iget-object v1, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p4}, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    if-eqz p3, :cond_0

    .line 126
    const v1, 0x7f0904bb

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->setSummary(I)V

    .line 130
    :goto_0
    invoke-virtual {v0, p5}, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    return-object v0

    .line 128
    :cond_0
    const v1, 0x7f0904bc

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public qf()Ljava/util/List;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 141
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 145
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/location/RecentLocationApps;->mActivity:Landroid/app/Activity;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 148
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    .line 150
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    move v4, v3

    .line 151
    :goto_0
    if-ge v4, v10, :cond_3

    .line 152
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 155
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    .line 157
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 158
    const/16 v13, 0x3e8

    if-ne v11, v13, :cond_1

    const-string v11, "android"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 160
    :goto_1
    if-nez v2, :cond_0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    :cond_0
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 158
    goto :goto_1

    .line 163
    :cond_2
    invoke-direct {p0, v0, v8, v9, v1}, Lcom/android/settings_ext/location/RecentLocationApps;->a(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_3
    return-object v6

    .line 141
    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method
