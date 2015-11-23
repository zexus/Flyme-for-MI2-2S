.class Lcom/android/settings_ext/applications/ApplicationsContainer$1;
.super Landroid/os/AsyncTask;
.source "ApplicationsContainer.java"


# instance fields
.field final synthetic DQ:Landroid/app/INotificationManager;

.field final synthetic DR:Landroid/net/NetworkPolicyManager;

.field final synthetic DS:Lcom/android/settings_ext/applications/ApplicationsContainer;

.field final synthetic vW:Landroid/os/Handler;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->DS:Lcom/android/settings_ext/applications/ApplicationsContainer;

    iput-object p2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->DQ:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->DR:Landroid/net/NetworkPolicyManager;

    iput-object p5, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->vW:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 919
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 921
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 923
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 924
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 927
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->DQ:Landroid/app/INotificationManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 932
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_0

    .line 934
    iget-object v4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 936
    iget-object v4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 923
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 945
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 946
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 947
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v3, v9}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move v1, v2

    .line 948
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 951
    iget-object v4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 948
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->DR:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v8}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 955
    array-length v3, v1

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_3

    aget v4, v1, v0

    .line 957
    iget-object v5, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->DR:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5, v4, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 959
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->vW:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/applications/ApplicationsContainer$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/applications/ApplicationsContainer$1$1;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 976
    return-object v9

    .line 928
    :catch_0
    move-exception v4

    goto :goto_1
.end method
