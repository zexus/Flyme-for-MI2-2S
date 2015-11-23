.class Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# instance fields
.field final synthetic alJ:Lcom/android/settings/users/AppRestrictionsFragment;

.field alQ:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field alR:Z

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    .line 892
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 893
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    .line 894
    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alQ:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 895
    iput-boolean p4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alR:Z

    .line 896
    return-void
.end method

.method private w(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 924
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    :cond_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 930
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 934
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 935
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 901
    const-string v1, "android.intent.extra.restrictions_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 903
    const-string v2, "android.intent.extra.restrictions_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 904
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alQ:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 906
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->alB:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/users/RestrictionUtils;->g(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v3, v3, Lcom/android/settings/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    if-eqz v0, :cond_0

    .line 911
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alQ:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->f(Ljava/util/ArrayList;)V

    .line 912
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->w(Landroid/content/Intent;)V

    .line 914
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alQ:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-static {v1, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v1

    .line 916
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->alJ:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
