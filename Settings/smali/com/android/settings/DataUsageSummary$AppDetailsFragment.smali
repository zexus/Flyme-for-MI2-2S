.class public Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1784
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings_ext/DataUsageSummary;
    .param p1, "app"    # Lcom/android/settings_ext/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1802
    :goto_0
    return-void

    .line 1790
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1791
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1793
    new-instance v1, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1794
    .local v1, "fragment":Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1795
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1796
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1797
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1798
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1799
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1801
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1806
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1807
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary;

    .line 1808
    .local v0, "target":Lcom/android/settings_ext/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/DataUsageSummary$AppItem;

    # setter for: Lcom/android/settings_ext/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ext/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->access$2802(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;)Lcom/android/settings_ext/DataUsageSummary$AppItem;

    .line 1809
    # invokes: Lcom/android/settings_ext/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->access$100(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1810
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1814
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1815
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary;

    .line 1816
    .local v0, "target":Lcom/android/settings_ext/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ext/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ext/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->access$2802(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;)Lcom/android/settings_ext/DataUsageSummary$AppItem;

    .line 1817
    # invokes: Lcom/android/settings_ext/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->access$100(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1818
    return-void
.end method
