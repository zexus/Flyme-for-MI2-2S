.class Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field Dv:I

.field final synthetic Hm:Lcom/android/settings_ext/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ManageApplications;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Dv:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 512
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->b(Lcom/android/settings_ext/applications/ManageApplications;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 504
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings_ext/applications/ManageApplications;->d(Lcom/android/settings_ext/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings_ext/applications/ManageApplications;->e(Lcom/android/settings_ext/applications/ManageApplications;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings_ext/applications/ManageApplications;->f(Lcom/android/settings_ext/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 505
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 506
    const v2, 0x7f100046

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 507
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 517
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Dv:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ManageApplications;->aE(I)V

    .line 545
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 537
    iput p1, p0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;->Dv:I

    .line 538
    return-void
.end method
