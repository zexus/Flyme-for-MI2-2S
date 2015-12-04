.class public Lcom/miui/fmradio/FmStationListFragment;
.super Landroid/app/ListFragment;
.source "FmStationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmStationListFragment$ScanDialog;,
        Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;,
        Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;,
        Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;,
        Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;,
        Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;,
        Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final FRAG_TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/miui/fmradio/StationListAdapter;

.field private mFmLocalServiceCallback:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

.field private mIsScanRequest:Z

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;

.field private mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

.field private mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

.field private mService:Lcom/miui/fmradio/IFmLocalService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 295
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmStationListFragment$2;-><init>(Lcom/miui/fmradio/FmStationListFragment;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 337
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;-><init>(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/FmStationListFragment$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;

    .line 356
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/FmStationListFragment$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mFmLocalServiceCallback:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    .line 715
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmStationListFragment$3;-><init>(Lcom/miui/fmradio/FmStationListFragment;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p1, "x1"    # Lcom/miui/fmradio/IFmLocalService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mFmLocalServiceCallback:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FmStationListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmStationListFragment;->deleteStation(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FmStationListFragment;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fmradio/FmStationListFragment;->addOrEditStation(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->initScan()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FmStationListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->startScan()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/StationListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->unbindService()V

    return-void
.end method

.method private addOrEditStation(ILjava/lang/String;I)V
    .locals 1
    .param p1, "newFreq"    # I
    .param p2, "newLabel"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V

    .line 149
    return-void
.end method

.method private bindService()V
    .locals 5

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/fmradio/FmLocalService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const-string v2, "Fm:FmStationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    return-void
.end method

.method private deleteStation(I)V
    .locals 1
    .param p1, "freq"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/fmradio/StationItemHelper;->deleteSingleStation(Landroid/content/Context;I)V

    .line 139
    return-void
.end method

.method private initScan()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 196
    iput-boolean v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z

    .line 197
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->startScan()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V

    .line 203
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmServiceReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "invoking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->initFmService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 130
    new-instance v0, Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/fmradio/StationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    .line 131
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mListView:Landroid/widget/ListView;

    .line 132
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 135
    return-void
.end method

.method private showDeleteConfirmDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;-><init>()V

    .line 143
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;
    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->setFrequency(I)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private showScanConfirmDialog()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;-><init>()V

    .line 192
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private showScanDialog(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;

    .line 165
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;

    .end local v0    # "d":Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
    invoke-direct {v0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;-><init>()V

    .line 170
    .restart local v0    # "d":Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
    :cond_0
    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    const v2, 0x7f0a0037

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmStationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 175
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/miui/fmradio/Utils;->getMinFrequency()I

    move-result v2

    invoke-static {v2}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->setMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmStationListFragment"

    const-string v3, "invoking failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->dismissAllowingStateLoss()V

    goto :goto_1
.end method

.method private showStationAddDialog()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;-><init>()V

    .line 159
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->setEditParams(ZZLcom/miui/fmradio/StationItem;)V

    .line 160
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private showStationEditDialog(Lcom/miui/fmradio/StationItem;)V
    .locals 4
    .param p1, "stationItem"    # Lcom/miui/fmradio/StationItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;-><init>()V

    .line 153
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;
    iget v3, p1, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->setEditParams(ZZLcom/miui/fmradio/StationItem;)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    return-void

    :cond_0
    move v1, v2

    .line 153
    goto :goto_0
.end method

.method private startScan()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z

    .line 217
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$1;-><init>(Lcom/miui/fmradio/FmStationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method private unbindService()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mFmLocalServiceCallback:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 254
    :cond_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abortScan()V
    .locals 3

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "Stations scanning, aborted!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->abortScanStations()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "onDestory failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addStationOption()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->showStationAddDialog()V

    .line 262
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0}, Lcom/miui/fmradio/StationListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 99
    .local v0, "index":I
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/fmradio/StationListAdapter;->getItem(I)Lcom/miui/fmradio/StationItem;

    move-result-object v1

    .line 100
    .local v1, "si":Lcom/miui/fmradio/StationItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 119
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 102
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FmStationListFragment;->showStationEditDialog(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget v2, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FmStationListFragment;->showDeleteConfirmDialog(I)V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    iget-object v7, v1, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v2, v4, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v7, v2}, Lcom/miui/fmradio/StationItemHelper;->addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    if-nez v2, :cond_1

    const v2, 0x7f0a002e

    :goto_2
    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    move v2, v4

    .line 109
    goto :goto_1

    .line 112
    :cond_1
    const v2, 0x7f0a002c

    goto :goto_2

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0021
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->bindService()V

    .line 48
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    invoke-static {v0}, Lcom/miui/fmradio/StationItemHelper;->registerStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V

    .line 49
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v8, 0x7f0d0024

    const v7, 0x7f0d0023

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 79
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 80
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 81
    .local v0, "index":I
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/fmradio/StationListAdapter;->getItem(I)Lcom/miui/fmradio/StationItem;

    move-result-object v1

    .line 82
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    instance-of v2, v1, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-nez v2, :cond_0

    .line 83
    const v2, 0x7f0a0026

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-static {v4}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/miui/fmradio/FmStationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 85
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v2, v5, :cond_1

    .line 87
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 125
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->unbindService()V

    .line 126
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    invoke-static {v0}, Lcom/miui/fmradio/StationItemHelper;->unregisterStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 65
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "RemoteException in onResume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmStationListFragment;->initUI(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public refreshList()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0}, Lcom/miui/fmradio/StationListAdapter;->notifyDataSetChanged()V

    .line 282
    :cond_0
    return-void
.end method

.method public scanOption()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0}, Lcom/miui/fmradio/StationListAdapter;->getNormalStationCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->showScanConfirmDialog()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListFragment;->initScan()V

    goto :goto_0
.end method

.method public setOnStationItemClickListener(Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    .line 258
    return-void
.end method
