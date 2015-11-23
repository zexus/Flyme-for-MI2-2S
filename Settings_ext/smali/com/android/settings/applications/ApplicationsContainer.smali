.class public Lcom/android/settings_ext/applications/ApplicationsContainer;
.super Lcom/android/settings_ext/BaseFragment;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings_ext/applications/ManageAppClickListener;
.implements Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field CJ:Ljava/lang/String;

.field private DE:I

.field private DF:Z

.field private final DG:Ljava/util/ArrayList;

.field private DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

.field private DI:[I

.field private DJ:Landroid/view/Menu;

.field private DK:Landroid/app/AlertDialog;

.field private DL:I

.field private DM:Lmiui/app/ActionBar;

.field private DN:Lcom/android/settings_ext/applications/RunningState;

.field private DO:Ljava/util/ArrayList;

.field private DP:Lcom/android/settings_ext/applications/ApplicationsState;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 70
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    .line 108
    iput v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    .line 123
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DI:[I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    .line 529
    return-void

    .line 123
    :array_0
    .array-data 4
        0x7f090541
        0x7f090543
        0x7f090544
        0x7f090c38
    .end array-data
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/ApplicationsContainer;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DF:Z

    return v0
.end method

.method private aw(I)V
    .locals 2

    .prologue
    .line 312
    iput p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    .line 313
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    .line 314
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 317
    const/4 v0, 0x0

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 329
    :goto_0
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->update()V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iI()V

    .line 334
    return-void

    .line 320
    :pswitch_0
    const v0, 0x7f090544

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;

    goto :goto_0

    .line 325
    :pswitch_1
    const v0, 0x7f090c38

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/ApplicationsContainer;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/ApplicationsContainer;)Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/applications/ApplicationsContainer;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    return v0
.end method

.method private iH()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    invoke-virtual {v0, p0}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    move v3, v7

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DI:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 250
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DI:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DI:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 253
    const/4 v4, 0x0

    .line 255
    packed-switch v3, :pswitch_data_0

    move v0, v7

    .line 277
    :goto_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 278
    const-string v8, "filter_app_key"

    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :pswitch_0
    const-class v4, Lcom/android/settings_ext/applications/ManageApplicationsFragment;

    move v0, v7

    .line 259
    goto :goto_2

    .line 263
    :pswitch_1
    const-class v4, Lcom/android/settings_ext/applications/ManageApplicationsFragment;

    move v0, v6

    .line 264
    goto :goto_2

    .line 267
    :pswitch_2
    const/4 v0, 0x2

    .line 268
    const-class v4, Lcom/android/settings_ext/applications/RunningApplicationsFragment;

    goto :goto_2

    .line 272
    :pswitch_3
    const/4 v0, 0x3

    .line 273
    const-class v4, Lcom/android/settings_ext/applications/RunningApplicationsFragment;

    goto :goto_2

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DM:Lmiui/app/ActionBar;

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private iz()V
    .locals 3

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f090517

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->startActivity(Landroid/content/Intent;)V

    .line 527
    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 209
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    .line 213
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 214
    if-eq v0, v2, :cond_2

    .line 215
    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    .line 218
    :cond_2
    const-string v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iK()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->iP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 483
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    .line 486
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DF:Z

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->resume(I)V

    .line 492
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iI()V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->pause()V

    goto :goto_1
.end method

.method public a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const v5, 0x7f090517

    .line 504
    iget-object v0, p1, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;->getCount()I

    move-result v0

    if-le v0, p4, :cond_0

    .line 505
    iget-object v0, p1, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, p4}, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;->az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 506
    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->CJ:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_1

    .line 508
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 509
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->CJ:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-class v0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/applications/ApplicationsContainer;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iz()V

    goto :goto_0
.end method

.method public a(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V
    .locals 1

    .prologue
    .line 990
    if-nez p1, :cond_0

    .line 994
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public ax(I)V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;

    .line 985
    invoke-interface {v0, p1}, Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;->ax(I)V

    goto :goto_0

    .line 987
    :cond_0
    return-void
.end method

.method public b(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V
    .locals 1

    .prologue
    .line 997
    if-nez p1, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public iG()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    return-object v0
.end method

.method iI()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 846
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget v0, v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget v0, v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    if-ne v0, v1, :cond_4

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 856
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    if-eq v3, v5, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 857
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 855
    goto :goto_1

    .line 859
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 861
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public iJ()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    return v0
.end method

.method iK()V
    .locals 3

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 895
    const v1, 0x7f09053b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 896
    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 897
    const v1, 0x7f09053d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    const v1, 0x7f090169

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 899
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    .line 900
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 902
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 915
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 917
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 918
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 919
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/applications/ApplicationsContainer$1;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 980
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings_ext/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    const-string v1, "com.android.settings.APPLICATION_LIST_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningState;->ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DN:Lcom/android/settings_ext/applications/RunningState;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DO:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    const v1, 0x7f090541

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    const v1, 0x7f090543

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    const v1, 0x7f090544

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    const v1, 0x7f090c38

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_1

    const v0, 0x7f0a0079

    .line 164
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->setThemeRes(I)V

    .line 167
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 168
    return-void

    .line 162
    :cond_1
    const v0, 0x7f0a0078

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 817
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 819
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DJ:Landroid/view/Menu;

    .line 822
    const v0, 0x7f090536

    invoke-interface {p1, v2, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 825
    const/4 v0, 0x2

    const v1, 0x7f090537

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 828
    const/16 v0, 0x8

    const v1, 0x7f09053a

    invoke-interface {p1, v2, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 830
    const/16 v0, 0x9

    const v1, 0x7f090d0f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 833
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iI()V

    .line 835
    return v4
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DI:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->iO()V

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->destroy()V

    .line 292
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onDetach()V

    .line 293
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    .line 909
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iH()V

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 867
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 868
    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    const/4 v1, 0x5

    if-ne v3, v1, :cond_2

    .line 869
    :cond_0
    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    if-ne v1, v3, :cond_1

    move v1, v2

    .line 870
    :goto_0
    iput v3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    move v3, v0

    .line 871
    :goto_1
    if-gt v3, v2, :cond_3

    .line 872
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->ab(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V

    .line 871
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v0

    .line 869
    goto :goto_0

    .line 875
    :cond_2
    const/16 v0, 0x8

    if-ne v3, v0, :cond_4

    .line 876
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iK()V

    .line 884
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iI()V

    .line 885
    :goto_3
    return v2

    .line 877
    :cond_4
    const/16 v0, 0x9

    if-ne v3, v0, :cond_5

    .line 878
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/settings_ext/applications/PreferredListSettings;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 882
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_3
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->aw(I)V

    .line 309
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onPause()V

    .line 196
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DF:Z

    move v1, v0

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->pause()V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 840
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iI()V

    .line 843
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onResume()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DF:Z

    .line 184
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    if-ne v0, v1, :cond_0

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DG:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    .line 189
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DH:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iI()V

    .line 191
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 229
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onStop()V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer;->DK:Landroid/app/AlertDialog;

    .line 177
    :cond_0
    return-void
.end method
