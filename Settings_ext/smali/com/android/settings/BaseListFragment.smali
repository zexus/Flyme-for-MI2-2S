.class public Lcom/android/settings/BaseListFragment;
.super Lmiui/app/ListFragment;
.source "BaseListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/app/ListFragment;-><init>()V

    return-void
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lmiui/app/ListFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmiui/app/ListFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 109
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 111
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v0, "BaseListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseListFragment;->setThemeRes(I)V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/BaseListFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->finish()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lmiui/app/ListFragment;->onStart()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;->Y()V

    .line 72
    return-void
.end method
