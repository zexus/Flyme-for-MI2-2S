.class public Lcom/android/settings_ext/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings_ext/applications/AppClickListener;


# instance fields
.field private CJ:Ljava/lang/String;

.field private DE:I

.field private DF:Z

.field private final DG:Ljava/util/ArrayList;

.field private DJ:Landroid/view/Menu;

.field DK:Landroid/app/AlertDialog;

.field private DL:I

.field private DP:Lcom/android/settings_ext/applications/ApplicationsState;

.field private Dr:Landroid/view/ViewGroup;

.field private Ds:Landroid/support/v4/view/ViewPager;

.field Ej:Ljava/lang/CharSequence;

.field private Ek:Ljava/lang/CharSequence;

.field private He:I

.field Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

.field private Hg:Z

.field private Hh:Lcom/android/settings_ext/hj;

.field private volatile Hi:Lcom/android/internal/app/IMediaContainerService;

.field private final Hj:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hg:Z

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DL:I

    .line 1326
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/ManageApplications$2;-><init>(Lcom/android/settings_ext/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hj:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hi:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/ManageApplications;)Lcom/android/settings_ext/hj;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hh:Lcom/android/settings_ext/hj;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/ManageApplications;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->He:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Dr:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/applications/ManageApplications;)Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DF:Z

    return v0
.end method

.method static synthetic i(Lcom/android/settings_ext/applications/ManageApplications;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    return v0
.end method

.method private iz()V
    .locals 7

    .prologue
    .line 1090
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1093
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->CJ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gh;

    .line 1098
    const-class v1, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090517

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1100
    return-void
.end method

.method static synthetic j(Lcom/android/settings_ext/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hi:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method private jo()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState;->iT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1069
    :goto_0
    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->He:I

    if-eq v0, v1, :cond_0

    .line 1070
    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->He:I

    .line 1071
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1075
    :cond_0
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p1, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    if-le v0, p4, :cond_0

    .line 1292
    iget-object v0, p1, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p4}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1293
    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->CJ:Ljava/lang/String;

    .line 1294
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iz()V

    .line 1296
    :cond_0
    return-void
.end method

.method aD(I)Lcom/android/settings_ext/applications/ManageApplications$TabInfo;
    .locals 3

    .prologue
    .line 1078
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 1080
    iget v2, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eg:I

    if-ne v2, p1, :cond_0

    .line 1084
    :goto_1
    return-object v0

    .line 1078
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1084
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public aE(I)V
    .locals 4

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 1300
    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 1303
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DF:Z

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Dr:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1305
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1309
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 1311
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    if-eq v0, v2, :cond_0

    .line 1312
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->pause()V

    .line 1309
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jp()V

    .line 1317
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iI()V

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1319
    if-eqz v0, :cond_3

    .line 1320
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1322
    :cond_3
    return-void
.end method

.method iI()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1143
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eg:I

    if-ne v0, v2, :cond_3

    .line 1152
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/applications/ManageApplications;->aD(I)Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->jI()Z

    move-result v0

    .line 1155
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1156
    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1157
    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1158
    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1159
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1160
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hg:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1153
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1158
    goto :goto_2

    .line 1162
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    if-eq v0, v4, :cond_4

    move v0, v2

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1163
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    if-eq v0, v5, :cond_5

    move v0, v2

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1164
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1165
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1166
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1162
    goto :goto_3

    :cond_5
    move v0, v1

    .line 1163
    goto :goto_4
.end method

.method iK()V
    .locals 3

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1173
    const v1, 0x7f09053b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1174
    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1175
    const v1, 0x7f09053d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1176
    const v1, 0x7f090169

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    .line 1178
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1180
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1044
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->CJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsState;->ae(Ljava/lang/String;)V

    .line 1047
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1194
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1196
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1201
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1202
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/applications/ManageApplications$1;-><init>(Lcom/android/settings_ext/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1259
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 854
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 856
    invoke-virtual {p0, v7}, Lcom/android/settings_ext/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 858
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 859
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings_ext/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 860
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    :goto_0
    if-nez v0, :cond_0

    .line 868
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 870
    :cond_0
    const-class v1, Lcom/android/settings_ext/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v7

    .line 883
    :goto_1
    if-eqz p1, :cond_8

    .line 884
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    .line 885
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 886
    if-eq v0, v5, :cond_7

    .line 887
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hg:Z

    .line 890
    :goto_3
    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DL:I

    .line 892
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 894
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hj:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v7}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 896
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090560

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ej:Ljava/lang/CharSequence;

    .line 897
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09055f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ek:Ljava/lang/CharSequence;

    .line 899
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090541

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 903
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090543

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 909
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 912
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090545

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 915
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_2
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090544

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 921
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090542

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 931
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->He:I

    .line 935
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 936
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings_ext/hl;->a(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ext/hj;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hh:Lcom/android/settings_ext/hj;

    .line 937
    return-void

    .line 865
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 873
    :cond_4
    const-class v1, Lcom/android/settings_ext/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 876
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    move v1, v4

    .line 877
    goto/16 :goto_1

    .line 878
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v4

    .line 880
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    .prologue
    const v7, 0x7f02001b

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1104
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    .line 1107
    const v0, 0x7f090536

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1110
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f090537

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1113
    const/4 v0, 0x6

    const v1, 0x7f090538

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1117
    const/4 v0, 0x7

    const v1, 0x7f090539

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1121
    const/16 v0, 0x8

    const v1, 0x7f09053a

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iI()V

    .line 1124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 943
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 945
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040079

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 947
    iput-object p2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Dr:Landroid/view/ViewGroup;

    .line 948
    iput-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 950
    const v0, 0x7f10001f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    .line 951
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings_ext/applications/ManageApplications;)V

    .line 952
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 953
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 954
    const v0, 0x7f100020

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 955
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 959
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 963
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "resetDialog"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iK()V

    .line 967
    :cond_1
    if-nez p3, :cond_2

    .line 969
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentListType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 971
    if-eq v0, v4, :cond_3

    move v1, v0

    .line 973
    :goto_0
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->He:I

    if-ge v2, v0, :cond_2

    .line 974
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 975
    iget v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eg:I

    if-ne v0, v1, :cond_4

    .line 976
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 982
    :cond_2
    return-object v3

    .line 971
    :cond_3
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DL:I

    move v1, v0

    goto :goto_0

    .line 973
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hj:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1139
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1140
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DJ:Landroid/view/Menu;

    .line 1134
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1032
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1036
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->iO()V

    .line 1038
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->release()V

    .line 1036
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1040
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    .line 1187
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hh:Lcom/android/settings_ext/hj;

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/hj;->ag(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1052
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1053
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    const v0, 0x8000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1056
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1057
    const-string v3, "currentListType"

    iget-object v4, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eg:I

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1065
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1264
    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1265
    :cond_0
    iput v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    .line 1266
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->ay(I)V

    .line 1285
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iI()V

    move v0, v1

    .line 1286
    :cond_2
    return v0

    .line 1269
    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1270
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hg:Z

    .line 1271
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v2}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1272
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v2}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->ai(Z)V

    goto :goto_0

    .line 1274
    :cond_4
    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 1275
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hg:Z

    .line 1276
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->ai(Z)V

    goto :goto_0

    .line 1279
    :cond_5
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iK()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1015
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DF:Z

    move v1, v0

    .line 1016
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->pause()V

    .line 1016
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1019
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iI()V

    .line 1129
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 992
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DF:Z

    .line 994
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->Ds:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ManageApplications;->aE(I)V

    .line 995
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ManageApplications;->jo()V

    .line 996
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications;->iI()V

    .line 997
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1001
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1002
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1004
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->DL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1006
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings_ext/applications/ManageApplications;->Hg:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1007
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1008
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1010
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 987
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 988
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1023
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1024
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications;->DK:Landroid/app/AlertDialog;

    .line 1028
    :cond_0
    return-void
.end method
