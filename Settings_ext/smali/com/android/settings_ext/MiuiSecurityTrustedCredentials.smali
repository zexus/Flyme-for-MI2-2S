.class public Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;
.super Lcom/android/settings_ext/BaseFragment;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    .line 391
    return-void
.end method

.method private a(Lmiui/app/ActionBar;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;I)V
    .locals 7

    .prologue
    .line 163
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v0, "tab_tag"

    invoke-static {p2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->b(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 167
    invoke-static {p2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    const/4 v6, 0x1

    move-object v0, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 168
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-object v4

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 154
    invoke-virtual {v0, p0}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 155
    sget-object v1, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->ry:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;->a(Lmiui/app/ActionBar;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;I)V

    .line 156
    sget-object v1, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->rz:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials;->a(Lmiui/app/ActionBar;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;I)V

    .line 157
    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
