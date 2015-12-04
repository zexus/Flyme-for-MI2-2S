.class public Lcom/miui/fmradio/FmStationListActivity;
.super Lmiui/app/Activity;
.source "FmStationListActivity.java"


# instance fields
.field private mFragment:Lcom/miui/fmradio/FmStationListFragment;

.field private mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 84
    new-instance v0, Lcom/miui/fmradio/FmStationListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmStationListActivity$1;-><init>(Lcom/miui/fmradio/FmStationListActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    return-void
.end method

.method private initUi()V
    .locals 5

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 73
    .local v0, "fm":Landroid/app/FragmentManager;
    const-class v3, Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/FmStationListFragment;

    iput-object v3, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 75
    iget-object v3, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 77
    .local v1, "ft":Landroid/app/FragmentTransaction;
    new-instance v3, Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {v3}, Lcom/miui/fmradio/FmStationListFragment;-><init>()V

    iput-object v3, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 78
    const v3, 0x7f0d0010

    iget-object v4, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 79
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 81
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    iget-object v4, p0, Lcom/miui/fmradio/FmStationListActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    invoke-virtual {v3, v4}, Lcom/miui/fmradio/FmStationListFragment;->setOnStationItemClickListener(Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmStationListActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListActivity;->initUi()V

    .line 24
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 29
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->abortScan()V

    .line 32
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->scanOption()V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->addStationOption()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7f0d0025
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->scanOption()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->refreshList()V

    goto :goto_0
.end method
