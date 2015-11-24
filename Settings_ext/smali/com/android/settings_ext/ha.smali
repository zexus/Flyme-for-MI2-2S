.class Lcom/android/settings_ext/ha;
.super Landroid/os/AsyncTask;
.source "UsageAccessSettings.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic zb:Lcom/android/settings_ext/UsageAccessSettings;

.field private final zc:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/UsageAccessSettings;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/settings_ext/ha;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ha;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ha;->zc:Landroid/content/pm/IPackageManager;

    .line 91
    return-void
.end method

.method private a(Lcom/android/settings_ext/hb;)V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p1, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    iget-object v1, p1, Lcom/android/settings_ext/hb;->zd:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings_ext/ha;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p1, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    iget-object v1, p1, Lcom/android/settings_ext/hb;->zd:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings_ext/ha;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p1, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    iget-object v1, p1, Lcom/android/settings_ext/hb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    iget v1, p1, Lcom/android/settings_ext/hb;->zf:I

    if-nez v1, :cond_2

    .line 234
    const/4 v0, 0x1

    .line 241
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 242
    iget-object v1, p1, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    :cond_1
    return-void

    .line 235
    :cond_2
    iget v1, p1, Lcom/android/settings_ext/hb;->zf:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 238
    iget-boolean v0, p1, Lcom/android/settings_ext/hb;->ze:Z

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/util/ArrayMap;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/UsageAccessSettings;->a(Lcom/android/settings_ext/UsageAccessSettings;Lcom/android/settings_ext/ha;)Lcom/android/settings_ext/ha;

    .line 182
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 187
    :cond_0
    if-nez p1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v0, v0, Lcom/android/settings_ext/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v0, v0, Lcom/android/settings_ext/UsageAccessSettings;->yZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v0, v0, Lcom/android/settings_ext/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v3, v2

    .line 195
    :goto_1
    if-ge v3, v4, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v0, v0, Lcom/android/settings_ext/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/hb;

    .line 197
    iget-object v1, v0, Lcom/android/settings_ext/hb;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/hb;

    .line 198
    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v1, v1, Lcom/android/settings_ext/UsageAccessSettings;->yZ:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 204
    :cond_2
    iget-object v0, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    iput-object v0, v1, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v1, v2

    .line 210
    :goto_3
    if-ge v1, v3, :cond_5

    .line 211
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/hb;

    .line 212
    iget-object v4, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_4

    .line 215
    new-instance v4, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings_ext/ha;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    .line 216
    iget-object v4, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 217
    iget-object v4, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object v4, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v4, v4, Lcom/android/settings_ext/UsageAccessSettings;->yZ:Landroid/preference/PreferenceScreen;

    iget-object v5, v0, Lcom/android/settings_ext/hb;->zg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings_ext/ha;->a(Lcom/android/settings_ext/hb;)V

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v0, v0, Lcom/android/settings_ext/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iput-object p1, v0, Lcom/android/settings_ext/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/ha;->e([Ljava/lang/Void;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs e([Ljava/lang/Void;)Landroid/util/ArrayMap;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/ha;->zc:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string v1, "UsageAccessSettings"

    const-string v2, "PackageManager is dead. Can\'t get list of packages requesting android.permission.PACKAGE_USAGE_STATS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 111
    array-length v2, v1

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v5, v1, v0

    .line 112
    invoke-static {v5}, Lcom/android/settings_ext/UsageAccessSettings;->M(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    new-instance v6, Lcom/android/settings_ext/hb;

    invoke-direct {v6, v5}, Lcom/android/settings_ext/hb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/ha;->mPackageManager:Landroid/content/pm/PackageManager;

    # getter for: Lcom/android/settings_ext/UsageAccessSettings;->yV:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ext/UsageAccessSettings;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 120
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_2
    move v5, v3

    .line 121
    :goto_3
    if-ge v5, v2, :cond_5

    .line 122
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 123
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/hb;

    .line 124
    if-eqz v1, :cond_3

    .line 125
    iput-object v0, v1, Lcom/android/settings_ext/hb;->zd:Landroid/content/pm/PackageInfo;

    .line 126
    iput-boolean v9, v1, Lcom/android/settings_ext/hb;->ze:Z

    .line 121
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 120
    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v1, v3

    .line 133
    :goto_4
    if-ge v1, v2, :cond_6

    .line 134
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/hb;

    .line 135
    iget-object v5, v0, Lcom/android/settings_ext/hb;->zd:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_c

    .line 137
    :try_start_1
    iget-object v5, p0, Lcom/android/settings_ext/ha;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Lcom/android/settings_ext/hb;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings_ext/hb;->zd:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    move v1, v2

    .line 133
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 138
    :catch_1
    move-exception v0

    .line 141
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 142
    add-int/lit8 v0, v1, -0x1

    .line 143
    add-int/lit8 v1, v2, -0x1

    goto :goto_5

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/ha;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    iget-object v0, v0, Lcom/android/settings_ext/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    # getter for: Lcom/android/settings_ext/UsageAccessSettings;->yW:[I
    invoke-static {}, Lcom/android/settings_ext/UsageAccessSettings;->access$100()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 151
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_6
    move v5, v3

    .line 152
    :goto_7
    if-ge v5, v2, :cond_b

    .line 153
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 154
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/hb;

    .line 155
    if-nez v1, :cond_9

    .line 156
    const-string v1, "UsageAccessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppOp permission exists for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " but package doesn\'t exist or did not request UsageStats access"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_7
    :goto_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_8
    move v2, v3

    .line 151
    goto :goto_6

    .line 161
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v7

    iget-object v8, v1, Lcom/android/settings_ext/hb;->zd:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_7

    .line 166
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v9, :cond_a

    .line 167
    const-string v1, "UsageAccessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No AppOps permission exists for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 172
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v0

    iput v0, v1, Lcom/android/settings_ext/hb;->zf:I

    goto :goto_8

    :cond_b
    move-object v0, v4

    .line 175
    goto/16 :goto_0

    :cond_c
    move v0, v1

    move v1, v2

    goto/16 :goto_5
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/ha;->a(Landroid/util/ArrayMap;)V

    return-void
.end method
