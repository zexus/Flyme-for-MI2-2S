.class public Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1816
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1822
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1823
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1825
    new-instance v1, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1826
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1827
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1828
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1829
    const-string v2, "appDetails"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1830
    const-string v1, "appDetails"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1831
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090844

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1833
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1838
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1839
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary;

    .line 1840
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/DataUsageSummary$AppItem;

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;)Lcom/android/settings_ext/DataUsageSummary$AppItem;

    .line 1841
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1842
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1846
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1847
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary;

    .line 1848
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;)Lcom/android/settings_ext/DataUsageSummary$AppItem;

    .line 1849
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 1850
    return-void
.end method
