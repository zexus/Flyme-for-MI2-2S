.class Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic Dw:Lcom/android/settings/applications/AppOpsSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->Dw:Lcom/android/settings/applications/AppOpsSummary;

    .line 55
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/applications/AppOpsSummary;->Du:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/settings/applications/AppOpsCategory;

    sget-object v1, Lcom/android/settings/applications/AppOpsSummary;->Du:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsCategory;-><init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->Dw:Lcom/android/settings/applications/AppOpsSummary;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsSummary;->Dt:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 87
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->Dw:Lcom/android/settings/applications/AppOpsSummary;

    iput p1, v0, Lcom/android/settings/applications/AppOpsSummary;->Dv:I

    .line 80
    return-void
.end method
