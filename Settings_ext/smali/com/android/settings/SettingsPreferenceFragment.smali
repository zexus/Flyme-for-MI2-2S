.class public Lcom/android/settings_ext/SettingsPreferenceFragment;
.super Lmiui/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ext/bP;


# instance fields
.field private bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mu:Landroid/graphics/drawable/Drawable;

.field private xo:Ljava/lang/String;

.field private xp:Ljava/lang/String;

.field private xq:Z

.field private xr:Landroid/widget/ListAdapter;

.field private xs:Z

.field private xt:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xq:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xs:Z

    .line 81
    new-instance v0, Lcom/android/settings_ext/gt;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/gt;-><init>(Lcom/android/settings_ext/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 493
    return-void
.end method

.method private I(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->hasListView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_0

    .line 262
    invoke-direct {p0, v1, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private J(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->dV()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 271
    invoke-direct {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->I(Ljava/lang/String;)I

    move-result v3

    .line 272
    if-ltz v3, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xq:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move-object v0, v1

    .line 278
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    check-cast v1, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 281
    new-instance v0, Lcom/android/settings_ext/gu;

    invoke-direct {v0, p0, v4, v3, v2}, Lcom/android/settings_ext/gu;-><init>(Lcom/android/settings_ext/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_0
    return-void
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 305
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 306
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 307
    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    instance-of v3, v0, Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 309
    check-cast v0, Landroid/preference/Preference;

    .line 310
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 316
    :goto_1
    return v0

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings_ext/SettingsPreferenceFragment;Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings_ext/SettingsPreferenceFragment;)Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method private dV()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mu:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020205

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mu:Landroid/graphics/drawable/Drawable;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mu:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    .line 115
    if-eqz p1, :cond_2

    .line 116
    const-string v0, "theme_res_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->setThemeRes(I)V

    .line 125
    :cond_1
    return-void

    .line 117
    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_3

    const v0, 0x7f0a0091

    goto :goto_0

    :cond_3
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    goto :goto_0
.end method


# virtual methods
.method protected K(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    :cond_0
    return-void
.end method

.method public Z(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->gY()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v0

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 692
    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 659
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 660
    instance-of v1, v0, Lcom/android/settings_ext/gh;

    if-eqz v1, :cond_0

    .line 661
    check-cast v0, Lcom/android/settings_ext/gh;

    move-object v1, p2

    move-object v2, p5

    move v3, p4

    move-object v5, p1

    move v6, p3

    .line 662
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 674
    :goto_0
    return v0

    .line 665
    :cond_0
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 666
    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, p2

    move-object v2, p5

    move v3, p4

    move-object v5, p1

    move v6, p3

    .line 667
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 669
    goto :goto_0

    .line 671
    :cond_1
    const-string v0, "SettingsPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent isn\'t SettingsActivity or PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

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

    .line 674
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 644
    const v4, 0x7f0904ec

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 6

    .prologue
    .line 652
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xt:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xt:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_2

    .line 611
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public gT()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xs:Z

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xs:Z

    .line 225
    :cond_1
    return-void
.end method

.method public gU()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xs:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xr:Landroid/widget/ListAdapter;

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xs:Z

    .line 235
    :cond_1
    return-void
.end method

.method public gV()V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xp:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->J(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public final gW()V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->finish()V

    .line 350
    return-void
.end method

.method public gX()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/ac;

    invoke-interface {v0}, Lcom/android/settings_ext/ac;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/ac;

    invoke-interface {v0}, Lcom/android/settings_ext/ac;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gT()V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xq:Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->ao()I

    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xo:Ljava/lang/String;

    .line 109
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->f(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xo:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    const/16 v0, 0x65

    const v1, 0x7f090934

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xo:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/settings_ext/cF;->a(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 340
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 408
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/provider/b;->bm(Landroid/content/Context;)V

    .line 416
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onDestroy()V

    .line 417
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 440
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onDetach()V

    .line 441
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    if-eqz p2, :cond_0

    .line 157
    const v0, 0x7f10012a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xt:Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings_ext/eK;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 161
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 425
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->finish()V

    .line 426
    const/4 v0, 0x1

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/settings_ext/cz;->x(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 388
    invoke-static {v0, v0, v1}, Lcom/android/settings_ext/provider/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xp:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gV()V

    .line 197
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 132
    const-string v0, "theme_res_id"

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->xq:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onStart()V

    .line 398
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->Y()V

    .line 399
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onStop()V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gU()V

    .line 214
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gU()V

    .line 207
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->gY()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 464
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 465
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->a(Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 487
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    new-instance v0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ext/bP;I)V

    iput-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 450
    iget-object v0, p0, Lcom/android/settings_ext/SettingsPreferenceFragment;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 451
    return-void
.end method
