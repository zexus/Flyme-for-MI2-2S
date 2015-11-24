.class Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment$1;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic RP:Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment$1;->RP:Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment;

    iput-object p2, p0, Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment$1;->RP:Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/Memory;

    .line 508
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 509
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 510
    new-instance v3, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;-><init>(Lcom/android/settings_ext/deviceinfo/Memory;I)V

    .line 512
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 513
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method
