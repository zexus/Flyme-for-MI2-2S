.class Lcom/android/settings_ext/applications/ManageApplications$1;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# instance fields
.field final synthetic DQ:Landroid/app/INotificationManager;

.field final synthetic DR:Landroid/net/NetworkPolicyManager;

.field final synthetic Hk:Landroid/content/pm/IPackageManager;

.field final synthetic Hl:Landroid/app/AppOpsManager;

.field final synthetic Hm:Lcom/android/settings_ext/applications/ManageApplications;

.field final synthetic vW:Landroid/os/Handler;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->DQ:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hk:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hl:Landroid/app/AppOpsManager;

    iput-object p6, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->DR:Landroid/net/NetworkPolicyManager;

    iput-object p7, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->vW:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1202
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/ManageApplications$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1204
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 1206
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1207
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1210
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->DQ:Landroid/app/INotificationManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1213
    :goto_1
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_0

    .line 1215
    iget-object v4, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1217
    iget-object v4, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1206
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hk:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->resetPreferredActivities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1227
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hl:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 1228
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->DR:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v8}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 1230
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1231
    array-length v4, v1

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_3

    aget v5, v1, v0

    .line 1233
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 1235
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->DR:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6, v5, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1238
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1;->vW:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/applications/ManageApplications$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/applications/ManageApplications$1$1;-><init>(Lcom/android/settings_ext/applications/ManageApplications$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1255
    const/4 v0, 0x0

    return-object v0

    .line 1225
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1211
    :catch_1
    move-exception v4

    goto :goto_1
.end method
